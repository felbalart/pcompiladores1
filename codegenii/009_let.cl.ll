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
declare i8* @malloc(i64)@.String.SLASHENE = constant [2 x i8] c"\0A\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxInt
%v1 = alloca i32
;xxStoreamos un int con el valor: 0
store i32 0, i32* %v1
;xxWhileeeeeee
br label %v2
v2: ;--While eval branch
;xxIdExpr
;xxInt
%v5 = alloca i32
;xxStoreamos un int con el valor: 20
store i32 20, i32* %v5
%v7 = load i32* %v1
%v8 = load i32* %v5
%v6 = icmp slt i32 %v7, %v8
%v9 = alloca i1
store i1 %v6, i1* %v9
%v10 = load i1* %v9
br i1 %v10, label %v4, label %v3
v4: ;--While loop run branch
;xxBloq
;xxDispatch de:freefall
;xxIdExpr
;Dispatch arg load...
%v11 = load i32* %v1
;Call-getType vale->null
;EJA puse al %v12 con %IO
%v12 = tail call %IO @Program_freefall(%Program*   %self,i32 %v11)
%v13 = alloca %IO
store %IO %v12, %IO* %v13
;xxAssignExpr!! del id i
;xxIdExpr
;xxInt
%v14 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v14
%v16 = load i32* %v1
%v17 = load i32* %v14
%v15 = add nsw i32 %v16, %v17
%v18 = alloca i32
store i32 %v15, i32* %v18
;xxYa printeamos el valor. LA WEA D ESTE VAL esta en v18
%v19 = load i32* %v18
store i32 %v19, i32* %v1
;xxNos vamos del Assign!, quedo en el punt v1
br label %v2
v3: ;--After-While branch
ret i32 0
}
;xxMethod def!
define %IO @Program_freefall( %Program* %self,i32 %v20) {
%v21 = alloca i32
store i32 %v20, i32* %v21;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxInt
%v22 = alloca i32
;xxStoreamos un int con el valor: 98
store i32 98, i32* %v22
;xxIdExpr
;xxIdExpr
%v24 = load i32* %v22
%v25 = load i32* %v21
%v23 = mul nsw i32 %v24, %v25
%v26 = alloca i32
store i32 %v23, i32* %v26
;xxIdExpr
;xxIdExpr
%v28 = load i32* %v26
%v29 = load i32* %v21
%v27 = mul nsw i32 %v28, %v29
%v30 = alloca i32
store i32 %v27, i32* %v30
;xxInt
%v31 = alloca i32
;xxStoreamos un int con el valor: 2
store i32 2, i32* %v31
%v33 = load i32* %v30
%v34 = load i32* %v31
%v32 = sdiv i32 %v33, %v34
%v35 = alloca i32
store i32 %v32, i32* %v35
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxIdExpr
;Dispatch arg load...
%v36 = load i32* %v35
;Call-getType vale->null
;EJA puse al %v37 con %IO
%v37 = tail call %IO @IO_out_int(%IO*   %v0,i32 %v36)
%v38 = alloca %IO
store %IO %v37, %IO* %v38
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v39 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v39
;Dispatch arg load...
%v40 = load i8** %v39
;Call-getType vale->null
;EJA puse al %v41 con %IO
%v41 = tail call %IO @IO_out_string(%IO*   %v38,i8* %v40)
%v42 = alloca %IO
store %IO %v41, %IO* %v42
%v43 = load %IO* %v42
ret %IO %v43
}
