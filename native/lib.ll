; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }
%struct.vector = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@ok_atom = internal unnamed_addr global i64 0, align 8, !dbg !89
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@error_atom = internal unnamed_addr global i64 0, align 8, !dbg !91
@.str.3 = private unnamed_addr constant [17 x i8] c"arithmetic_error\00", align 1
@arithmetic_error_atom = internal unnamed_addr global i64 0, align 8, !dbg !93
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"asm_1_nif_uu\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"asm_1_nif_bb\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"asm_1_nif_uf\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fu\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [8 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_uu, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_bb, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_uf, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fu, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !24
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 8, %struct.enif_func_t* getelementptr inbounds ([8 x %struct.enif_func_t], [8 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, align 8, !dbg !53
@.str.12 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

declare i64 @enif_make_tuple(%struct.enif_environment_t*, i32, ...) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @load(%struct.enif_environment_t*, i8** nocapture readnone, i64) #1 !dbg !100 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i8** %1, metadata !104, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %2, metadata !105, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !109, metadata !DIExpression()) #6, !dbg !114
  %4 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !116
  %5 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %4) #6, !dbg !117
  store i64 %5, i64* @arithmetic_error, align 8, !dbg !118, !tbaa !119
  %6 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !123
  store i64 %6, i64* @ok_atom, align 8, !dbg !124, !tbaa !119
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !125
  store i64 %7, i64* @error_atom, align 8, !dbg !126, !tbaa !119
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !127
  store i64 %8, i64* @arithmetic_error_atom, align 8, !dbg !128, !tbaa !119
  ret i32 0, !dbg !129
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #2 !dbg !130 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8* %1, metadata !133, metadata !DIExpression()), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #2 !dbg !137 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !139, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i8** %1, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i64 %2, metadata !141, metadata !DIExpression()), !dbg !144
  ret i32 0, !dbg !145
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t*, i8** nocapture readnone, i8** nocapture readnone, i64) #1 !dbg !146 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !148, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8** %1, metadata !149, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i8** %2, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i64 %3, metadata !151, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !103, metadata !DIExpression()) #6, !dbg !156
  call void @llvm.dbg.value(metadata i8** %1, metadata !104, metadata !DIExpression()) #6, !dbg !158
  call void @llvm.dbg.value(metadata i64 %3, metadata !105, metadata !DIExpression()) #6, !dbg !159
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !109, metadata !DIExpression()) #6, !dbg !160
  %5 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !162
  %6 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %5) #6, !dbg !163
  store i64 %6, i64* @arithmetic_error, align 8, !dbg !164, !tbaa !119
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !165
  store i64 %7, i64* @ok_atom, align 8, !dbg !166, !tbaa !119
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !167
  store i64 %8, i64* @error_atom, align 8, !dbg !168, !tbaa !119
  %9 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !169
  store i64 %9, i64* @arithmetic_error_atom, align 8, !dbg !170, !tbaa !119
  ret i32 0, !dbg !171
}

; Function Attrs: nounwind ssp uwtable
define i32 @enif_get_big_num(%struct.enif_environment_t*, i64, %struct.vector** nocapture) local_unnamed_addr #1 !dbg !172 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 %1, metadata !178, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata %struct.vector** %2, metadata !179, metadata !DIExpression()), !dbg !191
  %10 = bitcast i32* %4 to i8*, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #6, !dbg !192
  %11 = bitcast i64** %5 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6, !dbg !193
  call void @llvm.dbg.value(metadata i32* %4, metadata !180, metadata !DIExpression(DW_OP_deref)), !dbg !194
  call void @llvm.dbg.value(metadata i64** %5, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !195
  %12 = call i32 @enif_get_tuple(%struct.enif_environment_t* %0, i64 %1, i32* nonnull %4, i64** nonnull %5) #6, !dbg !196
  %13 = icmp ne i32 %12, 0, !dbg !198
  %14 = load i32, i32* %4, align 4, !dbg !199
  %15 = icmp eq i32 %14, 2, !dbg !201
  %16 = and i1 %13, %15, !dbg !202
  br i1 %16, label %17, label %97, !dbg !202, !prof !203

; <label>:17:                                     ; preds = %3
  %18 = bitcast i32* %6 to i8*, !dbg !204
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #6, !dbg !204
  %19 = load i64*, i64** %5, align 8, !dbg !205, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %19, metadata !181, metadata !DIExpression()), !dbg !195
  %20 = load i64, i64* %19, align 8, !dbg !205, !tbaa !119
  call void @llvm.dbg.value(metadata i32* %6, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !209
  %21 = call i32 @enif_get_int(%struct.enif_environment_t* %0, i64 %20, i32* nonnull %6) #6, !dbg !210
  %22 = icmp eq i32 %21, 0, !dbg !211
  br i1 %22, label %95, label %23, !dbg !212, !prof !213

; <label>:23:                                     ; preds = %17
  %24 = bitcast i32* %7 to i8*, !dbg !214
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #6, !dbg !214
  %25 = load i64*, i64** %5, align 8, !dbg !215, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %25, metadata !181, metadata !DIExpression()), !dbg !195
  %26 = getelementptr inbounds i64, i64* %25, i64 1, !dbg !215
  %27 = load i64, i64* %26, align 8, !dbg !215, !tbaa !119
  call void @llvm.dbg.value(metadata i32* %7, metadata !183, metadata !DIExpression(DW_OP_deref)), !dbg !217
  %28 = call i32 @enif_get_list_length(%struct.enif_environment_t* %0, i64 %27, i32* nonnull %7) #6, !dbg !218
  %29 = icmp eq i32 %28, 0, !dbg !219
  %30 = load i32, i32* %7, align 4, !dbg !220
  %31 = icmp eq i32 %30, 0, !dbg !222
  %32 = or i1 %29, %31, !dbg !223
  br i1 %32, label %93, label %33, !dbg !223, !prof !224

; <label>:33:                                     ; preds = %23
  %34 = bitcast i64* %8 to i8*, !dbg !225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #6, !dbg !225
  %35 = bitcast i64* %9 to i8*, !dbg !225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #6, !dbg !225
  %36 = load i64*, i64** %5, align 8, !dbg !226, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %36, metadata !181, metadata !DIExpression()), !dbg !195
  %37 = getelementptr inbounds i64, i64* %36, i64 1, !dbg !226
  %38 = load i64, i64* %37, align 8, !dbg !226, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %8, metadata !184, metadata !DIExpression(DW_OP_deref)), !dbg !228
  call void @llvm.dbg.value(metadata i64* %9, metadata !185, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %39 = call i32 @enif_get_list_cell(%struct.enif_environment_t* %0, i64 %38, i64* nonnull %8, i64* nonnull %9) #6, !dbg !230
  %40 = icmp eq i32 %39, 0, !dbg !231
  br i1 %40, label %91, label %41, !dbg !232, !prof !213

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %7, align 4, !dbg !233, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %42, metadata !183, metadata !DIExpression()), !dbg !217
  %43 = sext i32 %42 to i64, !dbg !233
  %44 = shl nsw i64 %43, 3, !dbg !236
  %45 = call i8* @enif_alloc(i64 %44) #6, !dbg !237
  %46 = bitcast i8* %45 to i64*, !dbg !238
  call void @llvm.dbg.value(metadata i64* %46, metadata !186, metadata !DIExpression()), !dbg !239
  %47 = icmp eq i8* %45, null, !dbg !240
  br i1 %47, label %91, label %48, !dbg !242, !prof !213

; <label>:48:                                     ; preds = %41
  %49 = call i8* @enif_alloc(i64 16) #6, !dbg !243
  %50 = bitcast %struct.vector** %2 to i8**, !dbg !244
  store i8* %49, i8** %50, align 8, !dbg !244, !tbaa !207
  %51 = icmp eq i8* %49, null, !dbg !245
  br i1 %51, label %56, label %52, !dbg !247, !prof !213

; <label>:52:                                     ; preds = %48
  %53 = bitcast i8* %49 to %struct.vector*, !dbg !247
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !248
  %54 = load i32, i32* %7, align 4, !dbg !249, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %54, metadata !183, metadata !DIExpression()), !dbg !217
  %55 = icmp sgt i32 %54, 0, !dbg !251
  br i1 %55, label %57, label %85, !dbg !252

; <label>:56:                                     ; preds = %48
  call void @enif_free(i8* nonnull %45) #6, !dbg !253
  br label %91, !dbg !255

; <label>:57:                                     ; preds = %52, %78
  %58 = phi i64 [ %80, %78 ], [ 0, %52 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !187, metadata !DIExpression()), !dbg !248
  %59 = load i64, i64* %8, align 8, !dbg !256, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %59, metadata !184, metadata !DIExpression()), !dbg !228
  %60 = getelementptr inbounds i64, i64* %46, i64 %58, !dbg !259
  %61 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %59, i64* %60) #6, !dbg !260
  %62 = icmp eq i32 %61, 0, !dbg !261
  br i1 %62, label %63, label %64, !dbg !262, !prof !213

; <label>:63:                                     ; preds = %57
  call void @enif_free(i8* nonnull %45) #6, !dbg !263
  br label %91

