%Object = type { i8* }
%IO = type { i8* }
%Main = type { i8* }
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO* @IO_out_string(%IO*, i8*)
declare %IO* @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
@.String.0123456789 = constant [11 x i8] c"0123456789\00"
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
@.String.0 = constant [2 x i8] c"0\00"
@.String.1 = constant [2 x i8] c"1\00"
%v0 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.0123456789 to i8* ), i8** %v0
define i32 @main() {
%v1 = alloca i8*
%v2 = alloca i32
store i32 1898524, i32* %v2
%v3 = load i32* %v2
bool false [Bool]
%v4 = load i1* %NDE
%v5 = call i8* @IO_itoa(i32 %v3,i1 %v4)
%v6 = load i8** %v5
%v7 = call %IO* @IO_out_string(%IO* null, i8* %v6)
%v8 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v8
%v9 = load i8** %v8
%v10 = call %IO* @IO_out_string(%IO* null, i8* %v9)
%v11 = alloca i32
store i32 123, i32* %v11
%v12 = alloca i32
store i32 11, i32* %v12
%v14 = load i32* %v11
%v15 = load i32* %v12
%v13 = sub nsw i32 %v14, %v15
%v16 = alloca i32
store i32 %v13, i32* %v16
%v17 = load i32* %v16
bool false [Bool]
%v18 = load i1* %NDE
%v19 = call i8* @IO_itoa(i32 %v17,i1 %v18)
%v20 = load i8** %v19
%v21 = call %IO* @IO_out_string(%IO* null, i8* %v20)
%v22 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v22
%v23 = load i8** %v22
%v24 = call %IO* @IO_out_string(%IO* null, i8* %v23)
%v25 = alloca i32
store i32 126, i32* %v25
%v26 = load i32* %v25
bool true [Bool]
%v27 = load i1* %NDE
%v28 = call i8* @IO_itoa(i32 %v26,i1 %v27)
%v29 = load i8** %v28
%v30 = call %IO* @IO_out_string(%IO* null, i8* %v29)
%v31 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v31
%v32 = load i8** %v31
%v33 = call %IO* @IO_out_string(%IO* null, i8* %v32)
%v34 = alloca i32
store i32 2, i32* %v34
%v35 = alloca i32
store i32 10, i32* %v35
%v37 = load i32* %v34
%v38 = load i32* %v35
%v36 = mul nsw i32 %v37, %v38
%v39 = alloca i32
store i32 %v36, i32* %v39
%v40 = load i32* %v39
bool true [Bool]
%v41 = load i1* %NDE
%v42 = call i8* @IO_itoa(i32 %v40,i1 %v41)
%v43 = load i8** %v42
%v44 = call %IO* @IO_out_string(%IO* null, i8* %v43)
ret i32 0
}
define i8* @itoa(i32 %numberi1 %binary) {
%v45 = alloca i32
%v46 = alloca i1
%v1 = alloca i8*
if [String]
then
%v47 = load i32* %v45
%v48 = call i8* @IO_itoa_binary(i32 %v47)
else
%v49 = load i32* %v45
%v50 = call i8* @IO_itoa_decimal(i32 %v49)
%v51 = load i8** %NDE
ret i8* %v51
}
define i8* @itoa_decimal(i32 %number) {
%v52 = alloca i32
%v1 = alloca i8*
if [String]
%v53 = alloca i32
store i32 10, i32* %v53
%v55 = load i32* %v52
%v56 = load i32* %v53
%v54 = icmp slt i32 %v55, %v56
%v57 = alloca i1
store i1 %v54, i1* %v57
then
%v58 = load i8** %v1
%v59 = load i32* %v52
%v60 = alloca i32
store i32 1, i32* %v60
%v61 = load i32* %v60
%v62 = call i8* @IO_substr(i8* null, i8* v58,i32 %v59,i32 %v61)
else
%v63 = alloca i32
store i32 10, i32* %v63
%v65 = load i32* %v52
%v66 = load i32* %v63
%v64 = sdiv i32 %v65, %v66
%v67 = alloca i32
store i32 %v64, i32* %v67
%v68 = load i32* %v67
%v69 = call i8* @IO_itoa_decimal(i32 %v68)
%v70 = load i8** %v69
%v71 = alloca i32
store i32 10, i32* %v71
%v73 = load i32* %v52
%v74 = load i32* %v71
%v72 = sdiv i32 %v73, %v74
%v75 = alloca i32
store i32 %v72, i32* %v75
%v76 = alloca i32
store i32 10, i32* %v76
%v78 = load i32* %v75
%v79 = load i32* %v76
%v77 = mul nsw i32 %v78, %v79
%v80 = alloca i32
store i32 %v77, i32* %v80
%v82 = load i32* %v52
%v83 = load i32* %v80
%v81 = sub nsw i32 %v82, %v83
%v84 = alloca i32
store i32 %v81, i32* %v84
%v85 = load i32* %v84
%v86 = call i8* @IO_itoa_decimal(i32 %v85)
%v87 = load i8** %v86
%v88 = call i8* @IO_concat(i8* null, i8* v70,i8* %v87)
%v89 = load i8** %NDE
ret i8* %v89
}
define i8* @itoa_binary(i32 %n) {
%v90 = alloca i32
%v1 = alloca i8*
if [String]
%v91 = alloca i32
store i32 2, i32* %v91
%v93 = load i32* %v90
%v94 = load i32* %v91
%v92 = icmp slt i32 %v93, %v94
%v95 = alloca i1
store i1 %v92, i1* %v95
then
if [String]
%v96 = alloca i32
store i32 0, i32* %v96
%v98 = load i32* %v90
%v99 = load i32* %v96
%v97 = icmp eq i32 %v98, %v99
%v100 = alloca i1
store i1 %v97, i1* %v100
then
%v101 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.0 to i8* ), i8** %v101
else
%v102 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.1 to i8* ), i8** %v102
else
%v103 = alloca i32
store i32 2, i32* %v103
%v105 = load i32* %v90
%v106 = load i32* %v103
%v104 = sdiv i32 %v105, %v106
%v107 = alloca i32
store i32 %v104, i32* %v107
%v108 = load i32* %v107
%v109 = call i8* @IO_itoa_binary(i32 %v108)
%v110 = load i8** %v109
%v111 = alloca i32
store i32 2, i32* %v111
%v113 = load i32* %v90
%v114 = load i32* %v111
%v112 = sdiv i32 %v113, %v114
%v115 = alloca i32
store i32 %v112, i32* %v115
%v116 = alloca i32
store i32 2, i32* %v116
%v118 = load i32* %v115
%v119 = load i32* %v116
%v117 = mul nsw i32 %v118, %v119
%v120 = alloca i32
store i32 %v117, i32* %v120
%v122 = load i32* %v90
%v123 = load i32* %v120
%v121 = sub nsw i32 %v122, %v123
%v124 = alloca i32
store i32 %v121, i32* %v124
%v125 = load i32* %v124
%v126 = call i8* @IO_itoa_binary(i32 %v125)
%v127 = load i8** %v126
%v128 = call i8* @IO_concat(i8* null, i8* v110,i8* %v127)
%v129 = load i8** %NDE
ret i8* %v129
}
