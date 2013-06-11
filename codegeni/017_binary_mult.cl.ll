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
define i32 @main() {
%v0 = alloca i32
%v1 = alloca i32
%v2 = alloca i32
store i32 3, i32* %v2
%v3 = alloca i32
store i32 5, i32* %v3
%v5 = load i32* %v2
%v6 = load i32* %v3
%v4 = mul nsw i32 %v5, %v6
%v7 = alloca i32
store i32 %v4, i32* %v7
%v8 = load i32* %v7
%v9 = call %IO* @IO_out_int(%IO* null, i32 %v8)
%v10 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v10
%v11 = load i8** %v10
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
%v13 = alloca i32
store i32 392, i32* %v13
%v14 = load i32* %v13
store i32 %v14, i32* %v1
%v15 = alloca i32
store i32 32, i32* %v15
%v17 = load i32* %v15
%v18 = load i32* %v1
%v16 = mul nsw i32 %v17, %v18
%v19 = alloca i32
store i32 %v16, i32* %v19
%v20 = load i32* %v19
%v21 = call %IO* @IO_out_int(%IO* null, i32 %v20)
%v22 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v22
%v23 = load i8** %v22
%v24 = call %IO* @IO_out_string(%IO* null, i8* %v23)
%v25 = alloca i32
store i32 15, i32* %v25
%v27 = load i32* %v1
%v28 = load i32* %v25
%v26 = mul nsw i32 %v27, %v28
%v29 = alloca i32
store i32 %v26, i32* %v29
%v30 = load i32* %v29
%v31 = call %IO* @IO_out_int(%IO* null, i32 %v30)
%v32 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v32
%v33 = load i8** %v32
%v34 = call %IO* @IO_out_string(%IO* null, i8* %v33)
%v35 = alloca i32
store i32 0, i32* %v35
%v36 = alloca i32
store i32 24, i32* %v36
%v38 = load i32* %v35
%v39 = load i32* %v36
%v37 = sub nsw i32 %v38, %v39
%v40 = alloca i32
store i32 %v37, i32* %v40
%v41 = load i32* %v40
store i32 %v41, i32* %v1
%v42 = alloca i32
store i32 100, i32* %v42
%v44 = load i32* %v1
%v45 = load i32* %v42
%v43 = mul nsw i32 %v44, %v45
%v46 = alloca i32
store i32 %v43, i32* %v46
%v47 = load i32* %v46
store i32 %v47, i32* %v0
%v48 = load i32* %v0
%v49 = call %IO* @IO_out_int(%IO* null, i32 %v48)
%v50 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v50
%v51 = load i8** %v50
%v52 = call %IO* @IO_out_string(%IO* null, i8* %v51)
%v54 = load i32* %v1
%v55 = load i32* %v1
%v53 = mul nsw i32 %v54, %v55
%v56 = alloca i32
store i32 %v53, i32* %v56
%v57 = load i32* %v56
store i32 %v57, i32* %v1
%v58 = load i32* %v1
%v59 = call %IO* @IO_out_int(%IO* null, i32 %v58)
ret i32 0
}