; <label>:64:                                     ; preds = %57
  %65 = load i64, i64* %9, align 8, !dbg !265, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %65, metadata !185, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64* %8, metadata !184, metadata !DIExpression(DW_OP_deref)), !dbg !228
  call void @llvm.dbg.value(metadata i64* %9, metadata !185, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %66 = call i32 @enif_get_list_cell(%struct.enif_environment_t* %0, i64 %65, i64* nonnull %8, i64* nonnull %9) #6, !dbg !267
  %67 = icmp eq i32 %66, 0, !dbg !268
  br i1 %67, label %72, label %68, !dbg !269, !prof !213

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %7, align 4, !dbg !249, !tbaa !234
  %70 = add nuw nsw i64 %58, 1, !dbg !270
  %71 = sext i32 %69 to i64, !dbg !251
  br label %78, !dbg !269

; <label>:72:                                     ; preds = %64
  %73 = add nuw nsw i64 %58, 1, !dbg !271
  %74 = load i32, i32* %7, align 4, !dbg !274, !tbaa !234
  call void @llvm.dbg.value(metadata i32 %74, metadata !183, metadata !DIExpression()), !dbg !217
  %75 = sext i32 %74 to i64, !dbg !275
  %76 = icmp slt i64 %73, %75, !dbg !275
  br i1 %76, label %77, label %78, !dbg !276

; <label>:77:                                     ; preds = %72
  call void @enif_free(i8* nonnull %45) #6, !dbg !277
  br label %91

; <label>:78:                                     ; preds = %68, %72
  %79 = phi i64 [ %71, %68 ], [ %75, %72 ], !dbg !251
  %80 = phi i64 [ %70, %68 ], [ %73, %72 ], !dbg !270
  %81 = phi i32 [ %69, %68 ], [ %74, %72 ], !dbg !249
  call void @llvm.dbg.value(metadata i32 undef, metadata !187, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !248
  call void @llvm.dbg.value(metadata i32 %81, metadata !183, metadata !DIExpression()), !dbg !217
  %82 = icmp slt i64 %80, %79, !dbg !251
  br i1 %82, label %57, label %83, !dbg !252, !llvm.loop !279

; <label>:83:                                     ; preds = %78
  call void @llvm.dbg.value(metadata i32 %81, metadata !183, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %81, metadata !183, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %81, metadata !183, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 %81, metadata !183, metadata !DIExpression()), !dbg !217
  %84 = load %struct.vector*, %struct.vector** %2, align 8, !dbg !281, !tbaa !207
  br label %85, !dbg !281

; <label>:85:                                     ; preds = %83, %52
  %86 = phi %struct.vector* [ %53, %52 ], [ %84, %83 ], !dbg !281
  %87 = phi i32 [ %54, %52 ], [ %81, %83 ], !dbg !249
  call void @llvm.dbg.value(metadata i32 undef, metadata !183, metadata !DIExpression()), !dbg !217
  %88 = getelementptr inbounds %struct.vector, %struct.vector* %86, i64 0, i32 0, !dbg !282
  store i32 %87, i32* %88, align 8, !dbg !283, !tbaa !284
  %89 = getelementptr inbounds %struct.vector, %struct.vector* %86, i64 0, i32 1, !dbg !286
  %90 = bitcast i32** %89 to i8**, !dbg !287
  store i8* %45, i8** %90, align 8, !dbg !287, !tbaa !288
  br label %91, !dbg !289

; <label>:91:                                     ; preds = %56, %85, %41, %63, %77, %33
  %92 = phi i32 [ 0, %33 ], [ 0, %56 ], [ 1, %85 ], [ 0, %41 ], [ 0, %63 ], [ 0, %77 ], !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #6, !dbg !292
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #6, !dbg !292
  br label %93

; <label>:93:                                     ; preds = %23, %91
  %94 = phi i32 [ %92, %91 ], [ 0, %23 ], !dbg !293
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #6, !dbg !292
  br label %95

; <label>:95:                                     ; preds = %17, %93
  %96 = phi i32 [ %94, %93 ], [ 0, %17 ], !dbg !295
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #6, !dbg !292
  br label %97

; <label>:97:                                     ; preds = %3, %95
  %98 = phi i32 [ %96, %95 ], [ 0, %3 ], !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6, !dbg !292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #6, !dbg !292
  ret i32 %98, !dbg !292
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_tuple(%struct.enif_environment_t*, i64, i32*, i64**) local_unnamed_addr #0

declare i32 @enif_get_int(%struct.enif_environment_t*, i64, i32*) local_unnamed_addr #0

declare i32 @enif_get_list_length(%struct.enif_environment_t*, i64, i32*) local_unnamed_addr #0

declare i32 @enif_get_list_cell(%struct.enif_environment_t*, i64, i64*, i64*) local_unnamed_addr #0

declare i8* @enif_alloc(i64) local_unnamed_addr #0

declare void @enif_free(i8*) local_unnamed_addr #0

declare i32 @enif_get_ulong(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #0

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !299 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !301, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %1, metadata !302, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.value(metadata i64* %2, metadata !303, metadata !DIExpression()), !dbg !310
  %6 = bitcast i64* %4 to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !311
  %7 = bitcast i64* %5 to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !311
  %8 = load i64, i64* %2, align 8, !dbg !312, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %4, metadata !304, metadata !DIExpression(DW_OP_deref)), !dbg !314
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !315
  %10 = icmp eq i32 %9, 0, !dbg !316
  br i1 %10, label %26, label %11, !dbg !317, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !318
  %13 = load i64, i64* %12, align 8, !dbg !318, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %5, metadata !306, metadata !DIExpression(DW_OP_deref)), !dbg !320
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !321
  %15 = icmp eq i32 %14, 0, !dbg !322
  br i1 %15, label %26, label %16, !dbg !323, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !324, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %17, metadata !304, metadata !DIExpression()), !dbg !314
  %18 = load i64, i64* %5, align 8, !dbg !326, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %18, metadata !306, metadata !DIExpression()), !dbg !320
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %18), !dbg !327
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !327
  br i1 %20, label %28, label %21, !dbg !328, !prof !213

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !327
  call void @llvm.dbg.value(metadata i64 %22, metadata !307, metadata !DIExpression()), !dbg !329
  %23 = load i64, i64* @ok_atom, align 8, !dbg !330, !tbaa !119
  %24 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !331
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !340
  call void @llvm.dbg.value(metadata i64 %23, metadata !338, metadata !DIExpression()) #6, !dbg !342
  call void @llvm.dbg.value(metadata i64 %24, metadata !339, metadata !DIExpression()) #6, !dbg !343
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !344
  br label %32, !dbg !345

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !346, !tbaa !119
  br label %32, !dbg !347

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !348, !tbaa !119
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !349, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !350
  call void @llvm.dbg.value(metadata i64 %29, metadata !338, metadata !DIExpression()) #6, !dbg !352
  call void @llvm.dbg.value(metadata i64 %30, metadata !339, metadata !DIExpression()) #6, !dbg !353
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !354
  br label %32, !dbg !355

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ], !dbg !356
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !357
  ret i64 %33, !dbg !357
}

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_uu(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !358 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !360, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata i32 %1, metadata !361, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i64* %2, metadata !362, metadata !DIExpression()), !dbg !368
  %6 = bitcast i64* %4 to i8*, !dbg !369
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !369
  %7 = bitcast i64* %5 to i8*, !dbg !369
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !369
  %8 = load i64, i64* %2, align 8, !dbg !370, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %4, metadata !363, metadata !DIExpression(DW_OP_deref)), !dbg !372
  %9 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !373
  %10 = icmp eq i32 %9, 0, !dbg !374
  br i1 %10, label %26, label %11, !dbg !375, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !376
  %13 = load i64, i64* %12, align 8, !dbg !376, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %5, metadata !364, metadata !DIExpression(DW_OP_deref)), !dbg !378
  %14 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !379
  %15 = icmp eq i32 %14, 0, !dbg !380
  br i1 %15, label %26, label %16, !dbg !381, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !382, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %17, metadata !363, metadata !DIExpression()), !dbg !372
  %18 = load i64, i64* %5, align 8, !dbg !384, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %18, metadata !364, metadata !DIExpression()), !dbg !378
  %19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %18), !dbg !385
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !385
  br i1 %20, label %28, label %21, !dbg !386, !prof !213

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !385
  call void @llvm.dbg.value(metadata i64 %22, metadata !365, metadata !DIExpression()), !dbg !387
  %23 = load i64, i64* @ok_atom, align 8, !dbg !388, !tbaa !119
  %24 = call i64 @enif_make_ulong(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !389
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !390
  call void @llvm.dbg.value(metadata i64 %23, metadata !338, metadata !DIExpression()) #6, !dbg !392
  call void @llvm.dbg.value(metadata i64 %24, metadata !339, metadata !DIExpression()) #6, !dbg !393
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !394
  br label %32, !dbg !395

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !396, !tbaa !119
  br label %32, !dbg !397

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !398, !tbaa !119
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !399, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !400
  call void @llvm.dbg.value(metadata i64 %29, metadata !338, metadata !DIExpression()) #6, !dbg !402
  call void @llvm.dbg.value(metadata i64 %30, metadata !339, metadata !DIExpression()) #6, !dbg !403
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !404
  br label %32, !dbg !405

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ], !dbg !406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !407
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !407
  ret i64 %33, !dbg !407
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

