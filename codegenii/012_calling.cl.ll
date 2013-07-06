%Object = type { i8* }
%IO = type { i8* }
@TypeString.Object = constant [7 x i8] c"Object\00"
@TypeString.IO = constant [3 x i8] c"IO\00"
%Program = type { i8*, %IO, %X86, %ARM16, %LLVM, %CIL}
@TypeString.Program = constant [8 x i8] c"Program\00"
%MachineCode = type { i8*}
@TypeString.MachineCode = constant [12 x i8] c"MachineCode\00"
%X86 = type { i8*}
@TypeString.X86 = constant [4 x i8] c"X86\00"
%ARM16 = type { i8*}
@TypeString.ARM16 = constant [6 x i8] c"ARM16\00"
%VirtualMachine = type { i8*}
@TypeString.VirtualMachine = constant [15 x i8] c"VirtualMachine\00"
%LLVM = type { i8*}
@TypeString.LLVM = constant [5 x i8] c"LLVM\00"
%CIL = type { i8*}
@TypeString.CIL = constant [4 x i8] c"CIL\00"
declare %Object* @Object_abort(%Object*)
declare i8* @Object_type_name(%Object*)
declare %IO @IO_out_string(%IO*, i8*)
declare %IO @IO_out_int(%IO*, i32 )
declare i8* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare i32 @String_length(i8*)
declare i8* @String_concat(i8*, i8*)
declare i8* @String_substr(i8*, i32, i32 )
declare i8* @malloc(i64)@.String.SLASHENE = constant [2 x i8] c"\0A\00"
@.String.Computer = constant [9 x i8] c"Computer\00"
@.String.Native = constant [7 x i8] c"Native\00"
@.String.IntelSPACEi686 = constant [11 x i8] c"Intel i686\00"
@.String.ARMv6SPACEThumb = constant [12 x i8] c"ARMv6 Thumb\00"
@.String.Virtual = constant [8 x i8] c"Virtual\00"
@.String.LLVMSPACEIR = constant [8 x i8] c"LLVM IR\00"
@.String.CIL = constant [4 x i8] c"CIL\00"
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxVariable (field)
;xxMethod def!
define i32 @main() {
%self = alloca %Program
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %X86
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca %ARM16
;xxFIELDS OFF
;xxFIELDS ON
%v3 = alloca %LLVM
;xxFIELDS OFF
;xxFIELDS ON
%v4 = alloca %CIL
;xxFIELDS OFF
;xxBloq
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%X86
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con X86_platform
;Call-getType vale->null
;EJA puse al %v5 con i8*
%v5 = tail call i8* @X86_platform(%X86*   %v1)
%v6 = alloca i8*
store i8* %v5, i8** %v6
;Dispatch arg load...
%v7 = load i8** %v6
;Call-getType vale->null
;EJA puse al %v8 con %IO
%v8 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v7)
%v9 = alloca %IO
store %IO %v8, %IO* %v9
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v10 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v10
;Dispatch arg load...
%v11 = load i8** %v10
;Call-getType vale->null
;EJA puse al %v12 con %IO
%v12 = tail call %IO @IO_out_string(%IO*   %v9,i8* %v11)
%v13 = alloca %IO
store %IO %v12, %IO* %v13
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%X86
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con X86_platform
;Call-getType vale->MachineCode
;EJA puse al %v14 con i8*
%v14 = tail call i8* @X86_platform(%X86*   %v1)
%v15 = alloca i8*
store i8* %v14, i8** %v15
;Dispatch arg load...
%v16 = load i8** %v15
;Call-getType vale->null
;EJA puse al %v17 con %IO
%v17 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v16)
%v18 = alloca %IO
store %IO %v17, %IO* %v18
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v19 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v19
;Dispatch arg load...
%v20 = load i8** %v19
;Call-getType vale->null
;EJA puse al %v21 con %IO
%v21 = tail call %IO @IO_out_string(%IO*   %v18,i8* %v20)
%v22 = alloca %IO
store %IO %v21, %IO* %v22
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%X86
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con X86_platform
;Call-getType vale->Program
;EJA puse al %v23 con i8*
%v23 = tail call i8* @X86_platform(%X86*   %v1)
%v24 = alloca i8*
store i8* %v23, i8** %v24
;Dispatch arg load...
%v25 = load i8** %v24
;Call-getType vale->null
;EJA puse al %v26 con %IO
%v26 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v25)
%v27 = alloca %IO
store %IO %v26, %IO* %v27
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v28 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v28
;Dispatch arg load...
%v29 = load i8** %v28
;Call-getType vale->null
;EJA puse al %v30 con %IO
%v30 = tail call %IO @IO_out_string(%IO*   %v27,i8* %v29)
%v31 = alloca %IO
store %IO %v30, %IO* %v31
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%ARM16
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con ARM16_platform
;Call-getType vale->null
;EJA puse al %v32 con i8*
%v32 = tail call i8* @ARM16_platform(%ARM16*   %v2)
%v33 = alloca i8*
store i8* %v32, i8** %v33
;Dispatch arg load...
%v34 = load i8** %v33
;Call-getType vale->null
;EJA puse al %v35 con %IO
%v35 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v34)
%v36 = alloca %IO
store %IO %v35, %IO* %v36
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v37 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v37
;Dispatch arg load...
%v38 = load i8** %v37
;Call-getType vale->null
;EJA puse al %v39 con %IO
%v39 = tail call %IO @IO_out_string(%IO*   %v36,i8* %v38)
%v40 = alloca %IO
store %IO %v39, %IO* %v40
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%ARM16
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con ARM16_platform
;Call-getType vale->MachineCode
;EJA puse al %v41 con i8*
%v41 = tail call i8* @ARM16_platform(%ARM16*   %v2)
%v42 = alloca i8*
store i8* %v41, i8** %v42
;Dispatch arg load...
%v43 = load i8** %v42
;Call-getType vale->null
;EJA puse al %v44 con %IO
%v44 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v43)
%v45 = alloca %IO
store %IO %v44, %IO* %v45
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v46 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v46
;Dispatch arg load...
%v47 = load i8** %v46
;Call-getType vale->null
;EJA puse al %v48 con %IO
%v48 = tail call %IO @IO_out_string(%IO*   %v45,i8* %v47)
%v49 = alloca %IO
store %IO %v48, %IO* %v49
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%ARM16
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con ARM16_platform
;Call-getType vale->Program
;EJA puse al %v50 con i8*
%v50 = tail call i8* @ARM16_platform(%ARM16*   %v2)
%v51 = alloca i8*
store i8* %v50, i8** %v51
;Dispatch arg load...
%v52 = load i8** %v51
;Call-getType vale->null
;EJA puse al %v53 con %IO
%v53 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v52)
%v54 = alloca %IO
store %IO %v53, %IO* %v54
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v55 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v55
;Dispatch arg load...
%v56 = load i8** %v55
;Call-getType vale->null
;EJA puse al %v57 con %IO
%v57 = tail call %IO @IO_out_string(%IO*   %v54,i8* %v56)
%v58 = alloca %IO
store %IO %v57, %IO* %v58
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%LLVM
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con LLVM_platform
;Call-getType vale->null
;EJA puse al %v59 con i8*
%v59 = tail call i8* @LLVM_platform(%LLVM*   %v3)
%v60 = alloca i8*
store i8* %v59, i8** %v60
;Dispatch arg load...
%v61 = load i8** %v60
;Call-getType vale->null
;EJA puse al %v62 con %IO
%v62 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v61)
%v63 = alloca %IO
store %IO %v62, %IO* %v63
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v64 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v64
;Dispatch arg load...
%v65 = load i8** %v64
;Call-getType vale->null
;EJA puse al %v66 con %IO
%v66 = tail call %IO @IO_out_string(%IO*   %v63,i8* %v65)
%v67 = alloca %IO
store %IO %v66, %IO* %v67
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%LLVM
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con LLVM_platform
;Call-getType vale->VirtualMachine
;EJA puse al %v68 con i8*
%v68 = tail call i8* @LLVM_platform(%LLVM*   %v3)
%v69 = alloca i8*
store i8* %v68, i8** %v69
;Dispatch arg load...
%v70 = load i8** %v69
;Call-getType vale->null
;EJA puse al %v71 con %IO
%v71 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v70)
%v72 = alloca %IO
store %IO %v71, %IO* %v72
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v73 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v73
;Dispatch arg load...
%v74 = load i8** %v73
;Call-getType vale->null
;EJA puse al %v75 con %IO
%v75 = tail call %IO @IO_out_string(%IO*   %v72,i8* %v74)
%v76 = alloca %IO
store %IO %v75, %IO* %v76
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%LLVM
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con LLVM_platform
;Call-getType vale->Program
;EJA puse al %v77 con i8*
%v77 = tail call i8* @LLVM_platform(%LLVM*   %v3)
%v78 = alloca i8*
store i8* %v77, i8** %v78
;Dispatch arg load...
%v79 = load i8** %v78
;Call-getType vale->null
;EJA puse al %v80 con %IO
%v80 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v79)
%v81 = alloca %IO
store %IO %v80, %IO* %v81
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v82 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v82
;Dispatch arg load...
%v83 = load i8** %v82
;Call-getType vale->null
;EJA puse al %v84 con %IO
%v84 = tail call %IO @IO_out_string(%IO*   %v81,i8* %v83)
%v85 = alloca %IO
store %IO %v84, %IO* %v85
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%CIL
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con CIL_platform
;Call-getType vale->null
;EJA puse al %v86 con i8*
%v86 = tail call i8* @CIL_platform(%CIL*   %v4)
%v87 = alloca i8*
store i8* %v86, i8** %v87
;Dispatch arg load...
%v88 = load i8** %v87
;Call-getType vale->null
;EJA puse al %v89 con %IO
%v89 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v88)
%v90 = alloca %IO
store %IO %v89, %IO* %v90
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v91 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v91
;Dispatch arg load...
%v92 = load i8** %v91
;Call-getType vale->null
;EJA puse al %v93 con %IO
%v93 = tail call %IO @IO_out_string(%IO*   %v90,i8* %v92)
%v94 = alloca %IO
store %IO %v93, %IO* %v94
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%CIL
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con CIL_platform
;Call-getType vale->VirtualMachine
;EJA puse al %v95 con i8*
%v95 = tail call i8* @CIL_platform(%CIL*   %v4)
%v96 = alloca i8*
store i8* %v95, i8** %v96
;Dispatch arg load...
%v97 = load i8** %v96
;Call-getType vale->null
;EJA puse al %v98 con %IO
%v98 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v97)
%v99 = alloca %IO
store %IO %v98, %IO* %v99
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v100 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v100
;Dispatch arg load...
%v101 = load i8** %v100
;Call-getType vale->null
;EJA puse al %v102 con %IO
%v102 = tail call %IO @IO_out_string(%IO*   %v99,i8* %v101)
%v103 = alloca %IO
store %IO %v102, %IO* %v103
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxDispatch de:out_string
;xxCalee type vale--%IO
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
;xxDispatch de:platform
;xxCalee type vale--%CIL
;xxIdExpr
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con CIL_platform
;Call-getType vale->Program
;EJA puse al %v104 con i8*
%v104 = tail call i8* @CIL_platform(%CIL*   %v4)
%v105 = alloca i8*
store i8* %v104, i8** %v105
;Dispatch arg load...
%v106 = load i8** %v105
;Call-getType vale->null
;EJA puse al %v107 con %IO
%v107 = tail call %IO @IO_out_string(%IO*   %v0,i8* %v106)
%v108 = alloca %IO
store %IO %v107, %IO* %v108
;xxDispatch Callee def load...
;NO Cai a if STring Dispaatch con IO_out_string
%v109 = alloca i8*
store i8* bitcast ( [2 x i8]* @.String.SLASHENE to i8* ), i8** %v109
;Dispatch arg load...
%v110 = load i8** %v109
;Call-getType vale->null
;EJA puse al %v111 con %IO
%v111 = tail call %IO @IO_out_string(%IO*   %v108,i8* %v110)
%v112 = alloca %IO
store %IO %v111, %IO* %v112
ret i32 0
}
;xxMethod def!
define i8* @Program_platform( %Program* %self) {
;xxFIELDS ON
%v0 = alloca %IO
;xxFIELDS OFF
;xxFIELDS ON
%v1 = alloca %X86
;xxFIELDS OFF
;xxFIELDS ON
%v2 = alloca %ARM16
;xxFIELDS OFF
;xxFIELDS ON
%v3 = alloca %LLVM
;xxFIELDS OFF
;xxFIELDS ON
%v4 = alloca %CIL
;xxFIELDS OFF
%v113 = alloca i8*
store i8* bitcast ( [9 x i8]* @.String.Computer to i8* ), i8** %v113
%v114 = load i8** %v113
ret i8* %v114
}
;xxMethod def!
define i8* @MachineCode_platform( %MachineCode* %self) {
;clase MachineCode no se encuentra en hash de pndg_fields!%v115 = alloca i8*
store i8* bitcast ( [7 x i8]* @.String.Native to i8* ), i8** %v115
%v116 = load i8** %v115
ret i8* %v116
}
;xxMethod def!
define i8* @X86_platform( %X86* %self) {
;clase X86 no se encuentra en hash de pndg_fields!%v117 = alloca i8*
store i8* bitcast ( [11 x i8]* @.String.IntelSPACEi686 to i8* ), i8** %v117
%v118 = load i8** %v117
ret i8* %v118
}
;xxMethod def!
define i8* @ARM16_platform( %ARM16* %self) {
;clase ARM16 no se encuentra en hash de pndg_fields!%v119 = alloca i8*
store i8* bitcast ( [12 x i8]* @.String.ARMv6SPACEThumb to i8* ), i8** %v119
%v120 = load i8** %v119
ret i8* %v120
}
;xxMethod def!
define i8* @VirtualMachine_platform( %VirtualMachine* %self) {
;clase VirtualMachine no se encuentra en hash de pndg_fields!%v121 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.Virtual to i8* ), i8** %v121
%v122 = load i8** %v121
ret i8* %v122
}
;xxMethod def!
define i8* @LLVM_platform( %LLVM* %self) {
;clase LLVM no se encuentra en hash de pndg_fields!%v123 = alloca i8*
store i8* bitcast ( [8 x i8]* @.String.LLVMSPACEIR to i8* ), i8** %v123
%v124 = load i8** %v123
ret i8* %v124
}
;xxMethod def!
define i8* @CIL_platform( %CIL* %self) {
;clase CIL no se encuentra en hash de pndg_fields!%v125 = alloca i8*
store i8* bitcast ( [4 x i8]* @.String.CIL to i8* ), i8** %v125
%v126 = load i8** %v125
ret i8* %v126
}
