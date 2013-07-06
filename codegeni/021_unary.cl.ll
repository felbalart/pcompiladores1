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
;xxMethod def!
define i32 @main() {
;xxBloq
;xxDispatch de:out_int
;xxInt
%v1 = alloca i32
;xxStoreamos un int con el valor: 0
store i32 0, i32* %v1
%v2 = load i32* %v1
%v0 = xor i32 %v2, -1
%v3 = alloca i32
store i32 %v0, i32* %v3
;Dispatch arg load...
%v4 = load i32* %v3
%v5 = call %IO* @IO_out_int(%IO* null, i32 %v4)
%v6 = alloca %IO*
store %IO* %v5, %IO** %v6
;xxDispatch de:out_int
;xxIFEX
;xxInt
%v8 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v8
;xxInt
%v9 = alloca i32
;xxStoreamos un int con el valor: 1
store i32 1, i32* %v9
%v11 = load i32* %v8
%v12 = load i32* %v9
%v10 = icmp slt i32 %v11, %v12
%v13 = alloca i1
store i1 %v10, i1* %v13
%v14 = load i1* %v13
%v7 = xor i1 %v14, 1
%v15 = alloca i1
store i1 %v7, i1* %v15
%v16 = load i1* %v15
br i1 %v16, label %v17, label %v18
v17:
;xxInt
%v21 = alloca i32
;xxStoreamos un int con el valor: 4
store i32 4, i32* %v21
br label %v19
v18:
;xxInt
%v22 = alloca i32
;xxStoreamos un int con el valor: 5
store i32 5, i32* %v22
br label %v19
v19:
%v20 = phi i32* [%v21, %v17],[%v22, %v18]
;Dispatch arg load...
%v23 = load i32* %v20
%v24 = call %IO* @IO_out_int(%IO* null, i32 %v23)
%v25 = alloca %IO*
store %IO* %v24, %IO** %v25
;xxDispatch de:out_int
;xxInt
%v27 = alloca i32
;xxStoreamos un int con el valor: 0
store i32 0, i32* %v27
;xxInt
%v28 = alloca i32
;xxStoreamos un int con el valor: 46
store i32 46, i32* %v28
%v30 = load i32* %v27
%v31 = load i32* %v28
%v29 = sub nsw i32 %v30, %v31
%v32 = alloca i32
store i32 %v29, i32* %v32
%v33 = load i32* %v32
%v26 = xor i32 %v33, -1
%v34 = alloca i32
store i32 %v26, i32* %v34
;Dispatch arg load...
%v35 = load i32* %v34
%v36 = call %IO* @IO_out_int(%IO* null, i32 %v35)
%v37 = alloca %IO*
store %IO* %v36, %IO** %v37
ret i32 0
}
