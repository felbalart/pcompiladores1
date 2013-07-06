%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO, %Expr}
@TypeString.Program = constant [8 x i8] c"Program\00"
%Expr = type { i8*}
@TypeString.Expr = constant [5 x i8] c"Expr\00"
%BinaryOp = type { i8*, %Expr, %Expr}
@TypeString.BinaryOp = constant [9 x i8] c"BinaryOp\00"
%SumOp = type { i8*, %Object}
@TypeString.SumOp = constant [6 x i8] c"SumOp\00"
%SubOp = type { i8*, %Object}
@TypeString.SubOp = constant [6 x i8] c"SubOp\00"
%MultOp = type { i8*, %Object}
@TypeString.MultOp = constant [7 x i8] c"MultOp\00"
%NegOp = type { i8*, %Expr}
@TypeString.NegOp = constant [6 x i8] c"NegOp\00"
%IntExpr = type { i8*, i32}
@TypeString.IntExpr = constant [8 x i8] c"IntExpr\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.SPACE61SPACE = constant [4 x i8] c" = \00"
@.String.SPACE45SPACE = constant [4 x i8] c" - \00"
@.String.40 = constant [2 x i8] c"(\00"
@.String.SPACE43SPACE = constant [4 x i8] c" + \00"
@.String.SPACE42SPACE = constant [4 x i8] c" * \00"
@.String.SPACE40undefined41SPACE = constant [14 x i8] c" (undefined) \00"
@.String.41 = constant [2 x i8] c")\00"
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %Expr
;xxFIELDS OFF
;xxBloq
;xxAssignExpr!! del id expression
;xxDispatch de:mult
;xxCalee type vale--%SubOp
;xxDispatch de:sub
;xxCalee type vale--%NegOp
;xxDispatch de:neg
;xxCalee type vale--%MultOp
;xxDispatch de:mult
;xxCalee type vale--%SumOp
;xxDispatch de:add
;xxCalee type vale--%IntExpr
;xxDispatch de:int
;xxInt
%v2 = alloca i32
;xxStoreamos un int con el valor: 15
store i32 15, i32* %v2
;Dispatch arg load...
%v3 = load i32* %v2
;Call-getType vale->null
;EJA puse al %v4 con %IntExpr
%v4 = tail call %IntExpr @Program_int(%Program*   %self,i32 %v3)
%v5 = alloca %IntExpr
store %IntExpr %v4, %IntExpr* %v5
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IntExpr_add
;xxInt
%v6 = alloca i32
;xxStoreamos un int con el valor: 30
store i32 30, i32* %v6
;Dispatch arg load...
%v7 = load i32* %v6
;Call-getType vale->null
;EJA puse al %v8 con null
