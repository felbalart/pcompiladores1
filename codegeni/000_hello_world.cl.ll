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
declare i8* @String_#A020F0substr(i8*, i32, i32 )
@.String.HelloSPACEWorld33SLASHENE = constant [14 x i8] c"Hello World!\0A\00"
;xxMethod def!
define i32 @main() {
;xxDispatch de:out_string
%v0 = alloca i8*
store i8* bitcast ( [14 x i8]* @.String.HelloSPACEWorld33SLASHENE to i8* ), i8** %v0
;Dispatch arg load...
%v1 = load i8** %v0
%v2 = call %IO* @IO_out_string(%IO* null, i8* %v1)
%v3 = alloca %IO*
store %IO* %v2, %IO** %v3
ret i32 0
}
