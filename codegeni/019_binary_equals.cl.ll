%Object = type { i8* }
%IO = type { i8* }
%Main = type { i8* }
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO* @IO_out_string(%IO*, i8*)
declare %IO* @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
@.String.azul = constant [5 x i8] c"azul\00"
@.String.okSLASHENE = constant [4 x i8] c"ok\0A\00"
@.String.notSPACEokSLASHENE = constant [8 x i8] c"not ok\0A\00"
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
;xxFIELDS ON
%v0 = alloca i8*
%v0 = null
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca i32
%v1 = null
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca i1
%v2 = null
;xxFIELDS OFF
;xxBloq
;xxDispatch de:out_string
;xxIFEX
%v3 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.azul to i8* ), i8** %v3
%v4 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.azul to i8* ), i8** %v4
%v6 = load i32* %v3
%v7 = load i32* %v4
%v5 = icmp eq i32 %v6, %v7
%v8 = alloca i1
store i1 %v5, i1* %v8
%v9 = load i1* %v8
br i1 %v9, label %v10, label %v11
v10:
%v14 = alloca i8*
store i8* bitcast ( [4 x i8]* @.String.okSLASHENE to i8* ), i8** %v14
br label %v12
v11:
%v15 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.notSPACEokSLASHENE to i8* ), i8** %v15
br label %v12
v12:
%v13 = phi i8** [%v14, %v10],[%v15, %v11]
;Dispatch arg load...
%v16 = load i8** %v13
%v17 = call %IO* @IO_out_string(%IO* null, i8* %v16)
%v18 = alloca %IO*
store %IO* %v17, %IO** %v18
ret i32 0
}
