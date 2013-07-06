%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO, i32}
@TypeString.Program = constant [8 x i8] c"Program\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.LaSPACEsuperficieSPACEesSPACE = constant [18 x i8] c"La superficie es \00"
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca i32
;xxFIELDS OFF
;xxBloq
;xxAssignExpr!! del id surface
;xxInt
%v2 = alloca i32
;xxStoreamos un int con el valor: 115000
store i32 115000, i32* %v2
;xxYa printeamos el valor. LA WEA D ESTE VAL esta en v2
%v3 = load i32* %v2
store i32 %v3, i32* %v1
;xxNos vamos del Assign!, quedo en el punt v1
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v4 = alloca i8*
store i8* bitcast ( [18 x i8]* @.String.LaSPACEsuperficieSPACEesSPACE to i8* ), i8** %v4
;Dispatch arg load...
%v5 = load i8** %v4
;Call-getType vale->null
;EJA puse al %v6 con %IO
%v6 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v5)
%v7 = alloca %IO
store %IO %v6, %IO* %v7
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxIdExpr
;Dispatch arg load...
%v8 = load i32* %v1
;Call-getType vale->null
;EJA puse al %v9 con %IO
%v9 = tail call %IO @IO_out_int(%IO*   %v0,i32 %v8)
%v10 = alloca %IO
store %IO %v9, %IO* %v10
ret i32 0
}
