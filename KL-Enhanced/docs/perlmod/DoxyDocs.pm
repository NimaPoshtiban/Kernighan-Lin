$doxydocs=
{
  classes => [
  ],
  concepts => [
  ],
  modules => [
  ],
  namespaces => [
  ],
  files => [
    {
      name => 'CMakeCXXCompilerId.cpp',
      includes => [
      ],
      included_by => [
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => '__has_include',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'x'
              }
            ],
            initializer => '0'
          },
          {
            kind => 'define',
            name => 'ARCHITECTURE_ID',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => 'COMPILER_ID',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '""'
          },
          {
            kind => 'define',
            name => 'CXX_STD',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__cplusplus'
          },
          {
            kind => 'define',
            name => 'CXX_STD_11',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201103L'
          },
          {
            kind => 'define',
            name => 'CXX_STD_14',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201402L'
          },
          {
            kind => 'define',
            name => 'CXX_STD_17',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201703L'
          },
          {
            kind => 'define',
            name => 'CXX_STD_20',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '202002L'
          },
          {
            kind => 'define',
            name => 'CXX_STD_23',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '202302L'
          },
          {
            kind => 'define',
            name => 'CXX_STD_98',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '199711L'
          },
          {
            kind => 'define',
            name => 'DEC',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'n'
              }
            ],
            initializer => '  (\'0\' + (((n) / 10000000)%10)), \\
  (\'0\' + (((n) / 1000000)%10)),  \\
  (\'0\' + (((n) / 100000)%10)),   \\
  (\'0\' + (((n) / 10000)%10)),    \\
  (\'0\' + (((n) / 1000)%10)),     \\
  (\'0\' + (((n) / 100)%10)),      \\
  (\'0\' + (((n) / 10)%10)),       \\
  (\'0\' +  ((n) % 10))'
          },
          {
            kind => 'define',
            name => 'HEX',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'n'
              }
            ],
            initializer => '  (\'0\' + ((n)>>28 & 0xF)), \\
  (\'0\' + ((n)>>24 & 0xF)), \\
  (\'0\' + ((n)>>20 & 0xF)), \\
  (\'0\' + ((n)>>16 & 0xF)), \\
  (\'0\' + ((n)>>12 & 0xF)), \\
  (\'0\' + ((n)>>8  & 0xF)), \\
  (\'0\' + ((n)>>4  & 0xF)), \\
  (\'0\' + ((n)     & 0xF))'
          },
          {
            kind => 'define',
            name => 'PLATFORM_ID',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => 'STRINGIFY',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'X'
              }
            ],
            initializer => 'STRINGIFY_HELPER(X)'
          },
          {
            kind => 'define',
            name => 'STRINGIFY_HELPER',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'X'
              }
            ],
            initializer => '#X'
          }
        ]
      },
      functions => {
        members => [
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'argc',
                type => 'int'
              },
              {
                declaration_name => 'argv',
                type => 'char *',
                array => '[]'
              }
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'info_arch',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char const  *',
            initializer => '= "INFO" ":" "arch[" ARCHITECTURE_ID "]"'
          },
          {
            kind => 'variable',
            name => 'info_compiler',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char const  *',
            initializer => '= "INFO" ":" "compiler[" COMPILER_ID "]"'
          },
          {
            kind => 'variable',
            name => 'info_language_extensions_default',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const char *',
            initializer => '= "INFO" ":" "extensions_default["





  "OFF"

"]"'
          },
          {
            kind => 'variable',
            name => 'info_language_standard_default',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'const char *',
            initializer => '= "INFO" ":" "standard_default["













  "98"

"]"'
          },
          {
            kind => 'variable',
            name => 'info_platform',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'char const  *',
            initializer => '= "INFO" ":" "platform[" PLATFORM_ID "]"'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'moc_predefs.h',
      includes => [
      ],
      included_by => [
      ],
      defines => {
        members => [
          {
            kind => 'define',
            name => '__amd64',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__amd64__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__ATOMIC_ACQ_REL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__ATOMIC_ACQUIRE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__ATOMIC_CONSUME',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__ATOMIC_RELAXED',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0'
          },
          {
            kind => 'define',
            name => '__ATOMIC_RELEASE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3'
          },
          {
            kind => 'define',
            name => '__ATOMIC_SEQ_CST',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '5'
          },
          {
            kind => 'define',
            name => '__BIGGEST_ALIGNMENT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__BITINT_MAXWIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8388608'
          },
          {
            kind => 'define',
            name => '__BOOL_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__BYTE_ORDER__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__ORDER_LITTLE_ENDIAN__'
          },
          {
            kind => 'define',
            name => '__cdecl',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__cdecl__))'
          },
          {
            kind => 'define',
            name => '__CHAR16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__CHAR32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned int'
          },
          {
            kind => 'define',
            name => '__CHAR_BIT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__clang__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_BOOL_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_CHAR16_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_CHAR32_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_CHAR_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_INT_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_LLONG_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_LONG_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_POINTER_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_SHORT_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__CLANG_ATOMIC_WCHAR_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__clang_literal_encoding__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"UTF-8"'
          },
          {
            kind => 'define',
            name => '__clang_major__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '17'
          },
          {
            kind => 'define',
            name => '__clang_minor__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0'
          },
          {
            kind => 'define',
            name => '__clang_patchlevel__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '6'
          },
          {
            kind => 'define',
            name => '__clang_version__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"'
          },
          {
            kind => 'define',
            name => '__clang_wide_literal_encoding__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"UTF-16"'
          },
          {
            kind => 'define',
            name => '__code_model_small__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__CONSTANT_CFSTRINGS__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__cplusplus',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201703L'
          },
          {
            kind => 'define',
            name => '__cpp_aggregate_bases',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_aggregate_nsdmi',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_alias_templates',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200704L'
          },
          {
            kind => 'define',
            name => '__cpp_aligned_new',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_attributes',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200809L'
          },
          {
            kind => 'define',
            name => '__cpp_binary_literals',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_capture_star_this',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_constexpr',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_constexpr_in_decltype',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201711L'
          },
          {
            kind => 'define',
            name => '__cpp_decltype',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200707L'
          },
          {
            kind => 'define',
            name => '__cpp_decltype_auto',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_deduction_guides',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201703L'
          },
          {
            kind => 'define',
            name => '__cpp_delegating_constructors',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200604L'
          },
          {
            kind => 'define',
            name => '__cpp_digit_separators',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201309L'
          },
          {
            kind => 'define',
            name => '__cpp_enumerator_attributes',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201411L'
          },
          {
            kind => 'define',
            name => '__cpp_exceptions',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '199711L'
          },
          {
            kind => 'define',
            name => '__cpp_fold_expressions',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_generic_lambdas',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_guaranteed_copy_elision',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_hex_float',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_if_constexpr',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_impl_destroying_delete',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201806L'
          },
          {
            kind => 'define',
            name => '__cpp_inheriting_constructors',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201511L'
          },
          {
            kind => 'define',
            name => '__cpp_init_captures',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_initializer_lists',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200806L'
          },
          {
            kind => 'define',
            name => '__cpp_inline_variables',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_lambdas',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200907L'
          },
          {
            kind => 'define',
            name => '__cpp_named_character_escapes',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '202207L'
          },
          {
            kind => 'define',
            name => '__cpp_namespace_attributes',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201411L'
          },
          {
            kind => 'define',
            name => '__cpp_nested_namespace_definitions',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201411L'
          },
          {
            kind => 'define',
            name => '__cpp_noexcept_function_type',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201510L'
          },
          {
            kind => 'define',
            name => '__cpp_nontype_template_args',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201411L'
          },
          {
            kind => 'define',
            name => '__cpp_nontype_template_parameter_auto',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_nsdmi',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200809L'
          },
          {
            kind => 'define',
            name => '__cpp_range_based_for',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201603L'
          },
          {
            kind => 'define',
            name => '__cpp_raw_strings',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200710L'
          },
          {
            kind => 'define',
            name => '__cpp_ref_qualifiers',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200710L'
          },
          {
            kind => 'define',
            name => '__cpp_return_type_deduction',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_rtti',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '199711L'
          },
          {
            kind => 'define',
            name => '__cpp_rvalue_references',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200610L'
          },
          {
            kind => 'define',
            name => '__cpp_static_assert',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201411L'
          },
          {
            kind => 'define',
            name => '__cpp_static_call_operator',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '202207L'
          },
          {
            kind => 'define',
            name => '__cpp_structured_bindings',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_template_auto',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201606L'
          },
          {
            kind => 'define',
            name => '__cpp_threadsafe_static_init',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200806L'
          },
          {
            kind => 'define',
            name => '__cpp_unicode_characters',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200704L'
          },
          {
            kind => 'define',
            name => '__cpp_unicode_literals',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200710L'
          },
          {
            kind => 'define',
            name => '__cpp_user_defined_literals',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200809L'
          },
          {
            kind => 'define',
            name => '__cpp_variable_templates',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201304L'
          },
          {
            kind => 'define',
            name => '__cpp_variadic_templates',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '200704L'
          },
          {
            kind => 'define',
            name => '__cpp_variadic_using',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '201611L'
          },
          {
            kind => 'define',
            name => '__DBL_DECIMAL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '17'
          },
          {
            kind => 'define',
            name => '__DBL_DENORM_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4.9406564584124654e-324'
          },
          {
            kind => 'define',
            name => '__DBL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '15'
          },
          {
            kind => 'define',
            name => '__DBL_EPSILON__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2.2204460492503131e-16'
          },
          {
            kind => 'define',
            name => '__DBL_HAS_DENORM__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__DBL_HAS_INFINITY__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__DBL_HAS_QUIET_NAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__DBL_MANT_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '53'
          },
          {
            kind => 'define',
            name => '__DBL_MAX_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '308'
          },
          {
            kind => 'define',
            name => '__DBL_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.7976931348623157e+308'
          },
          {
            kind => 'define',
            name => '__DBL_MAX_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1024'
          },
          {
            kind => 'define',
            name => '__DBL_MIN_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-307)'
          },
          {
            kind => 'define',
            name => '__DBL_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2.2250738585072014e-308'
          },
          {
            kind => 'define',
            name => '__DBL_MIN_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-1021)'
          },
          {
            kind => 'define',
            name => '__DECIMAL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__LDBL_DECIMAL_DIG__'
          },
          {
            kind => 'define',
            name => '__declspec',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            parameters => [
              {
                name => 'a'
              }
            ],
            initializer => '__attribute__((a))'
          },
          {
            kind => 'define',
            name => '__DEPRECATED',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__EXCEPTIONS',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__fastcall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__fastcall__))'
          },
          {
            kind => 'define',
            name => '__FINITE_MATH_ONLY__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0'
          },
          {
            kind => 'define',
            name => '__FLT16_DECIMAL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '5'
          },
          {
            kind => 'define',
            name => '__FLT16_DENORM_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '5.9604644775390625e-8F16'
          },
          {
            kind => 'define',
            name => '__FLT16_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3'
          },
          {
            kind => 'define',
            name => '__FLT16_EPSILON__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9.765625e-4F16'
          },
          {
            kind => 'define',
            name => '__FLT16_HAS_DENORM__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT16_HAS_INFINITY__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT16_HAS_QUIET_NAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT16_MANT_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '11'
          },
          {
            kind => 'define',
            name => '__FLT16_MAX_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__FLT16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '6.5504e+4F16'
          },
          {
            kind => 'define',
            name => '__FLT16_MAX_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__FLT16_MIN_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-4)'
          },
          {
            kind => 'define',
            name => '__FLT16_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '6.103515625e-5F16'
          },
          {
            kind => 'define',
            name => '__FLT16_MIN_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-13)'
          },
          {
            kind => 'define',
            name => '__FLT_DECIMAL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9'
          },
          {
            kind => 'define',
            name => '__FLT_DENORM_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.40129846e-45F'
          },
          {
            kind => 'define',
            name => '__FLT_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '6'
          },
          {
            kind => 'define',
            name => '__FLT_EPSILON__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.19209290e-7F'
          },
          {
            kind => 'define',
            name => '__FLT_HAS_DENORM__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT_HAS_INFINITY__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT_HAS_QUIET_NAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__FLT_MANT_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '24'
          },
          {
            kind => 'define',
            name => '__FLT_MAX_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '38'
          },
          {
            kind => 'define',
            name => '__FLT_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3.40282347e+38F'
          },
          {
            kind => 'define',
            name => '__FLT_MAX_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '128'
          },
          {
            kind => 'define',
            name => '__FLT_MIN_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-37)'
          },
          {
            kind => 'define',
            name => '__FLT_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.17549435e-38F'
          },
          {
            kind => 'define',
            name => '__FLT_MIN_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-125)'
          },
          {
            kind => 'define',
            name => '__FLT_RADIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__FPCLASS_NEGINF',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0004'
          },
          {
            kind => 'define',
            name => '__FPCLASS_NEGNORMAL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0008'
          },
          {
            kind => 'define',
            name => '__FPCLASS_NEGSUBNORMAL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0010'
          },
          {
            kind => 'define',
            name => '__FPCLASS_NEGZERO',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0020'
          },
          {
            kind => 'define',
            name => '__FPCLASS_POSINF',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0200'
          },
          {
            kind => 'define',
            name => '__FPCLASS_POSNORMAL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0100'
          },
          {
            kind => 'define',
            name => '__FPCLASS_POSSUBNORMAL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0080'
          },
          {
            kind => 'define',
            name => '__FPCLASS_POSZERO',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0040'
          },
          {
            kind => 'define',
            name => '__FPCLASS_QNAN',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0002'
          },
          {
            kind => 'define',
            name => '__FPCLASS_SNAN',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0001'
          },
          {
            kind => 'define',
            name => '__FXSR__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_ASM_FLAG_OUTPUTS__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_BOOL_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_CHAR16_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_CHAR32_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_CHAR_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_INT_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_LLONG_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_LONG_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_POINTER_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_SHORT_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_TEST_AND_SET_TRUEVAL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_ATOMIC_WCHAR_T_LOCK_FREE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GLIBCXX_BITSIZE_INT_N_0',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '128'
          },
          {
            kind => 'define',
            name => '__GLIBCXX_TYPE_INT_N_0',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__int128'
          },
          {
            kind => 'define',
            name => '__GNUC__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__GNUC_GNU_INLINE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GNUC_MINOR__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__GNUC_PATCHLEVEL__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GNUG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__GXX_ABI_VERSION',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1002'
          },
          {
            kind => 'define',
            name => '__GXX_EXPERIMENTAL_CXX0X__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GXX_RTTI',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__GXX_WEAK__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__INT16_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__INT16_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hd"'
          },
          {
            kind => 'define',
            name => '__INT16_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hi"'
          },
          {
            kind => 'define',
            name => '__INT16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32767'
          },
          {
            kind => 'define',
            name => '__INT16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'short'
          },
          {
            kind => 'define',
            name => '__INT32_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__INT32_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"d"'
          },
          {
            kind => 'define',
            name => '__INT32_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"i"'
          },
          {
            kind => 'define',
            name => '__INT32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647'
          },
          {
            kind => 'define',
            name => '__INT32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'int'
          },
          {
            kind => 'define',
            name => '__INT64_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'LL'
          },
          {
            kind => 'define',
            name => '__INT64_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__INT64_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__INT64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__INT64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__INT8_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__INT8_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhd"'
          },
          {
            kind => 'define',
            name => '__INT8_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhi"'
          },
          {
            kind => 'define',
            name => '__INT8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '127'
          },
          {
            kind => 'define',
            name => '__INT8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'signed char'
          },
          {
            kind => 'define',
            name => '__INT_FAST16_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hd"'
          },
          {
            kind => 'define',
            name => '__INT_FAST16_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hi"'
          },
          {
            kind => 'define',
            name => '__INT_FAST16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32767'
          },
          {
            kind => 'define',
            name => '__INT_FAST16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'short'
          },
          {
            kind => 'define',
            name => '__INT_FAST16_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__INT_FAST32_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"d"'
          },
          {
            kind => 'define',
            name => '__INT_FAST32_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"i"'
          },
          {
            kind => 'define',
            name => '__INT_FAST32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647'
          },
          {
            kind => 'define',
            name => '__INT_FAST32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'int'
          },
          {
            kind => 'define',
            name => '__INT_FAST32_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32'
          },
          {
            kind => 'define',
            name => '__INT_FAST64_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__INT_FAST64_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__INT_FAST64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__INT_FAST64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__INT_FAST64_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__INT_FAST8_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhd"'
          },
          {
            kind => 'define',
            name => '__INT_FAST8_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhi"'
          },
          {
            kind => 'define',
            name => '__INT_FAST8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '127'
          },
          {
            kind => 'define',
            name => '__INT_FAST8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'signed char'
          },
          {
            kind => 'define',
            name => '__INT_FAST8_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__INT_LEAST16_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hd"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST16_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hi"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32767'
          },
          {
            kind => 'define',
            name => '__INT_LEAST16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'short'
          },
          {
            kind => 'define',
            name => '__INT_LEAST16_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__INT_LEAST32_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"d"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST32_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"i"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647'
          },
          {
            kind => 'define',
            name => '__INT_LEAST32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'int'
          },
          {
            kind => 'define',
            name => '__INT_LEAST32_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32'
          },
          {
            kind => 'define',
            name => '__INT_LEAST64_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST64_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__INT_LEAST64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__INT_LEAST64_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__INT_LEAST8_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhd"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST8_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhi"'
          },
          {
            kind => 'define',
            name => '__INT_LEAST8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '127'
          },
          {
            kind => 'define',
            name => '__INT_LEAST8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'signed char'
          },
          {
            kind => 'define',
            name => '__INT_LEAST8_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__INT_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647'
          },
          {
            kind => 'define',
            name => '__INT_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32'
          },
          {
            kind => 'define',
            name => '__INTMAX_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'LL'
          },
          {
            kind => 'define',
            name => '__INTMAX_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__INTMAX_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__INTMAX_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__INTMAX_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__INTMAX_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__INTPTR_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__INTPTR_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__INTPTR_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__INTPTR_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__INTPTR_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__k8',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__k8__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LDBL_DECIMAL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '21'
          },
          {
            kind => 'define',
            name => '__LDBL_DENORM_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3.64519953188247460253e-4951L'
          },
          {
            kind => 'define',
            name => '__LDBL_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18'
          },
          {
            kind => 'define',
            name => '__LDBL_EPSILON__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.08420217248550443401e-19L'
          },
          {
            kind => 'define',
            name => '__LDBL_HAS_DENORM__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LDBL_HAS_INFINITY__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LDBL_HAS_QUIET_NAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LDBL_MANT_DIG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__LDBL_MAX_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4932'
          },
          {
            kind => 'define',
            name => '__LDBL_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1.18973149535723176502e+4932L'
          },
          {
            kind => 'define',
            name => '__LDBL_MAX_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16384'
          },
          {
            kind => 'define',
            name => '__LDBL_MIN_10_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-4931)'
          },
          {
            kind => 'define',
            name => '__LDBL_MIN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3.36210314311209350626e-4932L'
          },
          {
            kind => 'define',
            name => '__LDBL_MIN_EXP__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(-16381)'
          },
          {
            kind => 'define',
            name => '__LITTLE_ENDIAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LLONG_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__llvm__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__LONG_LONG_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__LONG_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647L'
          },
          {
            kind => 'define',
            name => '__LONG_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32'
          },
          {
            kind => 'define',
            name => '__MINGW32__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__MINGW64__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__MMX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__MSVCRT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__NO_INLINE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__NO_MATH_INLINES',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__OBJC_BOOL_IS_BOOL',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0'
          },
          {
            kind => 'define',
            name => '__OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3'
          },
          {
            kind => 'define',
            name => '__OPENCL_MEMORY_SCOPE_DEVICE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__OPENCL_MEMORY_SCOPE_SUB_GROUP',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__OPENCL_MEMORY_SCOPE_WORK_GROUP',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__OPENCL_MEMORY_SCOPE_WORK_ITEM',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0'
          },
          {
            kind => 'define',
            name => '__ORDER_BIG_ENDIAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4321'
          },
          {
            kind => 'define',
            name => '__ORDER_LITTLE_ENDIAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1234'
          },
          {
            kind => 'define',
            name => '__ORDER_PDP_ENDIAN__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '3412'
          },
          {
            kind => 'define',
            name => '__pascal',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__pascal__))'
          },
          {
            kind => 'define',
            name => '__PIC__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__pic__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__POINTER_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__PRAGMA_REDEFINE_EXTNAME',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__private_extern__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'extern'
          },
          {
            kind => 'define',
            name => '__PTRDIFF_FMTd__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lld"'
          },
          {
            kind => 'define',
            name => '__PTRDIFF_FMTi__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"lli"'
          },
          {
            kind => 'define',
            name => '__PTRDIFF_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '9223372036854775807LL'
          },
          {
            kind => 'define',
            name => '__PTRDIFF_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long int'
          },
          {
            kind => 'define',
            name => '__PTRDIFF_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__REGISTER_PREFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__SCHAR_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '127'
          },
          {
            kind => 'define',
            name => '__SEG_FS',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__seg_fs',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((address_space(257)))'
          },
          {
            kind => 'define',
            name => '__SEG_GS',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__seg_gs',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((address_space(256)))'
          },
          {
            kind => 'define',
            name => '__SEH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__SHRT_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32767'
          },
          {
            kind => 'define',
            name => '__SHRT_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__SIG_ATOMIC_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2147483647'
          },
          {
            kind => 'define',
            name => '__SIG_ATOMIC_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '32'
          },
          {
            kind => 'define',
            name => '__SIZE_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__SIZE_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__SIZE_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__SIZE_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__SIZE_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__SIZE_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__SIZE_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__SIZEOF_DOUBLE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__SIZEOF_FLOAT128__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__SIZEOF_FLOAT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__SIZEOF_INT128__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__SIZEOF_INT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__SIZEOF_LONG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4'
          },
          {
            kind => 'define',
            name => '__SIZEOF_LONG_DOUBLE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__SIZEOF_LONG_LONG__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__SIZEOF_POINTER__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__SIZEOF_PTRDIFF_T__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__SIZEOF_SHORT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__SIZEOF_SIZE_T__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '8'
          },
          {
            kind => 'define',
            name => '__SIZEOF_WCHAR_T__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__SIZEOF_WINT_T__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '2'
          },
          {
            kind => 'define',
            name => '__SSE2__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__SSE2_MATH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__SSE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__SSE_MATH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__STDC__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__STDC_HOSTED__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__STDC_UTF_16__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__STDC_UTF_32__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__stdcall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__stdcall__))'
          },
          {
            kind => 'define',
            name => '__STDCPP_DEFAULT_NEW_ALIGNMENT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16ULL'
          },
          {
            kind => 'define',
            name => '__STDCPP_THREADS__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__thiscall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__thiscall__))'
          },
          {
            kind => 'define',
            name => '__tune_k8__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__UINT16_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__UINT16_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"ho"'
          },
          {
            kind => 'define',
            name => '__UINT16_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hu"'
          },
          {
            kind => 'define',
            name => '__UINT16_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hX"'
          },
          {
            kind => 'define',
            name => '__UINT16_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hx"'
          },
          {
            kind => 'define',
            name => '__UINT16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '65535'
          },
          {
            kind => 'define',
            name => '__UINT16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__UINT32_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'U'
          },
          {
            kind => 'define',
            name => '__UINT32_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"o"'
          },
          {
            kind => 'define',
            name => '__UINT32_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"u"'
          },
          {
            kind => 'define',
            name => '__UINT32_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"X"'
          },
          {
            kind => 'define',
            name => '__UINT32_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"x"'
          },
          {
            kind => 'define',
            name => '__UINT32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4294967295U'
          },
          {
            kind => 'define',
            name => '__UINT32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT64_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'ULL'
          },
          {
            kind => 'define',
            name => '__UINT64_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__UINT64_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__UINT64_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__UINT64_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__UINT64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__UINT64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT8_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__UINT8_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hho"'
          },
          {
            kind => 'define',
            name => '__UINT8_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhu"'
          },
          {
            kind => 'define',
            name => '__UINT8_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhX"'
          },
          {
            kind => 'define',
            name => '__UINT8_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhx"'
          },
          {
            kind => 'define',
            name => '__UINT8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '255'
          },
          {
            kind => 'define',
            name => '__UINT8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned char'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"ho"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hu"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hX"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hx"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '65535'
          },
          {
            kind => 'define',
            name => '__UINT_FAST16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"o"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"u"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"X"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"x"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4294967295U'
          },
          {
            kind => 'define',
            name => '__UINT_FAST32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__UINT_FAST64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hho"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhu"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhX"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhx"'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '255'
          },
          {
            kind => 'define',
            name => '__UINT_FAST8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned char'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"ho"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hu"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hX"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hx"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '65535'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST16_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"o"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"u"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"X"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"x"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '4294967295U'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST32_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST64_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hho"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhu"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhX"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"hhx"'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '255'
          },
          {
            kind => 'define',
            name => '__UINT_LEAST8_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned char'
          },
          {
            kind => 'define',
            name => '__UINTMAX_C_SUFFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'ULL'
          },
          {
            kind => 'define',
            name => '__UINTMAX_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__UINTMAX_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__UINTMAX_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__UINTMAX_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__UINTMAX_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__UINTMAX_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__UINTMAX_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__UINTPTR_FMTo__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llo"'
          },
          {
            kind => 'define',
            name => '__UINTPTR_FMTu__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llu"'
          },
          {
            kind => 'define',
            name => '__UINTPTR_FMTX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llX"'
          },
          {
            kind => 'define',
            name => '__UINTPTR_FMTx__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"llx"'
          },
          {
            kind => 'define',
            name => '__UINTPTR_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '18446744073709551615ULL'
          },
          {
            kind => 'define',
            name => '__UINTPTR_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'long long unsigned int'
          },
          {
            kind => 'define',
            name => '__UINTPTR_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '64'
          },
          {
            kind => 'define',
            name => '__USER_LABEL_PREFIX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {}
          },
          {
            kind => 'define',
            name => '__VERSION__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '"Clang 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"'
          },
          {
            kind => 'define',
            name => '__WCHAR_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '65535'
          },
          {
            kind => 'define',
            name => '__WCHAR_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__WCHAR_UNSIGNED__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WCHAR_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__WIN32',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WIN32__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WIN64',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WIN64__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WINNT',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WINNT__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WINT_MAX__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '65535'
          },
          {
            kind => 'define',
            name => '__WINT_TYPE__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => 'unsigned short'
          },
          {
            kind => 'define',
            name => '__WINT_UNSIGNED__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__WINT_WIDTH__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '16'
          },
          {
            kind => 'define',
            name => '__x86_64',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '__x86_64__',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '_cdecl',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__cdecl__))'
          },
          {
            kind => 'define',
            name => '_ENABLE_EXTENDED_ALIGNED_STORAGE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '_fastcall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__fastcall__))'
          },
          {
            kind => 'define',
            name => '_pascal',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__pascal__))'
          },
          {
            kind => 'define',
            name => '_stdcall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__stdcall__))'
          },
          {
            kind => 'define',
            name => '_thiscall',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '__attribute__((__thiscall__))'
          },
          {
            kind => 'define',
            name => '_UNICODE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '_WIN32',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => '_WIN32_WINNT',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0A00'
          },
          {
            kind => 'define',
            name => '_WIN64',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'QT_CORE_LIB',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'SIZEOF_DPTR',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '(sizeof(void*))'
          },
          {
            kind => 'define',
            name => 'UNICODE',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'WIN32',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'WIN64',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'WINNT',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '1'
          },
          {
            kind => 'define',
            name => 'WINVER',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            initializer => '0x0A00'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'mocs_compilation.cpp',
      includes => [
      ],
      included_by => [
      ],
      enums => {
        members => [
          {
            kind => 'enum',
            name => 'some_compilers',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            values => [
              {
                name => 'need_more_than_nothing',
                brief => {},
                detailed => {}
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'kl_partition.cpp',
      includes => [
        {
          name => 'kl_partition.hpp',
          ref => 'kl__partition_8hpp'
        },
        {
          name => 'QFile'
        },
        {
          name => 'QMap'
        },
        {
          name => 'QTextStream'
        },
        {
          name => 'Qstring'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'cluster_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Performs clustering merge for a given partition. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Performs clustering merge on a given partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Iteratively merges clusters if combined variance decreases.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1) '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cluster_variance',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes variance of a cluster. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Variance is calculated over all edge weights within the cluster.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Variance value '
                    }
                  ]
                }
              ]
            },
            type => 'double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'const vector< int > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'compute_cut',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes the total cut for current partitions. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes total cut size for current partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Cut is defined as the sum of all edge weights from nodes in partition 0 to nodes in partition 1.'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Total cut value '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'compute_DV',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes D(V) for a cluster. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'D(V) = external_connections - internal_connections'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'External connections are edges from this cluster to all clusters in the opposite partition. Internal connections are edges from this cluster to other clusters in the same partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1) '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Difference between external and internal connections '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'const vector< int > &'
              },
              {
                declaration_name => 'p',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'initial_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Initializes the partitions from a CSV adjacency matrix file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Initializes partitions from an adjacency matrix file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Reads a CSV file where each row corresponds to a node and contains edge weights to all other nodes. Diagonal elements represent the node itself and are ignored. Initializes a simple even-odd partition: nodes 0,2,4,... go to partition 0, others to partition 1.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filepath'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Path to the CSV file containing adjacency matrix '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filepath',
                type => 'QString'
              }
            ]
          },
          {
            kind => 'function',
            name => 'kl_gain',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes the KL gain of swapping two clusters. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes KL gain for swapping two clusters.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gain = D(A) + D(B) - 2 * edge_sum_between_A_B'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'A'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster from partition 0 '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'B'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Cluster from partition 1 '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'KL gain value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Performs one Kernighan–Lin pass'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Swaps cluster pairs between partitions to maximize gain. Records the cut evolution in global cut_trace.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Algorithm:'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'For each unlocked cluster in partition 0, compute gain with each unlocked cluster in partition 1.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Select the pair with maximum gain and swap them.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Lock the swapped clusters.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Repeat until all clusters are locked or no positive gain.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Rollback swaps after best prefix sum of gains. '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'A',
                type => 'const vector< int > &'
              },
              {
                declaration_name => 'B',
                type => 'const vector< int > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'kl_pass',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Performs one pass of the Kernighan–Lin algorithm. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Selects cluster pairs to swap to maximize gain. Records cut evolution in cut_trace. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'write_metrics',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes final cut evolution and cluster variances to a file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes final cut and cluster variances to a file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Also writes all cut values stored in cut_trace.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'write_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes node-to-partition mapping to a file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Format: node_index partition_index'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'write_trace',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes cut evolution per iteration to CSV. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes cut evolution per iteration to a CSV file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Format: step,cut_value'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output CSV file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'kl_partition.hpp',
      includes => [
        {
          name => 'Qstring'
        },
        {
          name => 'vector'
        }
      ],
      included_by => [
        {
          name => 'C:/Users/Nima/Documents/KL/kl_partition.cpp',
          ref => 'kl__partition_8cpp'
        },
        {
          name => 'C:/Users/Nima/Documents/KL/main.cpp',
          ref => 'main_8cpp'
        }
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'cluster_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Performs clustering merge on a given partition. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Iteratively merges clusters if variance decreases.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1)'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Performs clustering merge on a given partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Iteratively merges clusters if combined variance decreases.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1) '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'p',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'cluster_variance',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes variance of a cluster. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Variance is used to measure how "spread out" the connection weights are within a cluster. Minimizing variance when merging clusters ensures that highly connected nodes are grouped together, improving cluster cohesion. (as the the professor mentioned)'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Given a cluster '
                },
                {
                  type => 'formula',
                  id => '0',
                  content => '$C$'
                },
                {
                  type => 'text',
                  content => ' of nodes, let '
                },
                {
                  type => 'formula',
                  id => '1',
                  content => '$w_{uv}$'
                },
                {
                  type => 'text',
                  content => ' be the weight of the edge from node '
                },
                {
                  type => 'formula',
                  id => '2',
                  content => '$u$'
                },
                {
                  type => 'text',
                  content => ' to node '
                },
                {
                  type => 'formula',
                  id => '3',
                  content => '$v$'
                },
                {
                  type => 'text',
                  content => '. The variance is computed as:'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'formula',
                  id => '4',
                  content => '\\[\\text{Var}(C) = \\frac{1}{|C|\\cdot N} \\sum_{u \\in C} \\sum_{v=0}^{N-1} w_{uv}^2
- \\left(\\frac{1}{|C|\\cdot N} \\sum_{u \\in C} \\sum_{v=0}^{N-1} w_{uv} \\right)^2
\\]'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'where '
                },
                {
                  type => 'formula',
                  id => '5',
                  content => '$N$'
                },
                {
                  type => 'text',
                  content => ' is the total number of nodes in the hypergraph.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Lower variance indicates that nodes in the cluster have more uniform and strong connections among themselves.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Variance value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Variance is calculated over all edge weights within the cluster.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Variance value '
                    }
                  ]
                }
              ]
            },
            type => 'double',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'const vector< int > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'compute_cut',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes total cut size for current partition. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Cut is defined as sum of edge weights from partition 0 to partition 1. '
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Total cut value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Computes total cut size for current partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Cut is defined as the sum of all edge weights from nodes in partition 0 to nodes in partition 1.'
                },
                {
                  type => 'parbreak'
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Total cut value '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'compute_DV',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes D(V) for a cluster. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'D(V) = external_connections - internal_connections'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1) '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Difference between external and internal connections'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'D(V) = external_connections - internal_connections'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'External connections are edges from this cluster to all clusters in the opposite partition. Internal connections are edges from this cluster to other clusters in the same partition.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'C'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster of nodes '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'p'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Partition index (0 or 1) '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'Difference between external and internal connections '
                    }
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'C',
                type => 'const vector< int > &'
              },
              {
                declaration_name => 'p',
                type => 'int'
              }
            ]
          },
          {
            kind => 'function',
            name => 'initial_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Initializes partitions from an adjacency matrix file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filepath'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Path to csv file containing adjacency matrix (file extension is not important)'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Initializes partitions from an adjacency matrix file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Reads a CSV file where each row corresponds to a node and contains edge weights to all other nodes. Diagonal elements represent the node itself and are ignored. Initializes a simple even-odd partition: nodes 0,2,4,... go to partition 0, others to partition 1.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filepath'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Path to the CSV file containing adjacency matrix '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filepath',
                type => 'QString'
              }
            ]
          },
          {
            kind => 'function',
            name => 'kl_gain',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Computes KL gain for swapping two clusters. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'A'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster from partition 0 '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'B'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Cluster from partition 1 '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'KL gain value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Computes KL gain for swapping two clusters.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Gain = D(A) + D(B) - 2 * edge_sum_between_A_B'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'A'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Cluster from partition 0 '
                        }
                      ]
                    },
                    {
                      parameters => [
                        {
                          name => 'B'
                        }
                      ],
                      doc => [
                        {
                          type => 'parbreak'
                        },
                        {
                          type => 'text',
                          content => 'Cluster from partition 1 '
                        }
                      ]
                    }
                  ]
                },
                {
                  return => [
                    {
                      type => 'text',
                      content => 'KL gain value'
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Performs one Kernighan–Lin pass'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Swaps cluster pairs between partitions to maximize gain. Records the cut evolution in global cut_trace.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Algorithm:'
                },
                {
                  type => 'list',
                  style => 'ordered',
                  content => [
                    [
                      {
                        type => 'text',
                        content => 'For each unlocked cluster in partition 0, compute gain with each unlocked cluster in partition 1.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Select the pair with maximum gain and swap them.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Lock the swapped clusters.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Repeat until all clusters are locked or no positive gain.'
                      }
                    ],
                    [
                      {
                        type => 'text',
                        content => 'Rollback swaps after best prefix sum of gains. '
                      }
                    ]
                  ]
                }
              ]
            },
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'A',
                type => 'const vector< int > &'
              },
              {
                declaration_name => 'B',
                type => 'const vector< int > &'
              }
            ]
          },
          {
            kind => 'function',
            name => 'kl_pass',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Performs one pass of the Kernighan–Lin algorithm. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Selects cluster pairs to swap to maximize gain. Records cut evolution in cut_trace. '
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
            ]
          },
          {
            kind => 'function',
            name => 'write_metrics',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes final cut and cluster variances to a file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Also writes the evolution of cuts stored in cut_trace.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Writes final cut and cluster variances to a file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Also writes all cut values stored in cut_trace.'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'write_partition',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes node-to-partition mapping to a file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Format: node_index partition_index'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          },
          {
            kind => 'function',
            name => 'write_trace',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Writes cut evolution per iteration to a CSV file. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Format: step,cut_value'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output file path'
                        }
                      ]
                    }
                  ]
                },
                {
                  type => 'text',
                  content => 'Writes cut evolution per iteration to a CSV file.'
                },
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Format: step,cut_value'
                },
                {
                  type => 'parbreak'
                },
                {
                  params => [
                    {
                      parameters => [
                        {
                          name => 'filename'
                        }
                      ],
                      doc => [
                        {
                          type => 'text',
                          content => 'Output CSV file path '
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            type => 'void',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'filename',
                type => 'const char *'
              }
            ]
          }
        ]
      },
      variables => {
        members => [
          {
            kind => 'variable',
            name => 'cut_trace',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Stores cut size after each KL swap. '
                }
              ]
            },
            detailed => {},
            type => 'static vector< int >'
          },
          {
            kind => 'variable',
            name => 'edges',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Adjacency matrix storing edge weights. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Each row corresponds to a node. edges[i][j] is the weight of the edge from node i to node j. Diagonal elements (i==j) represent the node itself and are zero. '
                }
              ]
            },
            type => 'static vector< vector< int > >'
          },
          {
            kind => 'variable',
            name => 'M',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Total number of edges in the hypergraph. '
                }
              ]
            },
            detailed => {},
            type => 'static int',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'N',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Total number of nodes in the hypergraph. '
                }
              ]
            },
            detailed => {},
            type => 'static int',
            initializer => '{}'
          },
          {
            kind => 'variable',
            name => 'part',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'yes',
            brief => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'Partition data structure. '
                }
              ]
            },
            detailed => {
              doc => [
                {
                  type => 'parbreak'
                },
                {
                  type => 'text',
                  content => 'part[0] and part[1] store the clusters in partition 0 and 1 respectively. Each cluster is a vector of node indices. '
                }
              ]
            },
            type => 'static std::array< std::vector< std::vector< int > >, 2 >'
          }
        ]
      },
      brief => {},
      detailed => {}
    },
    {
      name => 'main.cpp',
      includes => [
        {
          name => 'QCoreApplication'
        },
        {
          name => 'QDebug'
        },
        {
          name => 'QFile'
        },
        {
          name => 'QString'
        },
        {
          name => 'kl_partition.hpp',
          ref => 'kl__partition_8hpp'
        }
      ],
      included_by => [
      ],
      functions => {
        members => [
          {
            kind => 'function',
            name => 'main',
            virtualness => 'non-virtual',
            protection => 'public',
            static => 'no',
            brief => {},
            detailed => {},
            type => 'int',
            const => 'no',
            volatile => 'no',
            parameters => [
              {
                declaration_name => 'argc',
                type => 'int'
              },
              {
                declaration_name => 'argv',
                type => 'char *',
                array => '[]'
              }
            ]
          }
        ]
      },
      brief => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Entry point for the KL partition program. '
          }
        ]
      },
      detailed => {
        doc => [
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'This program reads an adjacency matrix from a CSV file specified via command line or console input, performs KL partitioning with clustering, and writes results to output files:'
          },
          {
            type => 'list',
            style => 'itemized',
            content => [
              [
                {
                  type => 'text',
                  content => 'partition.txt : node -> partition mapping'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'metrics.txt : cut and cluster variance metrics'
                }
              ],
              [
                {
                  type => 'text',
                  content => 'trace.csv : cut evolution during KL swaps'
                }
              ]
            ]
          },
          {
            type => 'parbreak'
          },
          {
            type => 'text',
            content => 'Usage: '
          },
          {
            type => 'preformatted',
            content => './KL input.csv'
          },
          {
            type => 'text',
            content => ' '
          }
        ]
      }
    },
    {
      name => 'README.md',
      includes => [
      ],
      included_by => [
      ],
      brief => {},
      detailed => {}
    }
  ],
  groups => [
  ],
  pages => [
  ]
};
1;
