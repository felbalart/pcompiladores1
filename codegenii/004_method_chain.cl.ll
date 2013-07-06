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
declare i8* @malloc(i64)@.String.SabiasSPACEqueSPACEpuedesSPACEencadenarSPACEmasSPACEdeSPACE = constant [36 x i8] c"Sabias que puedes encadenar mas de \00"
@.String.SPACEllamadasSPACEaSPACElasSPACEfuncionesSLASHENE = constant [27 x i8] c" llamadas a las funciones\0A\00"
@.String.out95stringSPACEySPACEout95intSPACEdeSPACElaSPACEclaseSPACEIOSLASHENE = constant [37 x i8] c"out_string y out_int de la clase IO\0A\00"
@.String.yaSPACEqueSPACElasSPACE = constant [12 x i8] c"ya que las \00"
@.String.SPACEdevuelvenSPACEelSPACEobjetoSPACEsobreSPACEelSPACEcualSPACEseSPACEllamaron63 = constant [48 x i8] c" devuelven el objeto sobre el cual se llamaron?\00"
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_int
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v1 = alloca i8*
store i8* bitcast ( [36 x i8]* @.String.SabiasSPACEqueSPACEpuedesSPACEencadenarSPACEmasSPACEdeSPACE to i8* ), i8** %v1
;Dispatch arg load...
%v2 = load i8** %v1
;Call-getType vale->null
;EJA puse al %v3 con %IO
%v3 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v2)
%v4 = alloca %IO
store %IO %v3, %IO* %v4
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxInt
%v5 = alloca i32
;xxStoreamos un int con el valor: 1500
store i32 1500, i32* %v5
;Dispatch arg load...
%v6 = load i32* %v5
;Call-getType vale->null
;EJA puse al %v7 con %IO
%v7 = tail call %IO @IO_out_int(%IO*   %v4,i32 %v6)
%v8 = alloca %IO
store %IO %v7, %IO* %v8
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v9 = alloca i8*
store i8* bitcast ( [27 x i8]* @.String.SPACEllamadasSPACEaSPACElasSPACEfuncionesSLASHENE to i8* ), i8** %v9
;Dispatch arg load...
%v10 = load i8** %v9
;Call-getType vale->null
;EJA puse al %v11 con %IO
%v11 = tail call %IO @IO_out_string(%IO*   %v8,i8* %v10)
%v12 = alloca %IO
store %IO %v11, %IO* %v12
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v13 = alloca i8*
store i8* bitcast ( [37 x i8]* @.String.out95stringSPACEySPACEout95intSPACEdeSPACElaSPACEclaseSPACEIOSLASHENE to i8* ), i8** %v13
;Dispatch arg load...
%v14 = load i8** %v13
;Call-getType vale->null
;EJA puse al %v15 con %IO
%v15 = tail call %IO @IO_out_string(%IO*   %v12,i8* %v14)
%v16 = alloca %IO
store %IO %v15, %IO* %v16
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v17 = alloca i8*
store i8* bitcast ( [12 x i8]* @.String.yaSPACEqueSPACElasSPACE to i8* ), i8** %v17
;Dispatch arg load...
%v18 = load i8** %v17
;Call-getType vale->null
;EJA puse al %v19 con %IO
%v19 = tail call %IO @IO_out_string(%IO*   %v16,i8* %v18)
%v20 = alloca %IO
store %IO %v19, %IO* %v20
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_int
;xxInt
%v21 = alloca i32
;xxStoreamos un int con el valor: 2
store i32 2, i32* %v21
;Dispatch arg load...
%v22 = load i32* %v21
;Call-getType vale->null
;EJA puse al %v23 con %IO
%v23 = tail call %IO @IO_out_int(%IO*   %v20,i32 %v22)
%v24 = alloca %IO
store %IO %v23, %IO* %v24
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v25 = alloca i8*
store i8* bitcast ( [48 x i8]* @.String.SPACEdevuelvenSPACEelSPACEobjetoSPACEsobreSPACEelSPACEcualSPACEseSPACEllamaron63 to i8* ), i8** %v25
;Dispatch arg load...
%v26 = load i8** %v25
;Call-getType vale->null
;EJA puse al %v27 con %IO
%v27 = tail call %IO @IO_out_string(%IO*   %v24,i8* %v26)
%v28 = alloca %IO
store %IO %v27, %IO* %v28
ret i32 0
}
