%MiClase {
    i8* ;type
    ; ...
}

@.type.MiClase = private constant [8 x i8] c"MiClase\00" 

define %MiClase* @newMiClase() {
    ; MiClase* ptr = (MiClase*)malloc(sizeof(MiClase))
    %vptr = call i8* @malloc( ptrtoint (%MiClase* getelementptr (%MiClase* null, i32 1) to i64) )
    %ptr = bitcast i8* %vptr to %MiClase* 
    ; ptr->type = @.type.MiClase
    %typePtr = getelementptr %MiClase* %ptr, i32 0, i32 0
    store i8* bitcast( [8 x i8]* @.type.MiClase to i8*), i8** %typePtr
    ;
    ; aquí se deben inicializar los fields
    ; del objeto recién creado
    ;
    ret %MiClase* %ptr
}



declare i8* @malloc(i64)