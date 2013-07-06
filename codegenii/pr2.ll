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
;xxDispatch de:freefall
;xxInt
%v1 = alloca i32
;xxStoreamos un int con el valor: 541
store i32 541, i32* %v1
;Dispatch arg load...
%v2 = load i32* %v1
;Call-getType vale->null
;EJA puse al %v3 con %IO
%v3 = tail call %IO @Program_freefall(%Program*   %self,i32 %v2)
%v4 = alloca %IO
store %IO %v3, %IO* %v4
ret i32 0
}
;xxMethod def!
define %IO @Program_freefall( %Program* %self,i32 %v5) {
%v6 = alloca i32
store i32 %v5, i32* %v6;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxIdExpr
;Dispatch arg load...
%v7 = load i32* %v6
;Call-getType vale->null
;EJA puse al %v8 con %IO
%v8 = tail call %IO @IO_out_int(%IO*   %v0,i32 %v7)
%v9 = alloca %IO
store %IO %v8, %IO* %v9
%v10 = load %IO* %v9
ret %IO %v10
}
