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
@.String.1SPACE60SPACE5SLASHENE = constant [7 x i8] c"1 < 5\0A\00"
@.String.impossiburuuuSLASHENE = constant [15 x i8] c"impossiburuuu\0A\00"
@.String.3SPACE6061SPACE5SLASHENE = constant [8 x i8] c"3 <= 5\0A\00"
@.String.impossiburuuuSPACEtooSLASHENE = constant [19 x i8] c"impossiburuuu too\0A\00"
@.String.1SPACE60SPACE1SLASHENE = constant [7 x i8] c"1 < 1\0A\00"
@.String.yay33SPACEitSPACEworksSLASHENE = constant [15 x i8] c"yay! it works\0A\00"
@.String.1SPACE6061SPACE1SLASHENE = constant [8 x i8] c"1 <= 1\0A\00"
@.String.thisSPACEisSPACEgettingSPACEevenSPACEmoreSPACEridiculousSLASHENE = constant [38 x i8] c"this is getting even more ridiculous\0A\00"
@.String.whut63SLASHENE = constant [7 x i8] c"whut?\0A\00"
@.String.3334SPACE60SPACE5SLASHENE = constant [9 x i8] c"!34 < 5\0A\00"
@.String.so44SPACEthisSPACEisSPACEtheSPACEend = constant [20 x i8] c"so, this is the end\00"
@.String.whoopitiwhoo33 = constant [14 x i8] c"whoopitiwhoo!\00"
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i1
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca i32
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i32
;xxFIELDS OFF
;xxBloq
;xxDispatch de:out_string
;xxIFEX
;xxInt
%v3 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v3
;xxInt
%v4 = alloca i32
;xxStoreamos un int con el valor: 5
store i32 5, i32* %v4
%v6 = load i32* %v3
%v7 = load i32* %v4
%v5 = icmp slt i32 %v6, %v7
%v8 = alloca i1
store i1 %v5, i1* %v8
%v9 = load i1* %v8
br i1 %v9, label %v10, label %v11
v10:
%v14 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.1SPACE60SPACE5SLASHENE to i8* ), i8** %v14
br label %v12
v11:
%v15 = alloca i8*
store i8* bitcast ( [15 x i8]* @.String.impossiburuuuSLASHENE to i8* ), i8** %v15
br label %v12
v12:
%v13 = phi i8** [%v14, %v10],[%v15, %v11]
;Dispatch arg load...
%v16 = load i8** %v13
%v17 = call %IO* @IO_out_string(%IO* null, i8* %v16)
%v18 = alloca %IO*
store %IO* %v17, %IO** %v18
;xxDispatch de:out_string
;xxIFEX
;xxInt
%v19 = alloca i32
;xxStoreamos un int con el valor: 3
store i32 3, i32* %v19
;xxInt
%v20 = alloca i32
;xxStoreamos un int con el valor: 5
store i32 5, i32* %v20
%v22 = load i32* %v19
%v23 = load i32* %v20
%v21 = icmp sle i32 %v22, %v23
%v24 = alloca i1
store i1 %v21, i1* %v24
%v25 = load i1* %v24
br i1 %v25, label %v26, label %v27
v26:
%v30 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.3SPACE6061SPACE5SLASHENE to i8* ), i8** %v30
br label %v28
v27:
%v31 = alloca i8*
store i8* bitcast ( [19 x i8]* @.String.impossiburuuuSPACEtooSLASHENE to i8* ), i8** %v31
br label %v28
v28:
%v29 = phi i8** [%v30, %v26],[%v31, %v27]
;Dispatch arg load...
%v32 = load i8** %v29
%v33 = call %IO* @IO_out_string(%IO* null, i8* %v32)
%v34 = alloca %IO*
store %IO* %v33, %IO** %v34
;xxInt
%v35 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v35
%v36 = load i32* %v35
store i32 %v36, i32* %v1
;xxInt
%v37 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v37
%v38 = load i32* %v37
store i32 %v38, i32* %v2
;xxIdExpr
;xxIdExpr
%v40 = load i32* %v1
%v41 = load i32* %v2
%v39 = icmp slt i32 %v40, %v41
%v42 = alloca i1
store i1 %v39, i1* %v42
%v43 = load i1* %v42
store i1 %v43, i1* %v0
;xxDispatch de:out_string
;xxIFEX
;xxIdExpr
%v44 = load i1* %v0
br i1 %v44, label %v45, label %v46
v45:
%v49 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.1SPACE60SPACE1SLASHENE to i8* ), i8** %v49
br label %v47
v46:
%v50 = alloca i8*
store i8* bitcast ( [15 x i8]* @.String.yay33SPACEitSPACEworksSLASHENE to i8* ), i8** %v50
br label %v47
v47:
%v48 = phi i8** [%v49, %v45],[%v50, %v46]
;Dispatch arg load...
%v51 = load i8** %v48
%v52 = call %IO* @IO_out_string(%IO* null, i8* %v51)
%v53 = alloca %IO*
store %IO* %v52, %IO** %v53
;xxIdExpr
;xxIdExpr
%v55 = load i32* %v1
%v56 = load i32* %v2
%v54 = icmp sle i32 %v55, %v56
%v57 = alloca i1
store i1 %v54, i1* %v57
%v58 = load i1* %v57
store i1 %v58, i1* %v0
;xxDispatch de:out_string
;xxIFEX
;xxIdExpr
%v59 = load i1* %v0
br i1 %v59, label %v60, label %v61
v60:
%v64 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.1SPACE6061SPACE1SLASHENE to i8* ), i8** %v64
br label %v62
v61:
%v65 = alloca i8*
store i8* bitcast ( [38 x i8]* @.String.thisSPACEisSPACEgettingSPACEevenSPACEmoreSPACEridiculousSLASHENE to i8* ), i8** %v65
br label %v62
v62:
%v63 = phi i8** [%v64, %v60],[%v65, %v61]
;Dispatch arg load...
%v66 = load i8** %v63
%v67 = call %IO* @IO_out_string(%IO* null, i8* %v66)
%v68 = alloca %IO*
store %IO* %v67, %IO** %v68
;xxDispatch de:out_string
;xxIFEX
;xxInt
%v69 = alloca i32
;xxStoreamos un int con el valor: 34
store i32 34, i32* %v69
;xxInt
%v70 = alloca i32
;xxStoreamos un int con el valor: 5
store i32 5, i32* %v70
%v72 = load i32* %v69
%v73 = load i32* %v70
%v71 = icmp slt i32 %v72, %v73
%v74 = alloca i1
store i1 %v71, i1* %v74
%v75 = load i1* %v74
br i1 %v75, label %v76, label %v77
v76:
%v80 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.whut63SLASHENE to i8* ), i8** %v80
br label %v78
v77:
%v81 = alloca i8*
store i8* bitcast ( [9 x i8]* @.String.3334SPACE60SPACE5SLASHENE to i8* ), i8** %v81
br label %v78
v78:
%v79 = phi i8** [%v80, %v76],[%v81, %v77]
;Dispatch arg load...
%v82 = load i8** %v79
%v83 = call %IO* @IO_out_string(%IO* null, i8* %v82)
%v84 = alloca %IO*
store %IO* %v83, %IO** %v84
;xxDispatch de:out_string
;xxIFEX
;xxInt
%v85 = alloca i32
;xxStoreamos un int con el valor: 53
store i32 53, i32* %v85
;xxIdExpr
%v87 = load i32* %v85
%v88 = load i32* %v1
%v86 = icmp sle i32 %v87, %v88
%v89 = alloca i1
store i1 %v86, i1* %v89
%v90 = load i1* %v89
br i1 %v90, label %v91, label %v92
v91:
%v95 = alloca i8*
store i8* bitcast ( [20 x i8]* @.String.so44SPACEthisSPACEisSPACEtheSPACEend to i8* ), i8** %v95
br label %v93
v92:
%v96 = alloca i8*
store i8* bitcast ( [14 x i8]* @.String.whoopitiwhoo33 to i8* ), i8** %v96
br label %v93
v93:
%v94 = phi i8** [%v95, %v91],[%v96, %v92]
;Dispatch arg load...
%v97 = load i8** %v94
%v98 = call %IO* @IO_out_string(%IO* null, i8* %v97)
%v99 = alloca %IO*
store %IO* %v98, %IO** %v99
ret i32 0
}
