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
@.String.ImpossibleSPACEDream = constant [17 x i8] c"Impossible Dream\00"
@.String.AnotherSPACEoneSPACEbitesSPACEtheSPACEdust = constant [27 x i8] c"Another one bites the dust\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i1
;xxFIELDS OFF
;xxIFEX
;xxIdExpr
%v1 = load i1* %v0
br i1 %v1, label %v2, label %v3
v2:
;xxDispatch de:out_string
%v6 = alloca i8*
store i8* bitcast ( [17 x i8]* @.String.ImpossibleSPACEDream to i8* ), i8** %v6
;Dispatch arg load...
%v7 = load i8** %v6
%v8 = call %IO* @IO_out_string(%IO* null, i8* %v7)
%v9 = alloca %IO*
store %IO* %v8, %IO** %v9
br label %v4
v3:
;xxDispatch de:out_string
%v10 = alloca i8*
store i8* bitcast ( [27 x i8]* @.String.AnotherSPACEoneSPACEbitesSPACEtheSPACEdust to i8* ), i8** %v10
;Dispatch arg load...
%v11 = load i8** %v10
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
%v13 = alloca %IO*
store %IO* %v12, %IO** %v13
br label %v4
v4:
%v5 = phi %IO** [%v9, %v2],[%v13, %v3]
ret i32 0
}
