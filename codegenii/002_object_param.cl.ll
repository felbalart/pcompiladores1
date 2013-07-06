%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %Brocoli}
@TypeString.Program = constant [8 x i8] c"Program\00"
%Brocoli = type { i8*}
@TypeString.Brocoli = constant [8 x i8] c"Brocoli\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.WhatSPACEaSPACEterribleSPACEnightSPACEtoSPACEbeSPACEcursed33SLASHENE = constant [37 x i8] c"What a terrible night to be cursed!\0A\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %Brocoli
;xxFIELDS OFF
;xxDispatch de:print
;xxCalee type vale--%Brocoli
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Brocoli_print
%v1 = alloca %IO
;Dispatch arg load...
%v2 = load %IO* %v1
;Call-getType vale->null
;EJA puse al %v3 con %IO
%v3 = tail call %IO @Brocoli_print(%Brocoli*   %v0,%IO %v2)
%v4 = alloca %IO
store %IO %v3, %IO* %v4
ret i32 0
}
;xxMethod def!
define %IO @Brocoli_print( %Brocoli* %self,%IO %v5) {
%v6 = alloca %IO
store %IO %v5, %IO* %v6;clase Brocoli no se encuentra en hash de pndg_fields!;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v7 = alloca i8*
store i8* bitcast ( [37 x i8]* @.String.WhatSPACEaSPACEterribleSPACEnightSPACEtoSPACEbeSPACEcursed33SLASHENE to i8* ), i8** %v7
;Dispatch arg load...
%v8 = load i8** %v7
;Call-getType vale->null
;EJA puse al %v9 con %IO
%v9 = tail call %IO @IO_out_string(%IO*   %v6,i8* %v8)
%v10 = alloca %IO
store %IO %v9, %IO* %v10
%v11 = load %IO* %v10
ret %IO %v11
}
