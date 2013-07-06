2:3 Expected Main, received Int
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
define %SELF_TYPE @main() {
%v0 = alloca i32
store i32 7, i32* %v0
%v1 = alloca i32
store i32 9, i32* %v1
%v3 = load i32* %v0
%v4 = load i32* %v1
%v2 = add nsw i32 %v3, %v4
%v5 = alloca i32
store i32 %v2, i32* %v5
}