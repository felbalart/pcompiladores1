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
@.String.slashn = constant [2 x i8] c"\0A\00"
define i32 @main() {
%v0 = alloca i32
%v1 = alloca i32
%v2 = alloca i32
store i32 392, i32* %v2
%v3 = load i32* %v2
store i32 %v3, i32* %v1
%v4 = alloca i32
store i32 32, i32* %v4
%v6 = load i32* %v4
%v7 = load i32* %v1
%v5 = add nsw i32 %v6, %v7
%v8 = alloca i32
store i32 %v5, i32* %v8
%v9 = load i32* %v8
%v10 = call %IO* @IO_out_int(%IO* null, i32 %v9)
%v11 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.slashn to i8* ), i8** %v11
%v12 = load i8** %v11
%v13 = call %IO* @IO_out_string(%IO* null, i8* %v12)
ret i32 3
}
