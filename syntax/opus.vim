" Decimal
syn match Number "\<\d*\([Ee][+-]\?\d\+\)\?\([KMGTP]\|Ki\|Mi\|Gi\|Ti\|Pi\)\?\>"

" Float
syn match Number "\<\d\+[.]\d*\([Ee][+-]\?\d\+\)\?\>"
syn match Number "\<[.]\d\+\([Ee][+-]\?\d\+\)\?\>"

syn match OpusEscape display contained /\\\([btnfr\\'"]\|x\x\{2}\)/
syn match OpusEsacpeUnicode display contained /\\\(u\x\{4}\|U\x\{8}\)/
syn match OpusEscapeUnicode display contained /\\u{\x\{1,6}}/
syn region String start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=OpusEscape,OpusEscapeUnicode

syn region Comment start="/[*]" end="[*]/"
syn match Comment "//.*$"

" Builtins
syn keyword Constant apply catch chr cmp force function_filename
syn keyword Constant function_is_variadic function_linenum function_min_arity
syn keyword Constant function_name function_params function_signature len
syn keyword Constant list_concat list_maxes list_mins list_reduce list_sublist
syn keyword Constant map_from_items map_to_items map_transform number_as_double
syn keyword Constant number_as_float number_as_int32 number_as_uint32
syn keyword Constant number_as_int64 number_as_uint64 number_ceil number_floor
syn keyword Constant number_log number_parse number_pow number_round
syn keyword Constant number_to_ratio number_truncate object_field_origin
syn keyword Constant object_from_fields object_is_template object_labels
syn keyword Constant object_origin object_outer object_outers object_prototype
syn keyword Constant object_to_fields object_type ord os_fnmatch prettyprint
syn keyword Constant proto_decode proto_encode proto_enum_name proto_enum_number
syn keyword Constant range re2_findall re2_match re2_replace repr sort
syn keyword Constant string_concat string_endswith string_find string_from_bytes
syn keyword Constant string_replace_all string_split string_startswith
syn keyword Constant string_substring string_to_bytes counter time_strftime
syn keyword Constant time_strptime time_walltime typeof utf8_chr utf8_len
syn keyword Constant utf8_ord utf8_to_lower utf8_to_upper

syntax keyword Include import as
syntax keyword Type super template up builtin local self
syntax keyword Conditional else if then
syntax keyword Repeat for in
syntax keyword Statement assert def expect lambda
syntax keyword Constant false true null
syntax keyword Special div flag

syntax keyword Constant __infix__ __name__
