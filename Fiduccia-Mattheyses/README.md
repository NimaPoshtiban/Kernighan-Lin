# FiducciaMattheyses VLSI
Fiduccia-Mattheyses implementation in python

## How to use
It accepts ```.hgr``` file format 

Accepted format:
-  ``` 
    <num_vertices> <num_hyperedges> [vertex_weights] [balance_ratio]
    <hyperedge 1 vertices...>
    ...
    ...
    <hyperedge m vertices...>
     ```


An Example is provided in <a href="example.hgr">example.hgr</a>
### Running the algorithm
Run: 
- ```python fm.py <input file>``` 
 
#### Note!
This code is not optimized and useful for real-world application. <br>
I have no intention to modify or rewrite it as I have no interest in CS.<br>
I used python as the last resort (Forgive me!)