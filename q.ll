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
define i32 @main() {

%v0 = alloca i1
store i1 true, i1* %v0
%v1 = load i1* %v0
br i1 %v1, label %v2, label %v3
v2:

%v6 = alloca i32
store i32 4, i32* %v6

%v5 = alloca i32

%v7 = load i32* %v6

store i32 %v7, i32* %v5
br label %v4
v3:

%v8 = alloca i32
store i32 4, i32* %v8
%v5 = alloca i32
%v9 = load i32* %v8
store i32 %v9, i32* %v5
br label %v4
v4:
ret i32 0
}