declare i64 @enif_make_ulong(%struct.enif_environment_t*, i64) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_bb(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !408 {
  %4 = alloca %struct.vector*, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !410, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata i32 %1, metadata !411, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.value(metadata i64* %2, metadata !412, metadata !DIExpression()), !dbg !416
  %5 = bitcast %struct.vector** %4 to i8*, !dbg !417
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !417
  %6 = load i64, i64* %2, align 8, !dbg !418, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.vector** %4, metadata !413, metadata !DIExpression(DW_OP_deref)), !dbg !420
  %7 = call i32 @enif_get_big_num(%struct.enif_environment_t* %0, i64 %6, %struct.vector** nonnull %4), !dbg !421
  %8 = icmp eq i32 %7, 0, !dbg !422
  br i1 %8, label %9, label %11, !dbg !423, !prof !213

; <label>:9:                                      ; preds = %3
  %10 = load i64, i64* @arithmetic_error, align 8, !dbg !424, !tbaa !119
  br label %20, !dbg !426

; <label>:11:                                     ; preds = %3
  %12 = load %struct.vector*, %struct.vector** %4, align 8, !dbg !427, !tbaa !207
  call void @llvm.dbg.value(metadata %struct.vector* %12, metadata !413, metadata !DIExpression()), !dbg !420
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %12, i64 0, i32 1, !dbg !428
  %14 = bitcast i32** %13 to i8**, !dbg !428
  %15 = load i8*, i8** %14, align 8, !dbg !428, !tbaa !288
  tail call void @enif_free(i8* %15) #6, !dbg !429
  %16 = bitcast %struct.vector* %12 to i8*, !dbg !430
  call void @llvm.dbg.value(metadata %struct.vector** %4, metadata !413, metadata !DIExpression(DW_OP_deref)), !dbg !420
  tail call void @enif_free(i8* %16) #6, !dbg !431
  %17 = load i64, i64* @error_atom, align 8, !dbg !432, !tbaa !119
  %18 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !433, !tbaa !119
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !434
  call void @llvm.dbg.value(metadata i64 %17, metadata !338, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i64 %18, metadata !339, metadata !DIExpression()) #6, !dbg !437
  %19 = tail call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %17, i64 %18) #6, !dbg !438
  br label %20, !dbg !439

; <label>:20:                                     ; preds = %11, %9
  %21 = phi i64 [ %10, %9 ], [ %19, %11 ], !dbg !440
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !441
  ret i64 %21, !dbg !441
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !442 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !444, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.value(metadata i32 %1, metadata !445, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata i64* %2, metadata !446, metadata !DIExpression()), !dbg !452
  %6 = bitcast i64* %4 to i8*, !dbg !453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !453
  %7 = bitcast double* %5 to i8*, !dbg !454
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !454
  %8 = load i64, i64* %2, align 8, !dbg !455, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %4, metadata !447, metadata !DIExpression(DW_OP_deref)), !dbg !457
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !458
  %10 = icmp eq i32 %9, 0, !dbg !459
  br i1 %10, label %24, label %11, !dbg !460, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !461
  %13 = load i64, i64* %12, align 8, !dbg !461, !tbaa !119
  call void @llvm.dbg.value(metadata double* %5, metadata !448, metadata !DIExpression(DW_OP_deref)), !dbg !463
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !464
  %15 = icmp eq i32 %14, 0, !dbg !465
  br i1 %15, label %24, label %16, !dbg !466, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !467, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %17, metadata !447, metadata !DIExpression()), !dbg !457
  %18 = sitofp i64 %17 to double, !dbg !468
  %19 = load double, double* %5, align 8, !dbg !469, !tbaa !470
  call void @llvm.dbg.value(metadata double %19, metadata !448, metadata !DIExpression()), !dbg !463
  %20 = fadd double %19, %18, !dbg !472
  call void @llvm.dbg.value(metadata double %20, metadata !449, metadata !DIExpression()), !dbg !473
  %21 = load i64, i64* @ok_atom, align 8, !dbg !474, !tbaa !119
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !475
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !476
  call void @llvm.dbg.value(metadata i64 %21, metadata !338, metadata !DIExpression()) #6, !dbg !478
  call void @llvm.dbg.value(metadata i64 %22, metadata !339, metadata !DIExpression()) #6, !dbg !479
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !480
  br label %26, !dbg !481

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !482, !tbaa !119
  br label %26, !dbg !483

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !484
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !485
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !485
  ret i64 %27, !dbg !485
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #0

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_uf(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !486 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !488, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32 %1, metadata !489, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i64* %2, metadata !490, metadata !DIExpression()), !dbg !496
  %6 = bitcast i64* %4 to i8*, !dbg !497
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !497
  %7 = bitcast double* %5 to i8*, !dbg !498
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !498
  %8 = load i64, i64* %2, align 8, !dbg !499, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %4, metadata !491, metadata !DIExpression(DW_OP_deref)), !dbg !501
  %9 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !502
  %10 = icmp eq i32 %9, 0, !dbg !503
  br i1 %10, label %24, label %11, !dbg !504, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !505
  %13 = load i64, i64* %12, align 8, !dbg !505, !tbaa !119
  call void @llvm.dbg.value(metadata double* %5, metadata !492, metadata !DIExpression(DW_OP_deref)), !dbg !507
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !508
  %15 = icmp eq i32 %14, 0, !dbg !509
  br i1 %15, label %24, label %16, !dbg !510, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !511, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %17, metadata !491, metadata !DIExpression()), !dbg !501
  %18 = uitofp i64 %17 to double, !dbg !512
  %19 = load double, double* %5, align 8, !dbg !513, !tbaa !470
  call void @llvm.dbg.value(metadata double %19, metadata !492, metadata !DIExpression()), !dbg !507
  %20 = fadd double %19, %18, !dbg !514
  call void @llvm.dbg.value(metadata double %20, metadata !493, metadata !DIExpression()), !dbg !515
  %21 = load i64, i64* @ok_atom, align 8, !dbg !516, !tbaa !119
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !517
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !518
  call void @llvm.dbg.value(metadata i64 %21, metadata !338, metadata !DIExpression()) #6, !dbg !520
  call void @llvm.dbg.value(metadata i64 %22, metadata !339, metadata !DIExpression()) #6, !dbg !521
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !522
  br label %26, !dbg !523

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !524, !tbaa !119
  br label %26, !dbg !525

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !526
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !527
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !527
  ret i64 %27, !dbg !527
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !528 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !530, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.value(metadata i32 %1, metadata !531, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.value(metadata i64* %2, metadata !532, metadata !DIExpression()), !dbg !538
  %6 = bitcast double* %4 to i8*, !dbg !539
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !539
  %7 = bitcast i64* %5 to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !540
  %8 = load i64, i64* %2, align 8, !dbg !541, !tbaa !119
  call void @llvm.dbg.value(metadata double* %4, metadata !533, metadata !DIExpression(DW_OP_deref)), !dbg !543
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !544
  %10 = icmp eq i32 %9, 0, !dbg !545
  br i1 %10, label %24, label %11, !dbg !546, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !547
  %13 = load i64, i64* %12, align 8, !dbg !547, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %5, metadata !534, metadata !DIExpression(DW_OP_deref)), !dbg !549
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !550
  %15 = icmp eq i32 %14, 0, !dbg !551
  br i1 %15, label %24, label %16, !dbg !552, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !553, !tbaa !470
  call void @llvm.dbg.value(metadata double %17, metadata !533, metadata !DIExpression()), !dbg !543
  %18 = load i64, i64* %5, align 8, !dbg !554, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %18, metadata !534, metadata !DIExpression()), !dbg !549
  %19 = sitofp i64 %18 to double, !dbg !555
  %20 = fadd double %17, %19, !dbg !556
  call void @llvm.dbg.value(metadata double %20, metadata !535, metadata !DIExpression()), !dbg !557
  %21 = load i64, i64* @ok_atom, align 8, !dbg !558, !tbaa !119
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !559
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !560
  call void @llvm.dbg.value(metadata i64 %21, metadata !338, metadata !DIExpression()) #6, !dbg !562
  call void @llvm.dbg.value(metadata i64 %22, metadata !339, metadata !DIExpression()) #6, !dbg !563
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !564
  br label %26, !dbg !565

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !566, !tbaa !119
  br label %26, !dbg !567

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !569
  ret i64 %27, !dbg !569
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fu(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !570 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !572, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata i32 %1, metadata !573, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i64* %2, metadata !574, metadata !DIExpression()), !dbg !580
  %6 = bitcast double* %4 to i8*, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !581
  %7 = bitcast i64* %5 to i8*, !dbg !582
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !582
  %8 = load i64, i64* %2, align 8, !dbg !583, !tbaa !119
  call void @llvm.dbg.value(metadata double* %4, metadata !575, metadata !DIExpression(DW_OP_deref)), !dbg !585
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !586
  %10 = icmp eq i32 %9, 0, !dbg !587
  br i1 %10, label %24, label %11, !dbg !588, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !589
  %13 = load i64, i64* %12, align 8, !dbg !589, !tbaa !119
  call void @llvm.dbg.value(metadata i64* %5, metadata !576, metadata !DIExpression(DW_OP_deref)), !dbg !591
  %14 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !592
  %15 = icmp eq i32 %14, 0, !dbg !593
  br i1 %15, label %24, label %16, !dbg !594, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !595, !tbaa !470
  call void @llvm.dbg.value(metadata double %17, metadata !575, metadata !DIExpression()), !dbg !585
  %18 = load i64, i64* %5, align 8, !dbg !596, !tbaa !119
  call void @llvm.dbg.value(metadata i64 %18, metadata !576, metadata !DIExpression()), !dbg !591
  %19 = uitofp i64 %18 to double, !dbg !597
  %20 = fadd double %17, %19, !dbg !598
  call void @llvm.dbg.value(metadata double %20, metadata !577, metadata !DIExpression()), !dbg !599
  %21 = load i64, i64* @ok_atom, align 8, !dbg !600, !tbaa !119
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !601
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !602
  call void @llvm.dbg.value(metadata i64 %21, metadata !338, metadata !DIExpression()) #6, !dbg !604
  call void @llvm.dbg.value(metadata i64 %22, metadata !339, metadata !DIExpression()) #6, !dbg !605
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !606
  br label %26, !dbg !607

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !608, !tbaa !119
  br label %26, !dbg !609

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !610
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !611
  ret i64 %27, !dbg !611
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !612 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !614, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %1, metadata !615, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i64* %2, metadata !616, metadata !DIExpression()), !dbg !622
  %6 = bitcast double* %4 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !623
  %7 = bitcast double* %5 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !623
  %8 = load i64, i64* %2, align 8, !dbg !624, !tbaa !119
  call void @llvm.dbg.value(metadata double* %4, metadata !617, metadata !DIExpression(DW_OP_deref)), !dbg !626
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !627
  %10 = icmp eq i32 %9, 0, !dbg !628
  br i1 %10, label %23, label %11, !dbg !629, !prof !213

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !630
  %13 = load i64, i64* %12, align 8, !dbg !630, !tbaa !119
  call void @llvm.dbg.value(metadata double* %5, metadata !618, metadata !DIExpression(DW_OP_deref)), !dbg !632
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !633
  %15 = icmp eq i32 %14, 0, !dbg !634
  br i1 %15, label %23, label %16, !dbg !635, !prof !213

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !636, !tbaa !470
  call void @llvm.dbg.value(metadata double %17, metadata !617, metadata !DIExpression()), !dbg !626
  %18 = load double, double* %5, align 8, !dbg !637, !tbaa !470
  call void @llvm.dbg.value(metadata double %18, metadata !618, metadata !DIExpression()), !dbg !632
  %19 = fadd double %17, %18, !dbg !638
  call void @llvm.dbg.value(metadata double %19, metadata !619, metadata !DIExpression()), !dbg !639
  %20 = load i64, i64* @ok_atom, align 8, !dbg !640, !tbaa !119
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !641
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !332, metadata !DIExpression()) #6, !dbg !642
  call void @llvm.dbg.value(metadata i64 %20, metadata !338, metadata !DIExpression()) #6, !dbg !644
  call void @llvm.dbg.value(metadata i64 %21, metadata !339, metadata !DIExpression()) #6, !dbg !645
  %22 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %20, i64 %21) #6, !dbg !646
  br label %25, !dbg !647

