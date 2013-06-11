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
@.String.TheSPACEtruthSPACEisSPACE = constant [14 x i8] c"The truth is \00"
@.String.True = constant [5 x i8] c"True\00"
@.String.False = constant [6 x i8] c"False\00"
;xxVariable (field)
define i32 @main() {
;xxFIELDS ON
;xxBOOL
%v0 = alloca i1
store i1 true, i1* %v0
;xxFIELDS OFF
;xxBloq
;xxDispatch
%v1 = alloca i8*
store i8* bitcast ( [14 x i8]* @.String.TheSPACEtruthSPACEisSPACE to i8* ), i8** %v1
%v2 = load i8** %v1
%v3 = call %IO* @IO_out_string(%IO* null, i8* %v2)
;xxIFEX
;xxIdExpr
%v4 = load i1* %v0
br i1 %v4, label %v5, label %v6
v5:
;xxDispatch
%v9 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.True to i8* ), i8** %v9
%v10 = load i8** %v9
%v11 = call %IO* @IO_out_string(%IO* null, i8* %v10)
br label %v7
v6:
;xxDispatch
%v12 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.True to i8* ), i8** %v12
%v13 = load i8** %v12
%v14 = call %IO* @IO_out_string(%IO* null, i8* %v13)
br label %v7
v7:
%v8 = phi %IO* [%v11, %v5],[%v14, %v6]
ret i32 0
}
