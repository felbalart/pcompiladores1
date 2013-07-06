%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO}
@TypeString.Program = constant [8 x i8] c"Program\00"
%Network = type { i8*, i8*}
@TypeString.Network = constant [8 x i8] c"Network\00"
%Connection = type { i8*, i8*, i8*}
@TypeString.Connection = constant [11 x i8] c"Connection\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.WorldTree = constant [10 x i8] c"WorldTree\00"
@.String.Archimonde = constant [11 x i8] c"Archimonde\00"
@.String.ConnectionSPACE91 = constant [13 x i8] c"Connection [\00"
@.String.93SPACE4562SPACE91 = constant [7 x i8] c"] -> [\00"
@.String.93SLASHENE = constant [3 x i8] c"]\0A\00"
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
;xxDispatch de:getDescription
;xxCalee type vale--%Connection
;xxDispatch de:createConnection
;xxCalee type vale--%Network
%v1 = alloca %Network
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Network_createConnection
%v2 = alloca i8*
store i8* bitcast ( [10 x i8]* @.String.WorldTree to i8* ), i8** %v2
;Dispatch arg load...
%v3 = load i8** %v2
;Call-getType vale->null
;EJA puse al %v4 con %Connection
%v4 = tail call %Connection @Network_createConnection(%Network*   %v1,i8* %v3)
%v5 = alloca %Connection
store %Connection %v4, %Connection* %v5
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Connection_getDescription
;Call-getType vale->null
;EJA puse al %v6 con i8*
%v6 = tail call i8* @Connection_getDescription(%Connection*   %v5)
%v7 = alloca i8*
store i8* %v6, i8** %v7
;Dispatch arg load...
%v8 = load i8** %v7
;Call-getType vale->null
;EJA puse al %v9 con %IO
%v9 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v8)
%v10 = alloca %IO
store %IO %v9, %IO* %v10
ret i32 0
}
;xxVariable (field)
;xxMethod def!
define i8* @Network_getHostname( %Network* %self) {
;xxFIELDS ON
%v11 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.Archimonde to i8* ), i8** %v11
;xxFIELDS OFF
;xxIdExpr
%v12 = load i8** %v11
ret i8* %v12
}
;xxMethod def!
define %Connection @Network_createConnection( %Network* %self,i8* %v13) {
%v14 = alloca i8*
store i8* %v13, i8** %v14;xxFIELDS ON
%v11 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.Archimonde to i8* ), i8** %v11
;xxFIELDS OFF
;xxDispatch de:open
;xxCalee type vale--%Connection
%v15 = alloca %Connection
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Connection_open
;xxIdExpr
;Dispatch arg load...
%v16 = load %Network* %self
;xxIdExpr
;Dispatch arg load...
%v17 = load i8** %v14
;Call-getType vale->null
;EJA puse al %v18 con %Connection
%v18 = tail call %Connection @Connection_open(%Connection*   %v15,%Network %v16,i8* %v17)
%v19 = alloca %Connection
store %Connection %v18, %Connection* %v19
%v20 = load %Connection* %v19
ret %Connection %v20
}
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define %Connection @Connection_open( %Connection* %self,%Network %v23,i8* %v25) {
%v24 = alloca %Network
store %Network %v23, %Network* %v24%v26 = alloca i8*
store i8* %v25, i8** %v26;xxFIELDS ON
%v21 = alloca i8*
;xxFIELDS OFF
;xxFIELDS ON
%v22 = alloca i8*
;xxFIELDS OFF
;xxBloq
;xxAssignExpr!! del id endpoint
;xxIdExpr
;xxYa printeamos el valor. LA WEA D ESTE VAL esta en v26
%v27 = load i8** %v26
store i8* %v27, i8** %v21
;xxNos vamos del Assign!, quedo en el punt v21
;xxAssignExpr!! del id local
;xxDispatch de:getHostname
;xxCalee type vale--%Network
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con Network_getHostname
;Call-getType vale->null
;EJA puse al %v28 con i8*
%v28 = tail call i8* @Network_getHostname(%Network*   %v24)
%v29 = alloca i8*
store i8* %v28, i8** %v29
;xxYa printeamos el valor. LA WEA D ESTE VAL esta en v29
%v30 = load i8** %v29
store i8* %v30, i8** %v22
;xxNos vamos del Assign!, quedo en el punt v22
;xxIdExpr
%v31 = load %Connection* %self
ret %Connection %v31
}
;xxMethod def!
define i8* @Connection_getDescription( %Connection* %self) {
;xxFIELDS ON
%v21 = alloca i8*
;xxFIELDS OFF
;xxFIELDS ON
%v22 = alloca i8*
;xxFIELDS OFF
;xxDispatch de:concat
;xxCalee type vale--i8*
;xxDispatch de:concat
;xxCalee type vale--i8*
;xxDispatch de:concat
;xxCalee type vale--i8*
;xxDispatch de:concat
;xxCalee type vale--i8*
%v32 = alloca i8*
store i8* bitcast ( [13 x i8]* @.String.ConnectionSPACE91 to i8* ), i8** %v32
;xxDispatch Callee def load...
;Cai a if STring Dispaatch con String_concat
%v33 = load i8** %v32
;xxIdExpr
;Dispatch arg load...
%v34 = load i8** %v22
;Call-getType vale->null
;EJA puse al %v35 con i8*
%v35 = tail call i8* @String_concat(i8*   %v33,i8* %v34)
%v36 = alloca i8*
store i8* %v35, i8** %v36
;xxDispatch Callee def load...
;Cai a if STring Dispaatch con String_concat
%v37 = load i8** %v36
%v38 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.93SPACE4562SPACE91 to i8* ), i8** %v38
;Dispatch arg load...
%v39 = load i8** %v38
;Call-getType vale->null
;EJA puse al %v40 con i8*
%v40 = tail call i8* @String_concat(i8*   %v37,i8* %v39)
%v41 = alloca i8*
store i8* %v40, i8** %v41
;xxDispatch Callee def load...
;Cai a if STring Dispaatch con String_concat
%v42 = load i8** %v41
;xxIdExpr
;Dispatch arg load...
%v43 = load i8** %v21
;Call-getType vale->null
;EJA puse al %v44 con i8*
%v44 = tail call i8* @String_concat(i8*   %v42,i8* %v43)
%v45 = alloca i8*
store i8* %v44, i8** %v45
;xxDispatch Callee def load...
;Cai a if STring Dispaatch con String_concat
%v46 = load i8** %v45
%v47 = alloca i8*
store i8* bitcast ( [3 x i8]* @.String.93SLASHENE to i8* ), i8** %v47
;Dispatch arg load...
%v48 = load i8** %v47
;Call-getType vale->null
;EJA puse al %v49 con i8*
%v49 = tail call i8* @String_concat(i8*   %v46,i8* %v48)
%v50 = alloca i8*
store i8* %v49, i8** %v50
%v51 = load i8** %v50
ret i8* %v51
}
