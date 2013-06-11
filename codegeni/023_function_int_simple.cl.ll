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
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
@.String.SPACEisSPACEbigSLASHENE = constant [9 x i8] c" is big\0A\00"
@.String.SPACEisSPACEsmallSLASHENE = constant [11 x i8] c" is small\0A\00"
define i32 @main() {
%v0 = alloca i32
store i32 9, i32* %v0
%v1 = load i32* %v0
%v2 = alloca i32
store i32 5, i32* %v2
%v3 = load i32* %v2
%v4 = alloca i32
store i32 6, i32* %v4
%v5 = load i32* %v4
%v6 = alloca i32
store i32 7, i32* %v6
%v7 = load i32* %v6
%v8 = call i8* @IO_cosa_compleja(i32 %v1,i32 %v3,i32 %v5,i32 %v7)
%v9 = load i32* %v8
%v10 = call %IO* @IO_out_int(%IO* null, i32 %v9)
%v11 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v11
%v12 = load i8** %v11
%v13 = call %IO* @IO_out_string(%IO* null, i8* %v12)
%v14 = alloca i32
store i32 1, i32* %v14
%v15 = load i32* %v14
%v16 = alloca i32
store i32 6, i32* %v16
%v17 = load i32* %v16
%v18 = alloca i32
store i32 7, i32* %v18
%v19 = load i32* %v18
%v20 = alloca i32
store i32 8, i32* %v20
%v21 = load i32* %v20
%v22 = call i8* @IO_cosa_compleja(i32 %v15,i32 %v17,i32 %v19,i32 %v21)
%v23 = load i32* %v22
%v24 = call %IO* @IO_out_int(%IO* null, i32 %v23)
%v25 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v25
%v26 = load i8** %v25
%v27 = call %IO* @IO_out_string(%IO* null, i8* %v26)
%v28 = alloca i32
store i32 2904, i32* %v28
%v29 = load i32* %v28
%v30 = call i8* @IO_op_simple(i32 %v29)
%v31 = load i32* %v30
%v32 = call %IO* @IO_out_int(%IO* null, i32 %v31)
%v33 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v33
%v34 = load i8** %v33
%v35 = call %IO* @IO_out_string(%IO* null, i8* %v34)
%v36 = alloca i32
store i32 13, i32* %v36
%v37 = load i32* %v36
%v38 = call i8* @IO_printIsBig(i32 %v37)
%v39 = alloca i32
store i32 2344, i32* %v39
%v40 = load i32* %v39
%v41 = call i8* @IO_printIsBig(i32 %v40)
%v42 = alloca i32
store i32 1000, i32* %v42
%v43 = load i32* %v42
%v44 = call i8* @IO_printIsBig(i32 %v43)
ret i32 0
}
define i32 @cosa_compleja(i32 %ai32 %bi32 %ci32 %d) {
%v45 = alloca i32
%v46 = alloca i32
%v47 = alloca i32
%v48 = alloca i32
if [Int]
%v50 = load i32* %v46
%v51 = load i32* %v47
%v49 = add nsw i32 %v50, %v51
%v52 = alloca i32
store i32 %v49, i32* %v52
%v54 = load i32* %v45
%v55 = load i32* %v52
%v53 = icmp slt i32 %v54, %v55
%v56 = alloca i1
store i1 %v53, i1* %v56
then
else
%v57 = alloca i32
store i32 4, i32* %v57
%v59 = load i32* %v48
%v60 = load i32* %v57
%v58 = mul nsw i32 %v59, %v60
%v61 = alloca i32
store i32 %v58, i32* %v61
%v63 = load i32* %v61
%v64 = load i32* %v47
%v62 = add nsw i32 %v63, %v64
%v65 = alloca i32
store i32 %v62, i32* %v65
%v66 = load i32* %NDE
ret i32 %v66
}
define i32 @op_simple(i32 %n) {
%v67 = alloca i32
%v68 = alloca i32
store i32 1, i32* %v68
%v70 = load i32* %v67
%v71 = load i32* %v68
%v69 = add nsw i32 %v70, %v71
%v72 = alloca i32
store i32 %v69, i32* %v72
%v73 = load i32* %v72
ret i32 %v73
}
define i1 @isBig(i32 %n) {
%v74 = alloca i32
%v75 = alloca i32
store i32 1000, i32* %v75
%v77 = load i32* %v75
%v78 = load i32* %v74
%v76 = icmp slt i32 %v77, %v78
%v79 = alloca i1
store i1 %v76, i1* %v79
%v80 = load i1* %v79
ret i1 %v80
}
define %Object @printIsBig(i32 %n) {
%v81 = alloca i32
%v82 = load i32* %v81
%v83 = call %IO* @IO_out_int(%IO* null, i32 %v82)
if [Main]
%v84 = load i32* %v81
%v85 = call i8* @IO_isBig(i32 %v84)
then
%v86 = alloca i8*
store i8* bitcast ( [9 x i8]* @.String.SPACEisSPACEbigSLASHENE to i8* ), i8** %v86
%v87 = load i8** %v86
%v88 = call %IO* @IO_out_string(%IO* null, i8* %v87)
else
%v89 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.SPACEisSPACEsmallSLASHENE to i8* ), i8** %v89
%v90 = load i8** %v89
%v91 = call %IO* @IO_out_string(%IO* null, i8* %v90)
%v92 = load %Object* %NDE
ret %Object %v92
}
