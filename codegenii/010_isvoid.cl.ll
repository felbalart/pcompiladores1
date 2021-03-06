%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO, i8*}
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
declare i8* @malloc(i64)@.String.true = constant [5 x i8] c"true\00"
@.String.false = constant [6 x i8] c"false\00"
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %Program
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i8*
;xxFIELDS OFF
;xxBloq
;xxDispatch de:printBoolean
;xxIdExpr
;ISVOID CALLED!
;var_type Contiene a %v1, y el valor es %Program*
%v3 = alloca i1
store i1 1 , i1* %v3
;Dispatch arg load...
%v4 = load i1* %v3
;Call-getType vale->null
;EJA puse al %v5 con %IO
%v5 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v4)
%v6 = alloca %IO
store %IO %v5, %IO* %v6
;xxDispatch de:printBoolean
;xxInt
%v7 = alloca i32
;xxStoreamos un int con el valor: 138
store i32 138, i32* %v7
;ISVOID CALLED!
;var_type Contiene a %v7, y el valor es i32*
%v8 = alloca i1
store i1 0 , i1* %v8
;Dispatch arg load...
%v9 = load i1* %v8
;Call-getType vale->null
;EJA puse al %v10 con %IO
%v10 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v9)
%v11 = alloca %IO
store %IO %v10, %IO* %v11
;xxDispatch de:printBoolean
;xxIdExpr
;ISVOID CALLED!
;var_type Contiene a %v2, y el valor es i8**
%v12 = alloca i1
store i1 0 , i1* %v12
;Dispatch arg load...
%v13 = load i1* %v12
;Call-getType vale->null
;EJA puse al %v14 con %IO
%v14 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v13)
%v15 = alloca %IO
store %IO %v14, %IO* %v15
%v16 = alloca %IO
;xxIdExpr
;xxBOOL
%v17 = alloca i1
store i1 false, i1* %v17
;xxBloq
;xxDispatch de:printBoolean
;xxIdExpr
;ISVOID CALLED!
;var_type Contiene a %v17, y el valor es i1*
%v18 = alloca i1
store i1 0 , i1* %v18
;Dispatch arg load...
%v19 = load i1* %v18
;Call-getType vale->null
;EJA puse al %v20 con %IO
%v20 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v19)
%v21 = alloca %IO
store %IO %v20, %IO* %v21
;xxDispatch de:printBoolean
;xxIdExpr
;ISVOID CALLED!
;var_type Contiene a %v1, y el valor es %Program*
%v22 = alloca i1
store i1 1 , i1* %v22
;Dispatch arg load...
%v23 = load i1* %v22
;Call-getType vale->null
;EJA puse al %v24 con %IO
%v24 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v23)
%v25 = alloca %IO
store %IO %v24, %IO* %v25
;xxDispatch de:printBoolean
;xxIdExpr
;ISVOID CALLED!
;var_type Contiene a %v16, y el valor es %IO*
%v26 = alloca i1
store i1 1 , i1* %v26
;Dispatch arg load...
%v27 = load i1* %v26
;Call-getType vale->null
;EJA puse al %v28 con %IO
%v28 = tail call %IO @Program_printBoolean(%Program*   %self,i1 %v27)
%v29 = alloca %IO
store %IO %v28, %IO* %v29
ret i32 0
}
;xxMethod def!
define %IO @Program_printBoolean( %Program* %self,i1 %v30) {
%v31 = alloca i1
store i1 %v30, i1* %v31;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %Program
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i8*
;xxFIELDS OFF
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxIFEX
;xxIdExpr
%v32 = load i1* %v31
br i1 %v32, label %v33, label %v34
v33:
%v37 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.true to i8* ), i8** %v37
br label %v35
v34:
%v38 = alloca i8*
store i8* bitcast ( [6 x i8]* @.String.false to i8* ), i8** %v38
br label %v35
v35:
%v36 = phi i8** [%v37, %v33],[%v38, %v34]
;Dispatch arg load...
%v39 = load i8** %v36
;Call-getType vale->null
;EJA puse al %v40 con %IO
%v40 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v39)
%v41 = alloca %IO
store %IO %v40, %IO* %v41
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v42 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v42
;Dispatch arg load...
%v43 = load i8** %v42
;Call-getType vale->null
;EJA puse al %v44 con %IO
%v44 = tail call %IO @IO_out_string(%IO*   %v41,i8* %v43)
%v45 = alloca %IO
store %IO %v44, %IO* %v45
%v46 = load %IO* %v45
ret %IO %v46
}
