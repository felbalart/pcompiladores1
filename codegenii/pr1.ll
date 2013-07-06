%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Main = type { i8*, i8*, %IO}
@TypeString.Main = constant [5 x i8] c"Main\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.wena = constant [5 x i8] c"wena\00"
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define %IO @Main_open( %Main* %self,i32 %net,i8* %remote) {
%v2 = alloca i32
%v3 = alloca i8*
;xxFIELDS ON
%v0 = alloca i8*
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %IO
;xxFIELDS OFF
;xxBloq
;xxAssignExpr!! del id endpoint
;xxIdExpr
;xxYa printeamos el valor. LA WEA D ESTE VAL esta en v3
%v4 = load i8** %v3
store i8* %v4, i8** %v0
;xxNos vamos del Assign!, quedo en el punt v0
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxIdExpr
;Dispatch arg load...
%v5 = load i8** %v3
;Call-getType vale->null
;EJA puse al %v6 con %IO
%v6 = tail call %IO @IO_out_string(%IO*   %v1,i8* %v5)
%v7 = alloca %IO
store %IO %v6, %IO* %v7
%v8 = load %IO* %v7
ret %IO %v8
}
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i8*
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %IO
;xxFIELDS OFF
;xxDispatch de:open
;xxInt
%v9 = alloca i32
;xxStoreamos un int con el valor: 2
store i32 2, i32* %v9
;Dispatch arg load...
%v10 = load i32* %v9
%v11 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.wena to i8* ), i8** %v11
;Dispatch arg load...
%v12 = load i8** %v11
;Call-getType vale->null
;EJA puse al %v13 con %IO
%v13 = tail call %IO @Main_open(i32 %v10,i8* %v12)
%v14 = alloca %IO
store %IO %v13, %IO* %v14
ret i32 0
}
