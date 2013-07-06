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
declare i8* @malloc(i64);xxVariable (field)
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
;xxDispatch de:type_name
;xxCalee type vale--%Program
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Program_type_name
;Call-getType vale->null
;EJA puse al %v1 con i8*
%v1 = tail call i8* @Object_type_name(%Program*   %self)
%v2 = alloca i8*
store i8* %v1, i8** %v2
;Dispatch arg load...
%v3 = load i8** %v2
;Call-getType vale->null
;EJA puse al %v4 con %IO
%v4 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v3)
%v5 = alloca %IO
store %IO %v4, %IO* %v5
ret i32 0
}
