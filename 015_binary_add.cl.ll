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
%v3 = alloca i32
store i32 3, i32* %v3
%v4 = alloca i32
store i32 5, i32* %v4
%v6 = load i32* %v3
%v7 = load i32* %v4
%v5 = add nsw i32 %v6, %v7
%v8 = alloca i32
store i32 %v5, i32* %v8
%v9 = load i32* %v8
%v10 = call %IO* @IO_out_int(%IO* null, i32 %v9)
%v11 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.slashn to i8* ), i8** %v11
%v12 = load i8** %v11
%v13 = call %IO* @IO_out_string(%IO* null, i8* %v12)
%v14 = alloca i32
store i32 392, i32* %v14
%v15 = load i32* %v14
store i32 %v15, i32* %v1
%v16 = alloca i32
store i32 32, i32* %v16
%v18 = load i32* %v16
%v19 = load i32* %v1
%v17 = add nsw i32 %v18, %v19
%v20 = alloca i32
store i32 %v17, i32* %v20
%v21 = load i32* %v20
%v22 = call %IO* @IO_out_int(%IO* null, i32 %v21)
%v23 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.slashn to i8* ), i8** %v23
%v24 = load i8** %v23
%v25 = call %IO* @IO_out_string(%IO* null, i8* %v24)
%v26 = alloca i32
store i32 15, i32* %v26
%v28 = load i32* %v1
%v29 = load i32* %v26
%v27 = add nsw i32 %v28, %v29
%v30 = alloca i32
store i32 %v27, i32* %v30
%v31 = load i32* %v30
%v32 = call %IO* @IO_out_int(%IO* null, i32 %v31)
%v33 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.slashn to i8* ), i8** %v33
%v34 = load i8** %v33
%v35 = call %IO* @IO_out_string(%IO* null, i8* %v34)
%v36 = alloca i32
store i32 224, i32* %v36
%v37 = load i32* %v36
store i32 %v37, i32* %v1
%v38 = alloca i32
store i32 100, i32* %v38
%v40 = load i32* %v1
%v41 = load i32* %v38
%v39 = add nsw i32 %v40, %v41
%v42 = alloca i32
store i32 %v39, i32* %v42
%v43 = load i32* %v42
store i32 %v43, i32* %v0
%v44 = load i32* %v0
%v45 = call %IO* @IO_out_int(%IO* null, i32 %v44)
%v46 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.slashn to i8* ), i8** %v46
%v47 = load i8** %v46
%v48 = call %IO* @IO_out_string(%IO* null, i8* %v47)
%v50 = load i32* %v1
%v51 = load i32* %v1
%v49 = add nsw i32 %v50, %v51
%v52 = alloca i32
store i32 %v49, i32* %v52
%v53 = load i32* %v52
store i32 %v53, i32* %v1
%v54 = load i32* %v1
%v55 = call %IO* @IO_out_int(%IO* null, i32 %v54)
%v2 = load i32* %NDE
ret i32 %v2
}
