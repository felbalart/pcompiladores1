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
@.String.esteSPACEesSPACEunSPACEbloqueSPACEdeSPACE = constant [22 x i8] c"este es un bloque de \00"
@.String.muchosSPACEstrings = constant [15 x i8] c"muchos strings\00"
@.String.palta = constant [6 x i8] c"palta\00"
@.String.queso = constant [6 x i8] c"queso\00"
;xxMethod def!
define i32 @main() {
;xxDispatch de:out_string
;xxBloq
;xxDispatch de:out_string
%v0 = alloca i8*
store i8* bitcast ( [22 x i8]* @.String.esteSPACEesSPACEunSPACEbloqueSPACEdeSPACE to i8* ), i8** %v0
;Dispatch arg load...
%v1 = load i8** %v0
%v2 = call %IO* @IO_out_string(%IO* null, i8* %v1)
%v3 = alloca %IO*
store %IO* %v2, %IO** %v3
;xxInt
%v4 = alloca i32
;xxStoreamos un int con el valor: 200
store i32 200, i32* %v4
%v5 = alloca i8*
store i8* bitcast ( [15 x i8]* @.String.muchosSPACEstrings to i8* ), i8** %v5
;xxInt
%v6 = alloca i32
;xxStoreamos un int con el valor: 3
store i32 3, i32* %v6
;xxInt
%v7 = alloca i32
;xxStoreamos un int con el valor: 4
store i32 4, i32* %v7
%v9 = load i32* %v6
%v10 = load i32* %v7
%v8 = icmp slt i32 %v9, %v10
%v11 = alloca i1
store i1 %v8, i1* %v11
;xxIFEX
;xxBOOL
%v12 = alloca i1
store i1 false, i1* %v12
%v13 = load i1* %v12
br i1 %v13, label %v14, label %v15
v14:
%v18 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.palta to i8* ), i8** %v18
br label %v16
v15:
%v19 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.queso to i8* ), i8** %v19
br label %v16
v16:
%v17 = phi i8** [%v18, %v14],[%v19, %v15]
;Dispatch arg load...
%v20 = load i8** %NDE
%v21 = call %IO* @IO_out_string(%IO* null, i8* %v20)
%v22 = alloca %IO*
store %IO* %v21, %IO** %v22
ret i32 0
}
