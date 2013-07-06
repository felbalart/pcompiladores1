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
@.String.SLASHENE = constant [2 x i8] c"\0A\00"
define i32 @pow(i32 %basei32 %exp) {
%v0 = alloca i32
%v1 = alloca i32
if [Int]
%v2 = alloca i32
store i32 0, i32* %v2
%v4 = load i32* %v1
%v5 = load i32* %v2
%v3 = icmp eq i32 %v4, %v5
%v6 = alloca i1
store i1 %v3, i1* %v6
then
%v7 = alloca i32
store i32 1, i32* %v7
else
%v8 = load i32* %v0
%v9 = alloca i32
store i32 1, i32* %v9
%v11 = load i32* %v1
%v12 = load i32* %v9
%v10 = sub nsw i32 %v11, %v12
%v13 = alloca i32
store i32 %v10, i32* %v13
%v14 = load i32* %v13
%v15 = call i8* @IO_pow(i32 %v8,i32 %v14)
%v17 = load i32* %v0
%v18 = load i32* %v15
%v16 = mul nsw i32 %v17, %v18
%v19 = alloca i32
store i32 %v16, i32* %v19
%v20 = load i32* %NDE
ret i32 %v20
}
define i32 @main() {
%v21 = alloca i32
store i32 2, i32* %v21
%v22 = load i32* %v21
%v23 = alloca i32
store i32 5, i32* %v23
%v24 = load i32* %v23
%v25 = call i8* @IO_pow(i32 %v22,i32 %v24)
%v26 = load i32* %v25
%v27 = call %IO* @IO_out_int(%IO* null, i32 %v26)
%v28 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v28
%v29 = load i8** %v28
%v30 = call %IO* @IO_out_string(%IO* null, i8* %v29)
%v31 = alloca i32
store i32 1, i32* %v31
%v32 = load i32* %v31
%v33 = alloca i32
store i32 30, i32* %v33
%v34 = load i32* %v33
%v35 = call i8* @IO_pow(i32 %v32,i32 %v34)
%v36 = load i32* %v35
%v37 = call %IO* @IO_out_int(%IO* null, i32 %v36)
%v38 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v38
%v39 = load i8** %v38
%v40 = call %IO* @IO_out_string(%IO* null, i8* %v39)
%v41 = alloca i32
store i32 156, i32* %v41
%v42 = load i32* %v41
%v43 = alloca i32
store i32 3, i32* %v43
%v44 = load i32* %v43
%v45 = call i8* @IO_pow(i32 %v42,i32 %v44)
%v46 = load i32* %v45
%v47 = call %IO* @IO_out_int(%IO* null, i32 %v46)
ret i32 0
}
