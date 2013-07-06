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
declare i8* @malloc(i64)@.String.Hola44SPACEmundo = constant [12 x i8] c"Hola, mundo\00"
@.String.58SPACE = constant [3 x i8] c": \00"
@.String.true = constant [5 x i8] c"true\00"
@.String.false = constant [6 x i8] c"false\00"
@.String.91Unprintable93 = constant [14 x i8] c"[Unprintable]\00"
@.String.TryingSPACEtoSPACEprintSPACEaSPACEIO63SPACEWTF63SPACEYouSPACEwantSPACEtoSPACEcreateSPACEaSPACEsingularity63 = constant [61 x i8] c"Trying to print a IO? WTF? You want to create a singularity?\00"
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxBloq
;xxDispatch de:print
%v1 = alloca i8*
store i8* bitcast ( [12 x i8]* @.String.Hola44SPACEmundo to i8* ), i8** %v1
;Dispatch arg load...
%v2 = load i8** %v1
;Call-getType vale->null
;EJA puse al %v3 con %IO
%v3 = tail call %IO @Program_print(%Program*   %self,i8* %v2)
%v4 = alloca %IO
store %IO %v3, %IO* %v4
;xxDispatch de:print
;xxInt
%v5 = alloca i32
;xxStoreamos un int con el valor: 1145
store i32 1145, i32* %v5
;Dispatch arg load...
%v6 = load i32* %v5
;Call-getType vale->null
;EJA puse al %v7 con %IO
%v7 = tail call %IO @Program_print(%Program*   %self,i32 %v6)
%v8 = alloca %IO
store %IO %v7, %IO* %v8
;xxDispatch de:print
;xxBOOL
%v9 = alloca i1
store i1 true, i1* %v9
;Dispatch arg load...
%v10 = load i1* %v9
;Call-getType vale->null
;EJA puse al %v11 con %IO
%v11 = tail call %IO @Program_print(%Program*   %self,i1 %v10)
%v12 = alloca %IO
store %IO %v11, %IO* %v12
;xxDispatch de:print
;xxIdExpr
;Dispatch arg load...
%v13 = load %Program* %self
;Call-getType vale->null
;EJA puse al %v14 con %IO
%v14 = tail call %IO @Program_print(%Program*   %self,%Program %v13)
%v15 = alloca %IO
store %IO %v14, %IO* %v15
;xxDispatch de:print
;xxIdExpr
;Dispatch arg load...
%v16 = load %IO* %v0
;Call-getType vale->null
;EJA puse al %v17 con %IO
%v17 = tail call %IO @Program_print(%Program*   %self,%IO %v16)
%v18 = alloca %IO
store %IO %v17, %IO* %v18
;xxDispatch de:print
%v19 = alloca %Object
;Dispatch arg load...
%v20 = load %Object* %v19
;Call-getType vale->null
;EJA puse al %v21 con %IO
%v21 = tail call %IO @Program_print(%Program*   %self,%Object %v20)
%v22 = alloca %IO
store %IO %v21, %IO* %v22
;xxDispatch de:print
%v23 = alloca i32
;Dispatch arg load...
%v24 = load i32* %v23
;Call-getType vale->null
;EJA puse al %v25 con %IO
%v25 = tail call %IO @Program_print(%Program*   %self,i32 %v24)
%v26 = alloca %IO
store %IO %v25, %IO* %v26
ret i32 0
}
;xxMethod def!
define %IO @Program_print( %Program* %self,%Object %v27) {
%v28 = alloca %Object
store %Object %v27, %Object* %v28;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxBloq
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:type_name
;xxCalee type vale--%Object
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Object_type_name
;Call-getType vale->null
;EJA puse al %v29 con i8*
%v29 = tail call i8* @Object_type_name(%Object*   %v28)
%v30 = alloca i8*
store i8* %v29, i8** %v30
;Dispatch arg load...
%v31 = load i8** %v30
;Call-getType vale->null
;EJA puse al %v32 con %IO
%v32 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v31)
%v33 = alloca %IO
store %IO %v32, %IO* %v33
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v34 = alloca i8*
store i8* bitcast ( [3 x i8]* @.String.58SPACE to i8* ), i8** %v34
;Dispatch arg load...
%v35 = load i8** %v34
;Call-getType vale->null
;EJA puse al %v36 con %IO
%v36 = tail call %IO @IO_out_string(%IO*   %v33,i8* %v35)
%v37 = alloca %IO
store %IO %v36, %IO* %v37
instanceof [IO]
;xxIdExpr
case Int i
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxIdExpr
;Dispatch arg load...