; <label>:23:                                     ; preds = %11, %3
  %24 = load i64, i64* @arithmetic_error, align 8, !dbg !648, !tbaa !119
  br label %25, !dbg !649

; <label>:25:                                     ; preds = %23, %16
  %26 = phi i64 [ %24, %23 ], [ %22, %16 ], !dbg !650
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !651
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !651
  ret i64 %26, !dbg !651
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #5 !dbg !55 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !652
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arithmetic_error", scope: !2, file: !3, line: 61, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !23)
!3 = !DIFile(filename: "native/lib.c", directory: "/Users/zacky/github/nif_llvm")
!4 = !{}
!5 = !{!6, !9, !10, !12, !13, !14, !15, !22}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !7, line: 43, baseType: !8)
!7 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/zacky/github/nif_llvm")
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 44, baseType: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "VECTOR", file: !3, line: 8, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vector", file: !3, line: 5, size: 128, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !17, file: !3, line: 6, baseType: !11, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !3, line: 7, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !{!24, !53, !0, !89, !91, !93}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 221, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !51)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifFunc", file: !28, line: 112, baseType: !29)
!28 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif.h", directory: "/Users/zacky/github/nif_llvm")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_func_t", file: !28, line: 106, size: 256, elements: !30)
!30 = !{!31, !34, !36, !50}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !28, line: 108, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !29, file: !28, line: 109, baseType: !35, size: 32, offset: 64)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !29, file: !28, line: 110, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !45, !11, !48}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERL_NIF_TERM", file: !28, line: 88, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifUInt", file: !28, line: 84, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt", file: !43, line: 124, baseType: !44)
!43 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_drv_nif.h", directory: "/Users/zacky/github/nif_llvm")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt64", file: !43, line: 110, baseType: !9)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEnv", file: !28, line: 104, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "enif_environment_t", file: !28, line: 103, flags: DIFlagFwdDecl)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !28, line: 111, baseType: !35, size: 32, offset: 192)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "entry", scope: !55, file: !3, line: 234, type: !59, isLocal: true, isDefinition: true)
!55 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 234, type: !56, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEntry", file: !28, line: 138, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_entry_t", file: !28, line: 115, size: 768, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !68, !73, !74, !78, !82, !83, !84, !88}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !60, file: !28, line: 117, baseType: !11, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !60, file: !28, line: 118, baseType: !11, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !28, line: 119, baseType: !32, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_funcs", scope: !60, file: !28, line: 120, baseType: !11, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !60, file: !28, line: 121, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !60, file: !28, line: 122, baseType: !69, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!11, !45, !72, !40}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reload", scope: !60, file: !28, line: 123, baseType: !69, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !60, file: !28, line: 124, baseType: !75, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!11, !45, !72, !72, !40}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !60, file: !28, line: 125, baseType: !79, size: 64, offset: 448)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !45, !14}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "vm_variant", scope: !60, file: !28, line: 128, baseType: !32, size: 64, offset: 512)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !60, file: !28, line: 131, baseType: !35, size: 32, offset: 576)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sizeof_ErlNifResourceTypeInit", scope: !60, file: !28, line: 134, baseType: !85, size: 64, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 30, baseType: !87)
!86 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/zacky/github/nif_llvm")
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !7, line: 92, baseType: !9)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "min_erts", scope: !60, file: !28, line: 137, baseType: !32, size: 64, offset: 704)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ok_atom", scope: !2, file: !3, line: 62, type: !40, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "error_atom", scope: !2, file: !3, line: 63, type: !40, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "arithmetic_error_atom", scope: !2, file: !3, line: 64, type: !40, isLocal: true, isDefinition: true)
!95 = !{i32 2, !"Dwarf Version", i32 4}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 4}
!98 = !{i32 7, !"PIC Level", i32 2}
!99 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!100 = distinct !DISubprogram(name: "load", scope: !101, file: !101, line: 6, type: !70, isLocal: true, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !102)
!101 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!102 = !{!103, !104, !105}
!103 = !DILocalVariable(name: "env", arg: 1, scope: !100, file: !101, line: 6, type: !45)
!104 = !DILocalVariable(name: "priv", arg: 2, scope: !100, file: !101, line: 6, type: !72)
!105 = !DILocalVariable(name: "info", arg: 3, scope: !100, file: !101, line: 6, type: !40)
!106 = !DILocation(line: 6, column: 17, scope: !100)
!107 = !DILocation(line: 6, column: 29, scope: !100)
!108 = !DILocation(line: 6, column: 48, scope: !100)
!109 = !DILocalVariable(name: "env", arg: 1, scope: !110, file: !3, line: 66, type: !45)
!110 = distinct !DISubprogram(name: "init_nif_llvm", scope: !3, file: !3, line: 66, type: !111, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !45}
!113 = !{!109}
!114 = !DILocation(line: 66, column: 38, scope: !110, inlinedAt: !115)
!115 = distinct !DILocation(line: 8, column: 3, scope: !100)
!116 = !DILocation(line: 68, column: 48, scope: !110, inlinedAt: !115)
!117 = !DILocation(line: 68, column: 22, scope: !110, inlinedAt: !115)
!118 = !DILocation(line: 68, column: 20, scope: !110, inlinedAt: !115)
!119 = !{!120, !120, i64 0}
!120 = !{!"long", !121, i64 0}
!121 = !{!"omnipotent char", !122, i64 0}
!122 = !{!"Simple C/C++ TBAA"}
!123 = !DILocation(line: 69, column: 13, scope: !110, inlinedAt: !115)
!124 = !DILocation(line: 69, column: 11, scope: !110, inlinedAt: !115)
!125 = !DILocation(line: 70, column: 16, scope: !110, inlinedAt: !115)
!126 = !DILocation(line: 70, column: 14, scope: !110, inlinedAt: !115)
!127 = !DILocation(line: 71, column: 27, scope: !110, inlinedAt: !115)
!128 = !DILocation(line: 71, column: 25, scope: !110, inlinedAt: !115)
!129 = !DILocation(line: 9, column: 3, scope: !100)
!130 = distinct !DISubprogram(name: "unload", scope: !101, file: !101, line: 13, type: !80, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !131)
!131 = !{!132, !133}
!132 = !DILocalVariable(name: "env", arg: 1, scope: !130, file: !101, line: 13, type: !45)
!133 = !DILocalVariable(name: "priv", arg: 2, scope: !130, file: !101, line: 13, type: !14)
!134 = !DILocation(line: 13, column: 19, scope: !130)
!135 = !DILocation(line: 13, column: 30, scope: !130)
!136 = !DILocation(line: 15, column: 1, scope: !130)
!137 = distinct !DISubprogram(name: "reload", scope: !101, file: !101, line: 18, type: !70, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !138)
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: "env", arg: 1, scope: !137, file: !101, line: 18, type: !45)
!140 = !DILocalVariable(name: "priv", arg: 2, scope: !137, file: !101, line: 18, type: !72)
!141 = !DILocalVariable(name: "info", arg: 3, scope: !137, file: !101, line: 18, type: !40)
!142 = !DILocation(line: 18, column: 19, scope: !137)
!143 = !DILocation(line: 18, column: 31, scope: !137)
!144 = !DILocation(line: 18, column: 50, scope: !137)
!145 = !DILocation(line: 20, column: 3, scope: !137)
!146 = distinct !DISubprogram(name: "upgrade", scope: !101, file: !101, line: 24, type: !76, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DILocalVariable(name: "env", arg: 1, scope: !146, file: !101, line: 24, type: !45)
!149 = !DILocalVariable(name: "priv", arg: 2, scope: !146, file: !101, line: 24, type: !72)
!150 = !DILocalVariable(name: "old_priv", arg: 3, scope: !146, file: !101, line: 24, type: !72)
!151 = !DILocalVariable(name: "info", arg: 4, scope: !146, file: !101, line: 24, type: !40)
!152 = !DILocation(line: 24, column: 20, scope: !146)
!153 = !DILocation(line: 24, column: 32, scope: !146)
!154 = !DILocation(line: 24, column: 45, scope: !146)
!155 = !DILocation(line: 24, column: 68, scope: !146)
!156 = !DILocation(line: 6, column: 17, scope: !100, inlinedAt: !157)
!157 = distinct !DILocation(line: 26, column: 10, scope: !146)
!158 = !DILocation(line: 6, column: 29, scope: !100, inlinedAt: !157)
!159 = !DILocation(line: 6, column: 48, scope: !100, inlinedAt: !157)
!160 = !DILocation(line: 66, column: 38, scope: !110, inlinedAt: !161)
!161 = distinct !DILocation(line: 8, column: 3, scope: !100, inlinedAt: !157)
!162 = !DILocation(line: 68, column: 48, scope: !110, inlinedAt: !161)
!163 = !DILocation(line: 68, column: 22, scope: !110, inlinedAt: !161)
!164 = !DILocation(line: 68, column: 20, scope: !110, inlinedAt: !161)
!165 = !DILocation(line: 69, column: 13, scope: !110, inlinedAt: !161)
!166 = !DILocation(line: 69, column: 11, scope: !110, inlinedAt: !161)
!167 = !DILocation(line: 70, column: 16, scope: !110, inlinedAt: !161)
!168 = !DILocation(line: 70, column: 14, scope: !110, inlinedAt: !161)
!169 = !DILocation(line: 71, column: 27, scope: !110, inlinedAt: !161)
!170 = !DILocation(line: 71, column: 25, scope: !110, inlinedAt: !161)
!171 = !DILocation(line: 26, column: 3, scope: !146)
!172 = distinct !DISubprogram(name: "enif_get_big_num", scope: !3, file: !3, line: 10, type: !173, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{!11, !45, !40, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!177 = !DILocalVariable(name: "env", arg: 1, scope: !172, file: !3, line: 10, type: !45)
!178 = !DILocalVariable(name: "term", arg: 2, scope: !172, file: !3, line: 10, type: !40)
!179 = !DILocalVariable(name: "value", arg: 3, scope: !172, file: !3, line: 10, type: !175)
!180 = !DILocalVariable(name: "tuple_arity", scope: !172, file: !3, line: 12, type: !11)
!181 = !DILocalVariable(name: "tuple", scope: !172, file: !3, line: 13, type: !48)
!182 = !DILocalVariable(name: "is_negative", scope: !172, file: !3, line: 20, type: !35)
!183 = !DILocalVariable(name: "length", scope: !172, file: !3, line: 24, type: !11)
!184 = !DILocalVariable(name: "head", scope: !172, file: !3, line: 31, type: !40)
!185 = !DILocalVariable(name: "tail", scope: !172, file: !3, line: 31, type: !40)
!186 = !DILocalVariable(name: "v", scope: !172, file: !3, line: 35, type: !13)
!187 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 44, type: !11)
!188 = distinct !DILexicalBlock(scope: !172, file: !3, line: 44, column: 3)
!189 = !DILocation(line: 10, column: 33, scope: !172)
!190 = !DILocation(line: 10, column: 51, scope: !172)
!191 = !DILocation(line: 10, column: 66, scope: !172)
!192 = !DILocation(line: 12, column: 3, scope: !172)
!193 = !DILocation(line: 13, column: 3, scope: !172)
!194 = !DILocation(line: 12, column: 7, scope: !172)
!195 = !DILocation(line: 13, column: 23, scope: !172)
!196 = !DILocation(line: 14, column: 24, scope: !197)
!197 = distinct !DILexicalBlock(scope: !172, file: !3, line: 14, column: 6)
!198 = !DILocation(line: 14, column: 72, scope: !197)
!199 = !DILocation(line: 17, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !172, file: !3, line: 17, column: 6)
!201 = !DILocation(line: 17, column: 35, scope: !200)
!202 = !DILocation(line: 14, column: 6, scope: !172)
!203 = !{!"branch_weights", i32 4000000, i32 4001}
!204 = !DILocation(line: 20, column: 3, scope: !172)
!205 = !DILocation(line: 21, column: 42, scope: !206)
!206 = distinct !DILexicalBlock(scope: !172, file: !3, line: 21, column: 6)
!207 = !{!208, !208, i64 0}
!208 = !{!"any pointer", !121, i64 0}
!209 = !DILocation(line: 20, column: 12, scope: !172)
!210 = !DILocation(line: 21, column: 24, scope: !206)
!211 = !DILocation(line: 21, column: 66, scope: !206)
!212 = !DILocation(line: 21, column: 6, scope: !172)
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !DILocation(line: 24, column: 3, scope: !172)
!215 = !DILocation(line: 25, column: 50, scope: !216)
!216 = distinct !DILexicalBlock(scope: !172, file: !3, line: 25, column: 6)
!217 = !DILocation(line: 24, column: 7, scope: !172)
!218 = !DILocation(line: 25, column: 24, scope: !216)
!219 = !DILocation(line: 25, column: 69, scope: !216)
!220 = !DILocation(line: 28, column: 24, scope: !221)
!221 = distinct !DILexicalBlock(scope: !172, file: !3, line: 28, column: 6)
!222 = !DILocation(line: 28, column: 31, scope: !221)
!223 = !DILocation(line: 25, column: 6, scope: !172)
!224 = !{!"branch_weights", i32 4001, i32 4000000}
!225 = !DILocation(line: 31, column: 3, scope: !172)
!226 = !DILocation(line: 32, column: 48, scope: !227)
!227 = distinct !DILexicalBlock(scope: !172, file: !3, line: 32, column: 6)
!228 = !DILocation(line: 31, column: 16, scope: !172)
!229 = !DILocation(line: 31, column: 22, scope: !172)
!230 = !DILocation(line: 32, column: 24, scope: !227)
!231 = !DILocation(line: 32, column: 72, scope: !227)
!232 = !DILocation(line: 32, column: 6, scope: !172)
!233 = !DILocation(line: 35, column: 74, scope: !172)
!234 = !{!235, !235, i64 0}
!235 = !{!"int", !121, i64 0}
!236 = !DILocation(line: 35, column: 72, scope: !172)
!237 = !DILocation(line: 35, column: 39, scope: !172)
!238 = !DILocation(line: 35, column: 22, scope: !172)
!239 = !DILocation(line: 35, column: 18, scope: !172)
!240 = !DILocation(line: 36, column: 26, scope: !241)
!241 = distinct !DILexicalBlock(scope: !172, file: !3, line: 36, column: 6)
!242 = !DILocation(line: 36, column: 6, scope: !172)
!243 = !DILocation(line: 39, column: 22, scope: !172)
!244 = !DILocation(line: 39, column: 10, scope: !172)
!245 = !DILocation(line: 40, column: 31, scope: !246)
!246 = distinct !DILexicalBlock(scope: !172, file: !3, line: 40, column: 6)
!247 = !DILocation(line: 40, column: 6, scope: !172)
!248 = !DILocation(line: 44, column: 11, scope: !188)
!249 = !DILocation(line: 44, column: 22, scope: !250)
!250 = distinct !DILexicalBlock(scope: !188, file: !3, line: 44, column: 3)
!251 = !DILocation(line: 44, column: 20, scope: !250)
!252 = !DILocation(line: 44, column: 3, scope: !188)
!253 = !DILocation(line: 41, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !3, line: 40, column: 45)
!255 = !DILocation(line: 42, column: 5, scope: !254)
!256 = !DILocation(line: 45, column: 47, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 45, column: 8)
!258 = distinct !DILexicalBlock(scope: !250, file: !3, line: 44, column: 35)
!259 = !DILocation(line: 45, column: 54, scope: !257)
!260 = !DILocation(line: 45, column: 26, scope: !257)
!261 = !DILocation(line: 45, column: 60, scope: !257)
!262 = !DILocation(line: 45, column: 8, scope: !258)
!263 = !DILocation(line: 46, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !3, line: 45, column: 71)
!265 = !DILocation(line: 49, column: 50, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 49, column: 8)
!267 = !DILocation(line: 49, column: 26, scope: !266)
!268 = !DILocation(line: 49, column: 70, scope: !266)
!269 = !DILocation(line: 49, column: 8, scope: !258)
!270 = !DILocation(line: 44, column: 31, scope: !250)
!271 = !DILocation(line: 50, column: 12, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 50, column: 10)
!273 = distinct !DILexicalBlock(scope: !266, file: !3, line: 49, column: 81)
!274 = !DILocation(line: 50, column: 18, scope: !272)
!275 = !DILocation(line: 50, column: 16, scope: !272)
!276 = !DILocation(line: 50, column: 10, scope: !273)
!277 = !DILocation(line: 51, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !3, line: 50, column: 26)
!279 = distinct !{!279, !252, !280}
!280 = !DILocation(line: 55, column: 3, scope: !188)
!281 = !DILocation(line: 56, column: 4, scope: !172)
!282 = !DILocation(line: 56, column: 13, scope: !172)
!283 = !DILocation(line: 56, column: 18, scope: !172)
!284 = !{!285, !235, i64 0}
!285 = !{!"vector", !235, i64 0, !208, i64 8}
!286 = !DILocation(line: 57, column: 13, scope: !172)
!287 = !DILocation(line: 57, column: 19, scope: !172)
!288 = !{!285, !208, i64 8}
!289 = !DILocation(line: 58, column: 3, scope: !172)
!290 = !DILocation(line: 0, scope: !291)
!291 = distinct !DILexicalBlock(scope: !241, file: !3, line: 36, column: 40)
!292 = !DILocation(line: 59, column: 1, scope: !172)
!293 = !DILocation(line: 0, scope: !294)
!294 = distinct !DILexicalBlock(scope: !227, file: !3, line: 32, column: 83)
!295 = !DILocation(line: 0, scope: !296)
!296 = distinct !DILexicalBlock(scope: !216, file: !3, line: 25, column: 80)
!297 = !DILocation(line: 0, scope: !298)
!298 = distinct !DILexicalBlock(scope: !206, file: !3, line: 21, column: 77)
!299 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 75, type: !38, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!300 = !{!301, !302, !303, !304, !306, !307}
!301 = !DILocalVariable(name: "env", arg: 1, scope: !299, file: !3, line: 75, type: !45)
!302 = !DILocalVariable(name: "argc", arg: 2, scope: !299, file: !3, line: 75, type: !11)
!303 = !DILocalVariable(name: "argv", arg: 3, scope: !299, file: !3, line: 75, type: !48)
!304 = !DILocalVariable(name: "a", scope: !299, file: !3, line: 77, type: !305)
!305 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!306 = !DILocalVariable(name: "b", scope: !299, file: !3, line: 77, type: !305)
!307 = !DILocalVariable(name: "result", scope: !299, file: !3, line: 85, type: !305)
!308 = !DILocation(line: 75, column: 38, scope: !299)
!309 = !DILocation(line: 75, column: 47, scope: !299)
!310 = !DILocation(line: 75, column: 72, scope: !299)
!311 = !DILocation(line: 77, column: 3, scope: !299)
!312 = !DILocation(line: 78, column: 44, scope: !313)
!313 = distinct !DILexicalBlock(scope: !299, file: !3, line: 78, column: 6)
!314 = !DILocation(line: 77, column: 8, scope: !299)
!315 = !DILocation(line: 78, column: 24, scope: !313)
!316 = !DILocation(line: 78, column: 57, scope: !313)
!317 = !DILocation(line: 78, column: 6, scope: !299)
!318 = !DILocation(line: 81, column: 44, scope: !319)
!319 = distinct !DILexicalBlock(scope: !299, file: !3, line: 81, column: 6)
!320 = !DILocation(line: 77, column: 11, scope: !299)
!321 = !DILocation(line: 81, column: 24, scope: !319)
!322 = !DILocation(line: 81, column: 57, scope: !319)
!323 = !DILocation(line: 81, column: 6, scope: !299)
!324 = !DILocation(line: 87, column: 48, scope: !325)
!325 = distinct !DILexicalBlock(scope: !299, file: !3, line: 87, column: 6)
!326 = !DILocation(line: 87, column: 51, scope: !325)
!327 = !DILocation(line: 87, column: 23, scope: !325)
!328 = !DILocation(line: 87, column: 6, scope: !299)
!329 = !DILocation(line: 85, column: 8, scope: !299)
!330 = !DILocation(line: 91, column: 32, scope: !299)
!331 = !DILocation(line: 91, column: 41, scope: !299)
!332 = !DILocalVariable(name: "env", arg: 1, scope: !333, file: !334, line: 422, type: !45)
!333 = distinct !DISubprogram(name: "enif_make_tuple2", scope: !334, file: !334, line: 422, type: !335, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !337)
!334 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h", directory: "/Users/zacky/github/nif_llvm")
!335 = !DISubroutineType(types: !336)
!336 = !{!40, !45, !40, !40}
!337 = !{!332, !338, !339}
!338 = !DILocalVariable(name: "e1", arg: 2, scope: !333, file: !334, line: 423, type: !40)
!339 = !DILocalVariable(name: "e2", arg: 3, scope: !333, file: !334, line: 424, type: !40)
!340 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !341)
!341 = distinct !DILocation(line: 91, column: 10, scope: !299)
!342 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !341)
!343 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !341)
!344 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !341)
!345 = !DILocation(line: 91, column: 3, scope: !299)
!346 = !DILocation(line: 93, column: 10, scope: !299)
!347 = !DILocation(line: 93, column: 3, scope: !299)
!348 = !DILocation(line: 95, column: 32, scope: !299)
!349 = !DILocation(line: 95, column: 44, scope: !299)
!350 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !351)
!351 = distinct !DILocation(line: 95, column: 10, scope: !299)
!352 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !351)
!353 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !351)
!354 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !351)
!355 = !DILocation(line: 95, column: 3, scope: !299)
!356 = !DILocation(line: 0, scope: !299)
!357 = !DILocation(line: 96, column: 1, scope: !299)
!358 = distinct !DISubprogram(name: "asm_1_nif_uu", scope: !3, file: !3, line: 100, type: !38, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(name: "env", arg: 1, scope: !358, file: !3, line: 100, type: !45)
!361 = !DILocalVariable(name: "argc", arg: 2, scope: !358, file: !3, line: 100, type: !11)
!362 = !DILocalVariable(name: "argv", arg: 3, scope: !358, file: !3, line: 100, type: !48)
!363 = !DILocalVariable(name: "a", scope: !358, file: !3, line: 102, type: !9)
!364 = !DILocalVariable(name: "b", scope: !358, file: !3, line: 102, type: !9)
!365 = !DILocalVariable(name: "result", scope: !358, file: !3, line: 110, type: !9)
!366 = !DILocation(line: 100, column: 38, scope: !358)
!367 = !DILocation(line: 100, column: 47, scope: !358)
!368 = !DILocation(line: 100, column: 72, scope: !358)
!369 = !DILocation(line: 102, column: 3, scope: !358)
!370 = !DILocation(line: 103, column: 45, scope: !371)
!371 = distinct !DILexicalBlock(scope: !358, file: !3, line: 103, column: 6)
!372 = !DILocation(line: 102, column: 17, scope: !358)
!373 = !DILocation(line: 103, column: 24, scope: !371)
!374 = !DILocation(line: 103, column: 58, scope: !371)
!375 = !DILocation(line: 103, column: 6, scope: !358)
!376 = !DILocation(line: 106, column: 45, scope: !377)
!377 = distinct !DILexicalBlock(scope: !358, file: !3, line: 106, column: 6)
!378 = !DILocation(line: 102, column: 20, scope: !358)
!379 = !DILocation(line: 106, column: 24, scope: !377)
!380 = !DILocation(line: 106, column: 58, scope: !377)
!381 = !DILocation(line: 106, column: 6, scope: !358)
!382 = !DILocation(line: 112, column: 48, scope: !383)
!383 = distinct !DILexicalBlock(scope: !358, file: !3, line: 112, column: 6)
!384 = !DILocation(line: 112, column: 51, scope: !383)
!385 = !DILocation(line: 112, column: 23, scope: !383)
!386 = !DILocation(line: 112, column: 6, scope: !358)
!387 = !DILocation(line: 110, column: 17, scope: !358)
!388 = !DILocation(line: 116, column: 32, scope: !358)
!389 = !DILocation(line: 116, column: 41, scope: !358)
!390 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !391)
!391 = distinct !DILocation(line: 116, column: 10, scope: !358)
!392 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !391)
!393 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !391)
!394 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !391)
!395 = !DILocation(line: 116, column: 3, scope: !358)
!396 = !DILocation(line: 118, column: 10, scope: !358)
!397 = !DILocation(line: 118, column: 3, scope: !358)
!398 = !DILocation(line: 120, column: 32, scope: !358)
!399 = !DILocation(line: 120, column: 44, scope: !358)
!400 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !401)
!401 = distinct !DILocation(line: 120, column: 10, scope: !358)
!402 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !401)
!403 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !401)
!404 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !401)
!405 = !DILocation(line: 120, column: 3, scope: !358)
!406 = !DILocation(line: 0, scope: !358)
!407 = !DILocation(line: 121, column: 1, scope: !358)
!408 = distinct !DISubprogram(name: "asm_1_nif_bb", scope: !3, file: !3, line: 124, type: !38, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !409)
!409 = !{!410, !411, !412, !413}
!410 = !DILocalVariable(name: "env", arg: 1, scope: !408, file: !3, line: 124, type: !45)
!411 = !DILocalVariable(name: "argc", arg: 2, scope: !408, file: !3, line: 124, type: !11)
!412 = !DILocalVariable(name: "argv", arg: 3, scope: !408, file: !3, line: 124, type: !48)
!413 = !DILocalVariable(name: "a", scope: !408, file: !3, line: 126, type: !15)
!414 = !DILocation(line: 124, column: 38, scope: !408)
!415 = !DILocation(line: 124, column: 47, scope: !408)
!416 = !DILocation(line: 124, column: 72, scope: !408)
!417 = !DILocation(line: 126, column: 3, scope: !408)
!418 = !DILocation(line: 127, column: 46, scope: !419)
!419 = distinct !DILexicalBlock(scope: !408, file: !3, line: 127, column: 6)
!420 = !DILocation(line: 126, column: 11, scope: !408)
!421 = !DILocation(line: 127, column: 24, scope: !419)
!422 = !DILocation(line: 127, column: 59, scope: !419)
!423 = !DILocation(line: 127, column: 6, scope: !408)
!424 = !DILocation(line: 128, column: 12, scope: !425)
!425 = distinct !DILexicalBlock(scope: !419, file: !3, line: 127, column: 70)
!426 = !DILocation(line: 128, column: 5, scope: !425)
!427 = !DILocation(line: 131, column: 13, scope: !408)
!428 = !DILocation(line: 131, column: 16, scope: !408)
!429 = !DILocation(line: 131, column: 3, scope: !408)
!430 = !DILocation(line: 132, column: 13, scope: !408)
!431 = !DILocation(line: 132, column: 3, scope: !408)
!432 = !DILocation(line: 133, column: 32, scope: !408)
!433 = !DILocation(line: 133, column: 44, scope: !408)
!434 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !435)
!435 = distinct !DILocation(line: 133, column: 10, scope: !408)
!436 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !435)
!437 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !435)
!438 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !435)
!439 = !DILocation(line: 133, column: 3, scope: !408)
!440 = !DILocation(line: 0, scope: !408)
!441 = !DILocation(line: 134, column: 1, scope: !408)
!442 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 137, type: !38, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !443)
!443 = !{!444, !445, !446, !447, !448, !449}
!444 = !DILocalVariable(name: "env", arg: 1, scope: !442, file: !3, line: 137, type: !45)
!445 = !DILocalVariable(name: "argc", arg: 2, scope: !442, file: !3, line: 137, type: !11)
!446 = !DILocalVariable(name: "argv", arg: 3, scope: !442, file: !3, line: 137, type: !48)
!447 = !DILocalVariable(name: "a", scope: !442, file: !3, line: 139, type: !305)
!448 = !DILocalVariable(name: "b", scope: !442, file: !3, line: 140, type: !22)
!449 = !DILocalVariable(name: "result", scope: !442, file: !3, line: 147, type: !22)
!450 = !DILocation(line: 137, column: 38, scope: !442)
!451 = !DILocation(line: 137, column: 47, scope: !442)
!452 = !DILocation(line: 137, column: 72, scope: !442)
!453 = !DILocation(line: 139, column: 3, scope: !442)
!454 = !DILocation(line: 140, column: 3, scope: !442)
!455 = !DILocation(line: 141, column: 44, scope: !456)
!456 = distinct !DILexicalBlock(scope: !442, file: !3, line: 141, column: 6)
!457 = !DILocation(line: 139, column: 8, scope: !442)
!458 = !DILocation(line: 141, column: 24, scope: !456)
!459 = !DILocation(line: 141, column: 57, scope: !456)
!460 = !DILocation(line: 141, column: 6, scope: !442)
!461 = !DILocation(line: 144, column: 45, scope: !462)
!462 = distinct !DILexicalBlock(scope: !442, file: !3, line: 144, column: 6)
!463 = !DILocation(line: 140, column: 10, scope: !442)
!464 = !DILocation(line: 144, column: 24, scope: !462)
!465 = !DILocation(line: 144, column: 58, scope: !462)
!466 = !DILocation(line: 144, column: 6, scope: !442)
!467 = !DILocation(line: 147, column: 28, scope: !442)
!468 = !DILocation(line: 147, column: 20, scope: !442)
!469 = !DILocation(line: 147, column: 33, scope: !442)
!470 = !{!471, !471, i64 0}
!471 = !{!"double", !121, i64 0}
!472 = !DILocation(line: 147, column: 31, scope: !442)
!473 = !DILocation(line: 147, column: 10, scope: !442)
!474 = !DILocation(line: 148, column: 32, scope: !442)
!475 = !DILocation(line: 148, column: 41, scope: !442)
!476 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !477)
!477 = distinct !DILocation(line: 148, column: 10, scope: !442)
!478 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !477)
!479 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !477)
!480 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !477)
!481 = !DILocation(line: 148, column: 3, scope: !442)
!482 = !DILocation(line: 150, column: 10, scope: !442)
!483 = !DILocation(line: 150, column: 3, scope: !442)
!484 = !DILocation(line: 0, scope: !442)
!485 = !DILocation(line: 151, column: 1, scope: !442)
!486 = distinct !DISubprogram(name: "asm_1_nif_uf", scope: !3, file: !3, line: 155, type: !38, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !487)
!487 = !{!488, !489, !490, !491, !492, !493}
!488 = !DILocalVariable(name: "env", arg: 1, scope: !486, file: !3, line: 155, type: !45)
!489 = !DILocalVariable(name: "argc", arg: 2, scope: !486, file: !3, line: 155, type: !11)
!490 = !DILocalVariable(name: "argv", arg: 3, scope: !486, file: !3, line: 155, type: !48)
!491 = !DILocalVariable(name: "a", scope: !486, file: !3, line: 157, type: !9)
!492 = !DILocalVariable(name: "b", scope: !486, file: !3, line: 158, type: !22)
!493 = !DILocalVariable(name: "result", scope: !486, file: !3, line: 165, type: !22)
!494 = !DILocation(line: 155, column: 38, scope: !486)
!495 = !DILocation(line: 155, column: 47, scope: !486)
!496 = !DILocation(line: 155, column: 72, scope: !486)
!497 = !DILocation(line: 157, column: 3, scope: !486)
!498 = !DILocation(line: 158, column: 3, scope: !486)
!499 = !DILocation(line: 159, column: 45, scope: !500)
!500 = distinct !DILexicalBlock(scope: !486, file: !3, line: 159, column: 6)
!501 = !DILocation(line: 157, column: 17, scope: !486)
!502 = !DILocation(line: 159, column: 24, scope: !500)
!503 = !DILocation(line: 159, column: 58, scope: !500)
!504 = !DILocation(line: 159, column: 6, scope: !486)
!505 = !DILocation(line: 162, column: 45, scope: !506)
!506 = distinct !DILexicalBlock(scope: !486, file: !3, line: 162, column: 6)
!507 = !DILocation(line: 158, column: 10, scope: !486)
!508 = !DILocation(line: 162, column: 24, scope: !506)
!509 = !DILocation(line: 162, column: 58, scope: !506)
!510 = !DILocation(line: 162, column: 6, scope: !486)
!511 = !DILocation(line: 165, column: 28, scope: !486)
!512 = !DILocation(line: 165, column: 20, scope: !486)
!513 = !DILocation(line: 165, column: 33, scope: !486)
!514 = !DILocation(line: 165, column: 31, scope: !486)
!515 = !DILocation(line: 165, column: 10, scope: !486)
!516 = !DILocation(line: 166, column: 32, scope: !486)
!517 = !DILocation(line: 166, column: 41, scope: !486)
!518 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !519)
!519 = distinct !DILocation(line: 166, column: 10, scope: !486)
!520 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !519)
!521 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !519)
!522 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !519)
!523 = !DILocation(line: 166, column: 3, scope: !486)
!524 = !DILocation(line: 168, column: 10, scope: !486)
!525 = !DILocation(line: 168, column: 3, scope: !486)
!526 = !DILocation(line: 0, scope: !486)
!527 = !DILocation(line: 169, column: 1, scope: !486)
!528 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 172, type: !38, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !529)
!529 = !{!530, !531, !532, !533, !534, !535}
!530 = !DILocalVariable(name: "env", arg: 1, scope: !528, file: !3, line: 172, type: !45)
!531 = !DILocalVariable(name: "argc", arg: 2, scope: !528, file: !3, line: 172, type: !11)
!532 = !DILocalVariable(name: "argv", arg: 3, scope: !528, file: !3, line: 172, type: !48)
!533 = !DILocalVariable(name: "a", scope: !528, file: !3, line: 174, type: !22)
!534 = !DILocalVariable(name: "b", scope: !528, file: !3, line: 175, type: !305)
!535 = !DILocalVariable(name: "result", scope: !528, file: !3, line: 182, type: !22)
!536 = !DILocation(line: 172, column: 38, scope: !528)
!537 = !DILocation(line: 172, column: 47, scope: !528)
!538 = !DILocation(line: 172, column: 72, scope: !528)
!539 = !DILocation(line: 174, column: 3, scope: !528)
!540 = !DILocation(line: 175, column: 3, scope: !528)
!541 = !DILocation(line: 176, column: 45, scope: !542)
!542 = distinct !DILexicalBlock(scope: !528, file: !3, line: 176, column: 6)
!543 = !DILocation(line: 174, column: 10, scope: !528)
!544 = !DILocation(line: 176, column: 24, scope: !542)
!545 = !DILocation(line: 176, column: 58, scope: !542)
!546 = !DILocation(line: 176, column: 6, scope: !528)
!547 = !DILocation(line: 179, column: 44, scope: !548)
!548 = distinct !DILexicalBlock(scope: !528, file: !3, line: 179, column: 6)
!549 = !DILocation(line: 175, column: 8, scope: !528)
!550 = !DILocation(line: 179, column: 24, scope: !548)
!551 = !DILocation(line: 179, column: 57, scope: !548)
!552 = !DILocation(line: 179, column: 6, scope: !528)
!553 = !DILocation(line: 182, column: 19, scope: !528)
!554 = !DILocation(line: 182, column: 33, scope: !528)
!555 = !DILocation(line: 182, column: 24, scope: !528)
!556 = !DILocation(line: 182, column: 21, scope: !528)
!557 = !DILocation(line: 182, column: 10, scope: !528)
!558 = !DILocation(line: 183, column: 32, scope: !528)
!559 = !DILocation(line: 183, column: 41, scope: !528)
!560 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !561)
!561 = distinct !DILocation(line: 183, column: 10, scope: !528)
!562 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !561)
!563 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !561)
!564 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !561)
!565 = !DILocation(line: 183, column: 3, scope: !528)
!566 = !DILocation(line: 185, column: 10, scope: !528)
!567 = !DILocation(line: 185, column: 3, scope: !528)
!568 = !DILocation(line: 0, scope: !528)
!569 = !DILocation(line: 186, column: 1, scope: !528)
!570 = distinct !DISubprogram(name: "asm_1_nif_fu", scope: !3, file: !3, line: 189, type: !38, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !571)
!571 = !{!572, !573, !574, !575, !576, !577}
!572 = !DILocalVariable(name: "env", arg: 1, scope: !570, file: !3, line: 189, type: !45)
!573 = !DILocalVariable(name: "argc", arg: 2, scope: !570, file: !3, line: 189, type: !11)
!574 = !DILocalVariable(name: "argv", arg: 3, scope: !570, file: !3, line: 189, type: !48)
!575 = !DILocalVariable(name: "a", scope: !570, file: !3, line: 191, type: !22)
!576 = !DILocalVariable(name: "b", scope: !570, file: !3, line: 192, type: !9)
!577 = !DILocalVariable(name: "result", scope: !570, file: !3, line: 199, type: !22)
!578 = !DILocation(line: 189, column: 38, scope: !570)
!579 = !DILocation(line: 189, column: 47, scope: !570)
!580 = !DILocation(line: 189, column: 72, scope: !570)
!581 = !DILocation(line: 191, column: 3, scope: !570)
!582 = !DILocation(line: 192, column: 3, scope: !570)
!583 = !DILocation(line: 193, column: 45, scope: !584)
!584 = distinct !DILexicalBlock(scope: !570, file: !3, line: 193, column: 6)
!585 = !DILocation(line: 191, column: 10, scope: !570)
!586 = !DILocation(line: 193, column: 24, scope: !584)
!587 = !DILocation(line: 193, column: 58, scope: !584)
!588 = !DILocation(line: 193, column: 6, scope: !570)
!589 = !DILocation(line: 196, column: 45, scope: !590)
!590 = distinct !DILexicalBlock(scope: !570, file: !3, line: 196, column: 6)
!591 = !DILocation(line: 192, column: 17, scope: !570)
!592 = !DILocation(line: 196, column: 24, scope: !590)
!593 = !DILocation(line: 196, column: 58, scope: !590)
!594 = !DILocation(line: 196, column: 6, scope: !570)
!595 = !DILocation(line: 199, column: 19, scope: !570)
!596 = !DILocation(line: 199, column: 33, scope: !570)
!597 = !DILocation(line: 199, column: 24, scope: !570)
!598 = !DILocation(line: 199, column: 21, scope: !570)
!599 = !DILocation(line: 199, column: 10, scope: !570)
!600 = !DILocation(line: 200, column: 32, scope: !570)
!601 = !DILocation(line: 200, column: 41, scope: !570)
!602 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !603)
!603 = distinct !DILocation(line: 200, column: 10, scope: !570)
!604 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !603)
!605 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !603)
!606 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !603)
!607 = !DILocation(line: 200, column: 3, scope: !570)
!608 = !DILocation(line: 202, column: 10, scope: !570)
!609 = !DILocation(line: 202, column: 3, scope: !570)
!610 = !DILocation(line: 0, scope: !570)
!611 = !DILocation(line: 203, column: 1, scope: !570)
!612 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 205, type: !38, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !613)
!613 = !{!614, !615, !616, !617, !618, !619}
!614 = !DILocalVariable(name: "env", arg: 1, scope: !612, file: !3, line: 205, type: !45)
!615 = !DILocalVariable(name: "argc", arg: 2, scope: !612, file: !3, line: 205, type: !11)
!616 = !DILocalVariable(name: "argv", arg: 3, scope: !612, file: !3, line: 205, type: !48)
!617 = !DILocalVariable(name: "a", scope: !612, file: !3, line: 207, type: !22)
!618 = !DILocalVariable(name: "b", scope: !612, file: !3, line: 207, type: !22)
!619 = !DILocalVariable(name: "result", scope: !612, file: !3, line: 214, type: !22)
!620 = !DILocation(line: 205, column: 38, scope: !612)
!621 = !DILocation(line: 205, column: 47, scope: !612)
!622 = !DILocation(line: 205, column: 72, scope: !612)
!623 = !DILocation(line: 207, column: 3, scope: !612)
!624 = !DILocation(line: 208, column: 45, scope: !625)
!625 = distinct !DILexicalBlock(scope: !612, file: !3, line: 208, column: 6)
!626 = !DILocation(line: 207, column: 10, scope: !612)
!627 = !DILocation(line: 208, column: 24, scope: !625)
!628 = !DILocation(line: 208, column: 58, scope: !625)
!629 = !DILocation(line: 208, column: 6, scope: !612)
!630 = !DILocation(line: 211, column: 45, scope: !631)
!631 = distinct !DILexicalBlock(scope: !612, file: !3, line: 211, column: 6)
!632 = !DILocation(line: 207, column: 13, scope: !612)
!633 = !DILocation(line: 211, column: 24, scope: !631)
!634 = !DILocation(line: 211, column: 58, scope: !631)
!635 = !DILocation(line: 211, column: 6, scope: !612)
!636 = !DILocation(line: 214, column: 19, scope: !612)
!637 = !DILocation(line: 214, column: 23, scope: !612)
!638 = !DILocation(line: 214, column: 21, scope: !612)
!639 = !DILocation(line: 214, column: 10, scope: !612)
!640 = !DILocation(line: 215, column: 32, scope: !612)
!641 = !DILocation(line: 215, column: 41, scope: !612)
!642 = !DILocation(line: 422, column: 64, scope: !333, inlinedAt: !643)
!643 = distinct !DILocation(line: 215, column: 10, scope: !612)
!644 = !DILocation(line: 423, column: 24, scope: !333, inlinedAt: !643)
!645 = !DILocation(line: 424, column: 24, scope: !333, inlinedAt: !643)
!646 = !DILocation(line: 426, column: 12, scope: !333, inlinedAt: !643)
!647 = !DILocation(line: 215, column: 3, scope: !612)
!648 = !DILocation(line: 217, column: 10, scope: !612)
!649 = !DILocation(line: 217, column: 3, scope: !612)
!650 = !DILocation(line: 0, scope: !612)
!651 = !DILocation(line: 218, column: 1, scope: !612)
!652 = !DILocation(line: 234, column: 1, scope: !55)
