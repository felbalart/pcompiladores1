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
%v4 = sdiv i32 %v5, %v6
%v7 = alloca i32
store i32 %v4, i32* %v7
%v8 = load i32* %v7
%v9 = call %IO* @IO_out_int(%IO* null, i32 %v8)
%v10 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v10
%v11 = load i8** %v10
%v12 = call %IO* @IO_out_string(%IO* null, i8* %v11)
%v13 = alloca i32
store i32 0, i32* %v13
%v14 = alloca i32
store i32 392, i32* %v14
%v16 = load i32* %v13
%v17 = load i32* %v14
%v15 = sub nsw i32 %v16, %v17
%v18 = alloca i32
store i32 %v15, i32* %v18
%v19 = load i32* %v18
store i32 %v19, i32* %v1
%v20 = alloca i32
store i32 323042, i32* %v20
%v22 = load i32* %v20
%v23 = load i32* %v1
%v21 = sdiv i32 %v22, %v23
%v24 = alloca i32
store i32 %v21, i32* %v24
%v25 = load i32* %v24
%v26 = call %IO* @IO_out_int(%IO* null, i32 %v25)
%v27 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v27
%v28 = load i8** %v27
%v29 = call %IO* @IO_out_string(%IO* null, i8* %v28)
%v30 = alloca i32
store i32 15, i32* %v30
%v32 = load i32* %v1
%v33 = load i32* %v30
%v31 = sdiv i32 %v32, %v33
%v34 = alloca i32
store i32 %v31, i32* %v34
%v35 = load i32* %v34
%v36 = call %IO* @IO_out_int(%IO* null, i32 %v35)
%v37 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v37
%v38 = load i8** %v37
%v39 = call %IO* @IO_out_string(%IO* null, i8* %v38)
%v40 = alloca i32
store i32 224, i32* %v40
%v41 = load i32* %v40
store i32 %v41, i32* %v1
%v42 = alloca i32
store i32 10, i32* %v42
%v44 = load i32* %v1
%v45 = load i32* %v42
%v43 = sdiv i32 %v44, %v45
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
%v53 = sdiv i32 %v54, %v55
%v56 = alloca i32
store i32 %v53, i32* %v56
%v57 = load i32* %v56
store i32 %v57, i32* %v1
%v58 = load i32* %v1
%v59 = call %IO* @IO_out_int(%IO* null, i32 %v58)
ret i32 0
}
