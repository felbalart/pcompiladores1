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
@.String.I39mSPACEaSPACE = constant [7 x i8] c"I'm a \00"
@.String.Marvel = constant [7 x i8] c"Marvel\00"
@.String.DC = constant [3 x i8] c"DC\00"
@.String.SLASHENESinceSPACEyearSPACE = constant [13 x i8] c"\0ASince year \00"
define i32 @main() {
;xxBloq
;xxDispatch
%v0 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.I39mSPACEaSPACE to i8* ), i8** %v0
%v1 = load i8** %v0
%v2 = call %IO* @IO_out_string(%IO* null, i8* %v1)
;xxDispatch
;xxIFEX
;xxBOOL
%v3 = alloca i1
store i1 true, i1* %v3
%v4 = load i1* %v3
br i1 %v4, label %v5, label %v6
v5:
%v9 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.Marvel to i8* ), i8** %v9
br label %v7
v6:
%v10 = alloca i8*
store i8* bitcast ( [3 x i8]* @.String.DC to i8* ), i8** %v10
br label %v7
v7:
%v8 = phi i8** [%v9, %v5],[%v10, %v6]
%v11 = load i8** %v8
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
;xxDispatch
%v13 = alloca i8*
store i8* bitcast ( [13 x i8]* @.String.SLASHENESinceSPACEyearSPACE to i8* ), i8** %v13
%v14 = load i8** %v13
%v15 = call %IO* @IO_out_string(%IO* null, i8* %v14)
;xxDispatch
;xxIFEX
;xxBOOL
%v16 = alloca i1
store i1 false, i1* %v16
%v17 = load i1* %v16
br i1 %v17, label %v18, label %v19
v18:
;xxInt
%v22 = alloca i32
;xxStoreamos un int con el valor: 1978
store i32 1978, i32* %v22
br label %v20
v19:
;xxInt
%v23 = alloca i32
;xxStoreamos un int con el valor: 3915
store i32 3915, i32* %v23
br label %v20
v20:
%v21 = phi i32* [%v22, %v18],[%v23, %v19]
%v24 = load i32* %v21
%v25 = call %IO* @IO_out_int(%IO* null, i32 %v24)
ret i32 0
}
