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
@.String.TamanioSPACE58 = constant [10 x i8] c"Tamanio :\00"
;xxVariable (field)
define i32 @main() {
;xxFIELDS ON
;xxInt
%v0 = alloca i32
store i32 38, i32* %v0
;xxFIELDS OFF
;xxBloq
;xxDispatch
%v1 = alloca i8*
store i8* bitcast ( [10 x i8]* @.String.TamanioSPACE58 to i8* ), i8** %v1
%v2 = load i8** %v1
%v3 = call %IO* @IO_out_string(%IO* null, i8* %v2)
;xxDispatch
;xxIdExpr
%v4 = load i32* %v0
%v5 = call %IO* @IO_out_int(%IO* null, i32 %v4)
ret i32 0
}
