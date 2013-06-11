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
@.String.es45CL = constant [6 x i8] c"es-CL\00"
@.String.d959560 = constant [5 x i8] c"d__<\00"
@.String.624545b = constant [5 x i8] c">--b\00"
@.String.SLASHENElang58SPACE = constant [8 x i8] c"\0Alang: \00"
@.String.SLASHENEcountry58SPACE = constant [11 x i8] c"\0Acountry: \00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.es45CL to i8* ), i8** %v0
;xxFIELDS OFF
;xxBloq
;xxDispatch de:out_string
;xxDispatch de:concat
;xxCalee type vale--i8*
%v1 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.d959560 to i8* ), i8** %v1
;xxDispatch Callee def load...
%v2 = load i8** %v1
%v3 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.624545b to i8* ), i8** %v3
;Dispatch arg load...
%v4 = load i8** %v3
%v5 = call i8* @String_concat(i8* %v2,i8* %v4)
%v6 = alloca i8*
store i8* %v5, i8** %v6
;Dispatch arg load...
%v7 = load i8** %v6
%v8 = call %IO* @IO_out_string(%IO* null, i8* %v7)
%v9 = alloca %IO*
store %IO* %v8, %IO** %v9
;xxDispatch de:out_string
%v10 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.SLASHENElang58SPACE to i8* ), i8** %v10
;Dispatch arg load...
%v11 = load i8** %v10
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
%v13 = alloca %IO*
store %IO* %v12, %IO** %v13
;xxDispatch de:out_string
;xxIdExpr
;Dispatch arg load...
%v14 = load i8** %v0
%v15 = call %IO* @IO_out_string(%IO* null, i8* %v14)
%v16 = alloca %IO*
store %IO* %v15, %IO** %v16
;xxDispatch de:out_string
%v17 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.SLASHENEcountry58SPACE to i8* ), i8** %v17
;Dispatch arg load...
%v18 = load i8** %v17
%v19 = call %IO* @IO_out_string(%IO* null, i8* %v18)
%v20 = alloca %IO*
store %IO* %v19, %IO** %v20
;xxDispatch de:out_string
;xxDispatch de:substr
;xxCalee type vale--i8*
;xxIdExpr
;xxDispatch Callee def load...
%v21 = load i8** %v0
;xxInt
%v22 = alloca i32
;xxStoreamos un int con el valor: 3
store i32 3, i32* %v22
;Dispatch arg load...
%v23 = load i32* %v22
;xxInt
%v24 = alloca i32
;xxStoreamos un int con el valor: 2
store i32 2, i32* %v24
;Dispatch arg load...
%v25 = load i32* %v24
%v26 = call i8* @String_substr(i8* %v21,i32 %v23,i32 %v25)
%v27 = alloca i8*
store i8* %v26, i8** %v27
;Dispatch arg load...
%v28 = load i8** %v27
%v29 = call %IO* @IO_out_string(%IO* null, i8* %v28)
%v30 = alloca %IO*
store %IO* %v29, %IO** %v30
ret i32 0
}
