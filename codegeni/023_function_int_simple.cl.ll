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
;xxMethod def!
define i32 @main() {
;xxBloq
;xxDispatch de:out_int
;xxDispatch de:cosa_compleja
;xxInt
%v0 = alloca i32
;xxStoreamos un int con el valor: 9
store i32 9, i32* %v0
;Dispatch arg load...
%v1 = load i32* %v0
;xxInt
%v2 = alloca i32
;xxStoreamos un int con el valor: 5
store i32 5, i32* %v2
;Dispatch arg load...
%v3 = load i32* %v2
;xxInt
%v4 = alloca i32
;xxStoreamos un int con el valor: 6
store i32 6, i32* %v4
;Dispatch arg load...
%v5 = load i32* %v4
;xxInt
%v6 = alloca i32
;xxStoreamos un int con el valor: 7
store i32 7, i32* %v6
;Dispatch arg load...
%v7 = load i32* %v6
%v8 = call i8* @null_cosa_compleja(i32 %v1,i32 %v3,i32 %v5,i32 %v7)
%v9 = alloca i8*
store i8* %v8, i8** %v9
;Dispatch arg load...
%v10 = load i32* %v9
%v11 = call %IO* @IO_out_int(%IO* null, i32 %v10)
%v12 = alloca %IO*
store %IO* %v11, %IO** %v12
;xxDispatch de:out_string
%v13 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v13
;Dispatch arg load...
%v14 = load i8** %v13
%v15 = call %IO* @IO_out_string(%IO* null, i8* %v14)
%v16 = alloca %IO*
store %IO* %v15, %IO** %v16
;xxDispatch de:out_int
;xxDispatch de:cosa_compleja
;xxInt
%v17 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v17
;Dispatch arg load...
%v18 = load i32* %v17
;xxInt
%v19 = alloca i32
;xxStoreamos un int con el valor: 6
store i32 6, i32* %v19
;Dispatch arg load...
%v20 = load i32* %v19
;xxInt
%v21 = alloca i32
;xxStoreamos un int con el valor: 7
store i32 7, i32* %v21
;Dispatch arg load...
%v22 = load i32* %v21
;xxInt
%v23 = alloca i32
;xxStoreamos un int con el valor: 8
store i32 8, i32* %v23
;Dispatch arg load...
%v24 = load i32* %v23
%v25 = call i8* @null_cosa_compleja(i32 %v18,i32 %v20,i32 %v22,i32 %v24)
%v26 = alloca i8*
store i8* %v25, i8** %v26
;Dispatch arg load...
%v27 = load i32* %v26
%v28 = call %IO* @IO_out_int(%IO* null, i32 %v27)
%v29 = alloca %IO*
store %IO* %v28, %IO** %v29
;xxDispatch de:out_string
%v30 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v30
;Dispatch arg load...
%v31 = load i8** %v30
%v32 = call %IO* @IO_out_string(%IO* null, i8* %v31)
%v33 = alloca %IO*
store %IO* %v32, %IO** %v33
;xxDispatch de:out_int
;xxDispatch de:op_simple
;xxInt
%v34 = alloca i32
;xxStoreamos un int con el valor: 2904
store i32 2904, i32* %v34
;Dispatch arg load...
%v35 = load i32* %v34
%v36 = call i8* @null_op_simple(i32 %v35)
%v37 = alloca i8*
store i8* %v36, i8** %v37
;Dispatch arg load...
%v38 = load i32* %v37
%v39 = call %IO* @IO_out_int(%IO* null, i32 %v38)
%v40 = alloca %IO*
store %IO* %v39, %IO** %v40
;xxDispatch de:out_string
%v41 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v41
;Dispatch arg load...
%v42 = load i8** %v41
%v43 = call %IO* @IO_out_string(%IO* null, i8* %v42)
%v44 = alloca %IO*
store %IO* %v43, %IO** %v44
;xxDispatch de:printIsBig
;xxInt
%v45 = alloca i32
;xxStoreamos un int con el valor: 13
store i32 13, i32* %v45
;Dispatch arg load...
%v46 = load i32* %v45
%v47 = call i8* @null_printIsBig(i32 %v46)
%v48 = alloca i8*
store i8* %v47, i8** %v48
;xxDispatch de:printIsBig
;xxInt
%v49 = alloca i32
;xxStoreamos un int con el valor: 2344
store i32 2344, i32* %v49
;Dispatch arg load...
%v50 = load i32* %v49
%v51 = call i8* @null_printIsBig(i32 %v50)
%v52 = alloca i8*
store i8* %v51, i8** %v52
;xxDispatch de:printIsBig
;xxInt
%v53 = alloca i32
;xxStoreamos un int con el valor: 1000
store i32 1000, i32* %v53
;Dispatch arg load...
%v54 = load i32* %v53
%v55 = call i8* @null_printIsBig(i32 %v54)
%v56 = alloca i8*
store i8* %v55, i8** %v56
ret i32 0
}
;xxMethod def!
define i32 @cosa_compleja(i32 %ai32 %bi32 %ci32 %d) {
%v57 = alloca i32
%v58 = alloca i32
%v59 = alloca i32
%v60 = alloca i32
;xxIFEX
;xxIdExpr
;xxIdExpr
;xxIdExpr
%v62 = load i32* %v58
%v63 = load i32* %v59
%v61 = add nsw i32 %v62, %v63
%v64 = alloca i32
store i32 %v61, i32* %v64
%v66 = load i32* %v57
%v67 = load i32* %v64
%v65 = icmp slt i32 %v66, %v67
%v68 = alloca i1
store i1 %v65, i1* %v68
%v69 = load i1* %v68
br i1 %v69, label %v70, label %v71
v70:
;xxIdExpr
br label %v72
v71:
;xxIdExpr
;xxInt
%v74 = alloca i32
;xxStoreamos un int con el valor: 4
store i32 4, i32* %v74
%v76 = load i32* %v60
%v77 = load i32* %v74
%v75 = mul nsw i32 %v76, %v77
%v78 = alloca i32
store i32 %v75, i32* %v78
;xxIdExpr
%v80 = load i32* %v78
%v81 = load i32* %v59
%v79 = add nsw i32 %v80, %v81
%v82 = alloca i32
store i32 %v79, i32* %v82
br label %v72
v72:
%v73 = phi null* [%v57, %v70],[%v82, %v71]
%v83 = load i32* %v73
ret i32 %v83
}
;xxMethod def!
define i32 @op_simple(i32 %n) {
%v84 = alloca i32
;xxIdExpr
;xxInt
%v85 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v85
%v87 = load i32* %v84
%v88 = load i32* %v85
%v86 = add nsw i32 %v87, %v88
%v89 = alloca i32
store i32 %v86, i32* %v89
%v90 = load i32* %v89
ret i32 %v90
}
;xxMethod def!
define i1 @isBig(i32 %n) {
%v91 = alloca i32
;xxInt
%v92 = alloca i32
;xxStoreamos un int con el valor: 1000
store i32 1000, i32* %v92
;xxIdExpr
%v94 = load i32* %v92
%v95 = load i32* %v91
%v93 = icmp slt i32 %v94, %v95
%v96 = alloca i1
store i1 %v93, i1* %v96
%v97 = load i1* %v96
ret i1 %v97
}
;xxMethod def!
define %Object @printIsBig(i32 %n) {
%v98 = alloca i32
;xxBloq
;xxDispatch de:out_int
;xxIdExpr
;Dispatch arg load...
%v99 = load i32* %v98
%v100 = call %IO* @IO_out_int(%IO* null, i32 %v99)
%v101 = alloca %IO*
store %IO* %v100, %IO** %v101
;xxIFEX
;xxDispatch de:isBig
;xxIdExpr
;Dispatch arg load...
%v102 = load i32* %v98
%v103 = call i8* @null_isBig(i32 %v102)
%v104 = alloca i8*
store i8* %v103, i8** %v104
%v105 = load i1* %v104
br i1 %v105, label %v106, label %v107
v106:
;xxDispatch de:out_string
%v110 = alloca i8*
store i8* bitcast ( [9 x i8]* @.String.SPACEisSPACEbigSLASHENE to i8* ), i8** %v110
;Dispatch arg load...
%v111 = load i8** %v110
%v112 = call %IO* @IO_out_string(%IO* null, i8* %v111)
%v113 = alloca %IO*
store %IO* %v112, %IO** %v113
br label %v108
v107:
;xxDispatch de:out_string
%v114 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.SPACEisSPACEsmallSLASHENE to i8* ), i8** %v114
;Dispatch arg load...
%v115 = load i8** %v114
%v116 = call %IO* @IO_out_string(%IO* null, i8* %v115)
%v117 = alloca %IO*
store %IO* %v116, %IO** %v117
br label %v108
v108:
%v109 = phi %IO** [%v113, %v106],[%v117, %v107]
%v118 = load %Object* %v109
ret %Object %v118
}
