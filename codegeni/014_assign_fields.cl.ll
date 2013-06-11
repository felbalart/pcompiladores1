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
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i8*
%v0 = null
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca i32
%v1 = null
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i1
%v2 = null
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
%v9 = load i8** %v0
%v10 = call %IO* @IO_out_string(i8* %v9)
;xxDispatch de:out_string
%v11 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v11
%v12 = load i8** %v11
%v13 = call %IO* @IO_out_string(i8* %v12)
;xxDispatch de:out_int
;xxIdExpr
%v14 = load i32* %v1
%v15 = call %IO* @IO_out_int(i32 %v14)
;xxDispatch de:out_string
%v16 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v16
%v17 = load i8** %v16
%v18 = call %IO* @IO_out_string(i8* %v17)
;xxIFEX
;xxIdExpr
%v19 = load i1* %v2
br i1 %v19, label %v20, label %v21
v20:
;xxDispatch de:out_string
%v24 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.true to i8* ), i8** %v24
%v25 = load i8** %v24
%v26 = call %IO* @IO_out_string(i8* %v25)
br label %v22
v21:
;xxDispatch de:out_string
%v27 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.false to i8* ), i8** %v27
%v28 = load i8** %v27
%v29 = call %IO* @IO_out_string(i8* %v28)
br label %v22
v22:
%v23 = phi %IO* [%v26, %v20],[%v29, %v21]
ret i32 0
}
