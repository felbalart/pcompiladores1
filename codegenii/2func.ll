%Object = type { i8* }
%IO = type { i8* }
%Main = type { i8* }
%Brocoli = type { }
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
@.String.WhatSPACEaSPACEterribleSPACEnightSPACEtoSPACEbeSPACEcursed33SLASHENE = constant [37 x i8] c"What a terrible night to be cursed!\0A\00"
;xxVariable (field)
;xxMethod def!



define i32 @main() {
%v0 = alloca %Brocoli
;xxFIELDS OFF
;xxDispatch de:print
;xxCalee type vale--%Brocoli
;xxIdExpr
;xxDispatch Callee def load...
%v1 = alloca %IO
;Dispatch arg load...
%v2 = load %IO* %v1
;Call-getType vale->null
;EJA puse al %v3 con %Object
%v3 = tail call %IO @Brocoli_print(%Brocoli* %v0,%IO %v2)
ret i32 0
}

define %IO @Brocoli_print(%Brocoli* %asd,%IO %iostream) {
%v5 = alloca %IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
%v6 = alloca i8*
store i8* bitcast ( [37 x i8]* @.String.WhatSPACEaSPACEterribleSPACEnightSPACEtoSPACEbeSPACEcursed33SLASHENE to i8* ), i8** %v6
;Dispatch arg load...
%v7 = load i8** %v6
;Call-getType vale->null
;EJA puse al %v8 con %IO
%v8 = call %IO @IO_out_string(%IO* %v5,i8* %v7)
%v9 = alloca %IO
store %IO %v8, %IO* %v9
%v10 = load %IO* %v9
ret %IO %v10
}
