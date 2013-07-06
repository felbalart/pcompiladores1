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
@.String.true = constant [5 x i8] c"true\00"
@.String.false = constant [6 x i8] c"false\00"
define i32 @main() {
%v0 = alloca i1
store i1 true, i1* %v0
%v1 = load i1* %v0
br i1 %v1, label %v2, label %v3
v2:
%v6 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.true to i8* ), i8** %v6
%v7 = load i8** %v6
%v8 = call %IO* @IO_out_string(%IO* null, i8* %v7)
br label %v4
v3:
%v10 = alloca i8*
store i8* bitcast ( [5 x i8]* @.String.true to i8* ), i8** %v10
%v11 = load i8** %v10
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
br label %v4
v4:
ret i32 0
}
