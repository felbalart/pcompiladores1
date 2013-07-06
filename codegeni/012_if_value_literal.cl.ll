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
;xxMethod def!
define i32 @main() {
;xxBloq
;xxDispatch de:out_string
%v0 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.I39mSPACEaSPACE to i8* ), i8** %v0
;Dispatch arg load...
%v1 = load i8** %v0
%v2 = call %IO* @IO_out_string(%IO* null, i8* %v1)
%v3 = alloca %IO*
store %IO* %v2, %IO** %v3
;xxDispatch de:out_string
;xxIFEX
;xxBOOL
%v4 = alloca i1
store i1 true, i1* %v4
%v5 = load i1* %v4
br i1 %v5, label %v6, label %v7
v6:
%v10 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.Marvel to i8* ), i8** %v10
br label %v8
v7:
%v11 = alloca i8*
store i8* bitcast ( [3 x i8]* @.String.DC to i8* ), i8** %v11
br label %v8
v8:
%v9 = phi i8** [%v10, %v6],[%v11, %v7]
;Dispatch arg load...
%v12 = load i8** %v9
%v13 = call %IO* @IO_out_string(%IO* null, i8* %v12)
%v14 = alloca %IO*
store %IO* %v13, %IO** %v14
;xxDispatch de:out_string
%v15 = alloca i8*
store i8* bitcast ( [13 x i8]* @.String.SLASHENESinceSPACEyearSPACE to i8* ), i8** %v15
;Dispatch arg load...
%v16 = load i8** %v15
%v17 = call %IO* @IO_out_string(%IO* null, i8* %v16)
%v18 = alloca %IO*
store %IO* %v17, %IO** %v18
;xxDispatch de:out_int
;xxIFEX
;xxBOOL
%v19 = alloca i1
store i1 false, i1* %v19
%v20 = load i1* %v19
br i1 %v20, label %v21, label %v22
v21:
;xxInt
%v25 = alloca i32
;xxStoreamos un int con el valor: 1978
store i32 1978, i32* %v25
br label %v23
v22:
;xxInt
%v26 = alloca i32
;xxStoreamos un int con el valor: 3915
store i32 3915, i32* %v26
br label %v23
v23:
%v24 = phi i32* [%v25, %v21],[%v26, %v22]
;Dispatch arg load...
%v27 = load i32* %v24
%v28 = call %IO* @IO_out_int(%IO* null, i32 %v27)
%v29 = alloca %IO*
store %IO* %v28, %IO** %v29
ret i32 0
}
