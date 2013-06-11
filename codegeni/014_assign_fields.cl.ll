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
@.String.I39mSPACEaSPACEbigSPACEstring3333 = constant [19 x i8] c"I'm a big string!!\00"
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
@.String.true = constant [5 x i8] c"true\00"
@.String.false = constant [6 x i8] c"false\00"
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i8*
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca i32
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i1
;xxFIELDS OFF
;xxBloq
%v3 = alloca i8*
store i8* bitcast ( [19 x i8]* @.String.I39mSPACEaSPACEbigSPACEstring3333 to i8* ), i8** %v3
%v4 = load i8** %v3
store i8* %v4, i8** %v0
;xxInt
%v5 = alloca i32
;xxStoreamos un int con el valor: 80085
store i32 80085, i32* %v5
%v6 = load i32* %v5
store i32 %v6, i32* %v1
;xxBOOL
%v7 = alloca i1
store i1 true, i1* %v7
%v8 = load i1* %v7
store i1 %v8, i1* %v2
;xxDispatch de:out_string
;xxIdExpr
;Dispatch arg load...
%v9 = load i8** %v0
%v10 = call %IO* @IO_out_string(%IO* null, i8* %v9)
%v11 = alloca %IO*
store %IO* %v10, %IO** %v11
;xxDispatch de:out_string
%v12 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v12
;Dispatch arg load...
%v13 = load i8** %v12
%v14 = call %IO* @IO_out_string(%IO* null, i8* %v13)
%v15 = alloca %IO*
store %IO* %v14, %IO** %v15
;xxDispatch de:out_int
;xxIdExpr
;Dispatch arg load...
%v16 = load i32* %v1
%v17 = call %IO* @IO_out_int(%IO* null, i32 %v16)
%v18 = alloca %IO*
store %IO* %v17, %IO** %v18
;xxDispatch de:out_string
%v19 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v19
;Dispatch arg load...
%v20 = load i8** %v19
%v21 = call %IO* @IO_out_string(%IO* null, i8* %v20)
%v22 = alloca %IO*
store %IO* %v21, %IO** %v22
;xxIFEX
;xxIdExpr
%v23 = load i1* %v2
br i1 %v23, label %v24, label %v25
v24:
;xxDispatch de:out_string
%v28 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.true to i8* ), i8** %v28
;Dispatch arg load...
%v29 = load i8** %v28
%v30 = call %IO* @IO_out_string(%IO* null, i8* %v29)
%v31 = alloca %IO*
store %IO* %v30, %IO** %v31
br label %v26
v25:
;xxDispatch de:out_string
%v32 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.false to i8* ), i8** %v32
;Dispatch arg load...
%v33 = load i8** %v32
%v34 = call %IO* @IO_out_string(%IO* null, i8* %v33)
%v35 = alloca %IO*
store %IO* %v34, %IO** %v35
br label %v26
v26:
%v27 = phi %IO** [%v31, %v24],[%v35, %v25]
ret i32 0
}
