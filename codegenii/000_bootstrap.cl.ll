%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO}
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
declare i8* @malloc(i64)@.String.VengoSPACEdeSPACEunSPACEnuevoSPACEIOSLASHENE = constant [22 x i8] c"Vengo de un nuevo IO\0A\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v1 = alloca i8*
store i8* bitcast ( [22 x i8]* @.String.VengoSPACEdeSPACEunSPACEnuevoSPACEIOSLASHENE to i8* ), i8** %v1
;Dispatch arg load...
%v2 = load i8** %v1
;Call-getType vale->null
;EJA puse al %v3 con %IO
%v3 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v2)
%v4 = alloca %IO
store %IO %v3, %IO* %v4
ret i32 0
}
