import random
import math
"""
This code is not optimized at all, it's just a fast prototype implementation
"""
# ------------------------------------------------------------
# Load HGR hypergraph
# ------------------------------------------------------------
"""
<num_vertices> <num_hyperedges> [fmt] [nconst]
<hyperedge 1 vertices...>
...
<hyperedge m vertices...>

Optional: hyperedge weights as first number of each row.
"""
def load_hgr(path):
    with open(path) as f:
        line = f.readline().strip().split()
        nv = int(line[0])
        ne = int(line[1])
        
        nets = []
        net_weights = []
        
        for _ in range(ne):
            parts = f.readline().strip().split()
            row = list(map(int, parts))
            
            if len(row) >= 2 and row[0] <= 0:
                raise ValueError("Weights must be positive")
            if row[0] > nv:
                w = row[0]
                vlist = row[1:]
            else:
                w = 1
                vlist = row
            nets.append([v-1 for v in vlist])  
            net_weights.append(w)
    
    # build G(V,E) maps
    v2nets = [[] for _ in range(nv)]
    for e, vs in enumerate(nets):
        for v in vs:
            v2nets[v].append(e)
    
    return nv, ne, nets, net_weights, v2nets

# ------------------------------------------------------------
# FM Bipartition (the defautl assumption)
# ------------------------------------------------------------

def fm_partition(nv, ne, nets, net_weights, v2nets,
                 vertex_weights=None,
                 balance_ratio=0.5):
    """
    nv: number of vertices
    nets: list of hyperedges (list of vertices)
    net_weights: list of weights
    vertex_weights: optional list of weights
    balance_ratio: desired ratio of partition A
    """
    if vertex_weights is None:
        vertex_weights = [1]*nv
    
    total_weight = sum(vertex_weights)
    target = total_weight * balance_ratio
    max_tolerance = total_weight * 0.05  # allow 5% (default); feel free th chage it
    
    # make random partition
    part = [0]*nv
    wA = 0
    for v in range(nv):
        if random.random() < balance_ratio:
            part[v] = 1
            wA += vertex_weights[v]
    
    
    gain = [0]*nv
    locked = [False]*nv
    
    # compute initial gains
    net_cnt = [(0,0)]*ne  
    net_cnt = [ [0,0] for _ in range(ne) ]
    
    for e, vs in enumerate(nets):
        c0 = 0
        c1 = 0
        for v in vs:
            if part[v] == 0: c0 += 1
            else: c1 += 1
        net_cnt[e][0] = c0
        net_cnt[e][1] = c1
    
    
    for v in range(nv):
        curp = part[v]
        fromp = curp
        top = 1-curp
        g = 0
        for e in v2nets[v]:
            w = net_weights[e]
            c0, c1 = net_cnt[e]
            c_from = (c0 if fromp==0 else c1)
            c_to   = (c1 if fromp==0 else c0)
            if c_from == 1:
                g += w
            if c_to == 0:
                g -= w
        gain[v] = g
    
    buckets = {}
    def bucket_put(v):
        g = gain[v]
        if g not in buckets:
            buckets[g] = []
        buckets[g].append(v)
    
    for v in range(nv):
        bucket_put(v)
    
    def pop_best():
        if not buckets:
            return None
        gmax = max(buckets.keys())
        arr = buckets[gmax]
        v = arr.pop()
        if not arr:
            del buckets[gmax]
        return v, gmax
    
    def update(v):
        oldp = part[v]
        newp = 1-oldp
        part[v] = newp
        locked[v] = True
        
        nonlocal wA
        if newp == 1:
            wA += vertex_weights[v]
        else:
            wA -= vertex_weights[v]
        
        for e in v2nets[v]:
            w = net_weights[e]
            c0, c1 = net_cnt[e]
            # before
            # update counts
            if oldp == 0:
                c0 -= 1; c1 += 1
            else:
                c1 -= 1; c0 += 1
            net_cnt[e][0], net_cnt[e][1] = c0, c1
    
    def update_gain(v):
        for e in v2nets[v]:
            c0, c1 = net_cnt[e]
            w = net_weights[e]
            for u in nets[e]:
                if locked[u]: 
                    continue
                oldg = gain[u]
                fromp = part[u]
                c_from = (c0 if fromp==0 else c1)
                c_to   = (c1 if fromp==0 else c0)
                
                # new gain
                g = 0
                if c_from == 1:
                    g += w
                if c_to == 0:
                    g -= w
                
                gain[u] = g
                
                # reinsert in bucket
                bucket_put(u)
    
    # main loop
    best_cut = compute_cut(nets, net_weights, part)
    improved = True
    
    while improved:
        moved = []
        gains = []
        locked = [False]*nv
        # refill buckets
        buckets = {}
        for v in range(nv):
            if not locked[v]:
                bucket_put(v)
        
        MAX_MOVES = nv
        for _ in range(MAX_MOVES):
            pick = pop_best()
            if pick is None:
                break
            v, g = pick
            
            # enforce balance constraint
            newp = 1-part[v]
            wnew = wA + (vertex_weights[v] if newp==1 else -vertex_weights[v])
            if abs(wnew - target) > max_tolerance:
                # skip
                continue
            
            moved.append(v)
            gains.append(g)
            
            old_cut = best_cut
            update(v)
            update_gain(v)
            new_cut = compute_cut(nets, net_weights, part)
            if new_cut < best_cut:
                best_cut = new_cut
        
        if not moved: 
            break
        # best prefix
        cur = compute_cut(nets, net_weights, part)
        if cur >= best_cut:
            improved = False
    
    return part, best_cut

# ------------------------------------------------------------# 
def compute_cut(nets, weights, part):
    cut = 0
    for e, vs in enumerate(nets):
        found = None
        binary = False
        for v in vs:
            if found is None:
                found = part[v]
            else:
                if found != part[v]:
                    binary = True
                    break
        if binary:
            cut += weights[e]
    return cut



if __name__ == "__main__":
    import sys
    path = sys.argv[1]
    nv, ne, nets, netw, v2nets = load_hgr(path)
    part, cut = fm_partition(nv, ne, nets, netw, v2nets)
    print("Final cut:", cut)
