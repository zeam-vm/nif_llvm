; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@error_atom = internal unnamed_addr global i64 0, align 8, !dbg !81
@.str.2 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [4 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !15
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 4, %struct.enif_func_t* getelementptr inbounds ([4 x %struct.enif_func_t], [4 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0) }, align 8, !dbg !44
@.str.6 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

; Function Attrs: nounwind ssp uwtable
define internal i32 @load(%struct.enif_environment_t*, i8** nocapture readnone, i64) #0 !dbg !88 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata i8** %1, metadata !92, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i64 %2, metadata !93, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !97, metadata !DIExpression()) #6, !dbg !102
  %4 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !104
  %5 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %4) #6, !dbg !105
  store i64 %5, i64* @arithmetic_error, align 8, !dbg !106, !tbaa !107
  %6 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !111
  store i64 %6, i64* @error_atom, align 8, !dbg !112, !tbaa !107
  ret i32 0, !dbg !113
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #1 !dbg !114 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !116, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i8* %1, metadata !117, metadata !DIExpression()), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #1 !dbg !121 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8** %1, metadata !124, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.value(metadata i64 %2, metadata !125, metadata !DIExpression()), !dbg !128
  ret i32 0, !dbg !129
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t*, i8** nocapture readnone, i8** nocapture readnone, i64) #0 !dbg !130 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !132, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i8** %1, metadata !133, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i8** %2, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 %3, metadata !135, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !91, metadata !DIExpression()) #6, !dbg !140
  call void @llvm.dbg.value(metadata i8** %1, metadata !92, metadata !DIExpression()) #6, !dbg !142
  call void @llvm.dbg.value(metadata i64 %3, metadata !93, metadata !DIExpression()) #6, !dbg !143
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !97, metadata !DIExpression()) #6, !dbg !144
  %5 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !146
  %6 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %5) #6, !dbg !147
  store i64 %6, i64* @arithmetic_error, align 8, !dbg !148, !tbaa !107
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !149
  store i64 %7, i64* @error_atom, align 8, !dbg !150, !tbaa !107
  ret i32 0, !dbg !151
}

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #2

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !152 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 %1, metadata !155, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64* %2, metadata !156, metadata !DIExpression()), !dbg !163
  %6 = bitcast i64* %4 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !164
  %7 = bitcast i64* %5 to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !164
  %8 = load i64, i64* %2, align 8, !dbg !165, !tbaa !107
  call void @llvm.dbg.value(metadata i64* %4, metadata !157, metadata !DIExpression()), !dbg !167
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !168
  %10 = icmp eq i32 %9, 0, !dbg !169
  br i1 %10, label %26, label %11, !dbg !170, !prof !171

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !172
  %13 = load i64, i64* %12, align 8, !dbg !172, !tbaa !107
  call void @llvm.dbg.value(metadata i64* %5, metadata !159, metadata !DIExpression()), !dbg !174
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !175
  %15 = icmp eq i32 %14, 0, !dbg !176
  br i1 %15, label %26, label %16, !dbg !177, !prof !171

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !178, !tbaa !107
  call void @llvm.dbg.value(metadata i64 %17, metadata !157, metadata !DIExpression()), !dbg !167
  %18 = load i64, i64* %5, align 8, !dbg !180, !tbaa !107
  call void @llvm.dbg.value(metadata i64 %18, metadata !159, metadata !DIExpression()), !dbg !174
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %18), !dbg !181
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !181
  call void @llvm.dbg.value(metadata i64 %24, metadata !160, metadata !DIExpression()), !dbg !182
  br i1 %20, label %21, label %23, !dbg !183, !prof !171

; <label>:21:                                     ; preds = %16
  %22 = load i64, i64* @error_atom, align 8, !dbg !184, !tbaa !107
  br label %28, !dbg !186

; <label>:23:                                     ; preds = %16
  %24 = extractvalue { i64, i1 } %19, 0, !dbg !181
  %25 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %24) #6, !dbg !187
  br label %28, !dbg !188

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !189, !tbaa !107
  br label %28, !dbg !190

; <label>:28:                                     ; preds = %26, %23, %21
  %29 = phi i64 [ %27, %26 ], [ %22, %21 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !191
  ret i64 %29, !dbg !191
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !192 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !194, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 %1, metadata !195, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i64* %2, metadata !196, metadata !DIExpression()), !dbg !202
  %6 = bitcast i64* %4 to i8*, !dbg !203
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !203
  %7 = bitcast double* %5 to i8*, !dbg !204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !204
  %8 = load i64, i64* %2, align 8, !dbg !205, !tbaa !107
  call void @llvm.dbg.value(metadata i64* %4, metadata !197, metadata !DIExpression()), !dbg !207
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !208
  %10 = icmp eq i32 %9, 0, !dbg !209
  br i1 %10, label %22, label %11, !dbg !210, !prof !171

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !211
  %13 = load i64, i64* %12, align 8, !dbg !211, !tbaa !107
  call void @llvm.dbg.value(metadata double* %5, metadata !198, metadata !DIExpression()), !dbg !213
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !214
  %15 = icmp eq i32 %14, 0, !dbg !215
  br i1 %15, label %22, label %16, !dbg !216, !prof !171

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !217, !tbaa !107
  call void @llvm.dbg.value(metadata i64 %17, metadata !197, metadata !DIExpression()), !dbg !207
  %18 = sitofp i64 %17 to double, !dbg !218
  %19 = load double, double* %5, align 8, !dbg !219, !tbaa !220
  call void @llvm.dbg.value(metadata double %19, metadata !198, metadata !DIExpression()), !dbg !213
  %20 = fadd double %19, %18, !dbg !222
  call void @llvm.dbg.value(metadata double %20, metadata !199, metadata !DIExpression()), !dbg !223
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !224
  br label %24, !dbg !225

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !226, !tbaa !107
  br label %24, !dbg !227

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !228
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !228
  ret i64 %25, !dbg !228
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #2

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !229 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 %1, metadata !232, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i64* %2, metadata !233, metadata !DIExpression()), !dbg !239
  %6 = bitcast double* %4 to i8*, !dbg !240
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !240
  %7 = bitcast i64* %5 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !241
  %8 = load i64, i64* %2, align 8, !dbg !242, !tbaa !107
  call void @llvm.dbg.value(metadata double* %4, metadata !234, metadata !DIExpression()), !dbg !244
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !245
  %10 = icmp eq i32 %9, 0, !dbg !246
  br i1 %10, label %22, label %11, !dbg !247, !prof !171

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !248
  %13 = load i64, i64* %12, align 8, !dbg !248, !tbaa !107
  call void @llvm.dbg.value(metadata i64* %5, metadata !235, metadata !DIExpression()), !dbg !250
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !251
  %15 = icmp eq i32 %14, 0, !dbg !252
  br i1 %15, label %22, label %16, !dbg !253, !prof !171

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !254, !tbaa !220
  call void @llvm.dbg.value(metadata double %17, metadata !234, metadata !DIExpression()), !dbg !244
  %18 = load i64, i64* %5, align 8, !dbg !255, !tbaa !107
  call void @llvm.dbg.value(metadata i64 %18, metadata !235, metadata !DIExpression()), !dbg !250
  %19 = sitofp i64 %18 to double, !dbg !256
  %20 = fadd double %17, %19, !dbg !257
  call void @llvm.dbg.value(metadata double %20, metadata !236, metadata !DIExpression()), !dbg !258
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !259
  br label %24, !dbg !260

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !261, !tbaa !107
  br label %24, !dbg !262

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !263
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !263
  ret i64 %25, !dbg !263
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !264 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %1, metadata !267, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.value(metadata i64* %2, metadata !268, metadata !DIExpression()), !dbg !274
  %6 = bitcast double* %4 to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !275
  %7 = bitcast double* %5 to i8*, !dbg !275
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !275
  %8 = load i64, i64* %2, align 8, !dbg !276, !tbaa !107
  call void @llvm.dbg.value(metadata double* %4, metadata !269, metadata !DIExpression()), !dbg !278
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !279
  %10 = icmp eq i32 %9, 0, !dbg !280
  br i1 %10, label %21, label %11, !dbg !281, !prof !171

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !282
  %13 = load i64, i64* %12, align 8, !dbg !282, !tbaa !107
  call void @llvm.dbg.value(metadata double* %5, metadata !270, metadata !DIExpression()), !dbg !284
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !285
  %15 = icmp eq i32 %14, 0, !dbg !286
  br i1 %15, label %21, label %16, !dbg !287, !prof !171

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !288, !tbaa !220
  call void @llvm.dbg.value(metadata double %17, metadata !269, metadata !DIExpression()), !dbg !278
  %18 = load double, double* %5, align 8, !dbg !289, !tbaa !220
  call void @llvm.dbg.value(metadata double %18, metadata !270, metadata !DIExpression()), !dbg !284
  %19 = fadd double %17, %18, !dbg !290
  call void @llvm.dbg.value(metadata double %19, metadata !271, metadata !DIExpression()), !dbg !291
  %20 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !292
  br label %23, !dbg !293

; <label>:21:                                     ; preds = %11, %3
  %22 = load i64, i64* @arithmetic_error, align 8, !dbg !294, !tbaa !107
  br label %23, !dbg !295

; <label>:23:                                     ; preds = %21, %16
  %24 = phi i64 [ %22, %21 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !296
  ret i64 %24, !dbg !296
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #5 !dbg !46 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !297
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arithmetic_error", scope: !2, file: !3, line: 5, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !14)
!3 = !DIFile(filename: "native/lib.c", directory: "/Users/zacky/github/nif_llvm")
!4 = !{}
!5 = !{!6, !9, !10, !12, !13}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !7, line: 43, baseType: !8)
!7 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/zacky/github/nif_llvm")
!8 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 44, baseType: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15, !44, !0, !81}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 88, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1024, elements: !42)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifFunc", file: !19, line: 112, baseType: !20)
!19 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif.h", directory: "/Users/zacky/github/nif_llvm")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_func_t", file: !19, line: 106, size: 256, elements: !21)
!21 = !{!22, !25, !27, !41}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !19, line: 108, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !20, file: !19, line: 109, baseType: !26, size: 32, offset: 64)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !20, file: !19, line: 110, baseType: !28, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !36, !11, !39}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERL_NIF_TERM", file: !19, line: 88, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifUInt", file: !19, line: 84, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt", file: !34, line: 124, baseType: !35)
!34 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_drv_nif.h", directory: "/Users/zacky/github/nif_llvm")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt64", file: !34, line: 110, baseType: !9)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEnv", file: !19, line: 104, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "enif_environment_t", file: !19, line: 103, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !20, file: !19, line: 111, baseType: !26, size: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "entry", scope: !46, file: !3, line: 97, type: !50, isLocal: true, isDefinition: true)
!46 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 97, type: !47, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!47 = !DISubroutineType(types: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEntry", file: !19, line: 138, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_entry_t", file: !19, line: 115, size: 768, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !59, !65, !66, !70, !74, !75, !76, !80}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !51, file: !19, line: 117, baseType: !11, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !51, file: !19, line: 118, baseType: !11, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !19, line: 119, baseType: !23, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_funcs", scope: !51, file: !19, line: 120, baseType: !11, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !51, file: !19, line: 121, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !51, file: !19, line: 122, baseType: !60, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!11, !36, !63, !31}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reload", scope: !51, file: !19, line: 123, baseType: !60, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !51, file: !19, line: 124, baseType: !67, size: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!11, !36, !63, !63, !31}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !51, file: !19, line: 125, baseType: !71, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !36, !64}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "vm_variant", scope: !51, file: !19, line: 128, baseType: !23, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !51, file: !19, line: 131, baseType: !26, size: 32, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sizeof_ErlNifResourceTypeInit", scope: !51, file: !19, line: 134, baseType: !77, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 31, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/zacky/github/nif_llvm")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !7, line: 92, baseType: !9)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "min_erts", scope: !51, file: !19, line: 137, baseType: !23, size: 64, offset: 704)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "error_atom", scope: !2, file: !3, line: 6, type: !31, isLocal: true, isDefinition: true)
!83 = !{i32 2, !"Dwarf Version", i32 4}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 4}
!86 = !{i32 7, !"PIC Level", i32 2}
!87 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!88 = distinct !DISubprogram(name: "load", scope: !89, file: !89, line: 6, type: !61, isLocal: true, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !90)
!89 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(name: "env", arg: 1, scope: !88, file: !89, line: 6, type: !36)
!92 = !DILocalVariable(name: "priv", arg: 2, scope: !88, file: !89, line: 6, type: !63)
!93 = !DILocalVariable(name: "info", arg: 3, scope: !88, file: !89, line: 6, type: !31)
!94 = !DILocation(line: 6, column: 17, scope: !88)
!95 = !DILocation(line: 6, column: 29, scope: !88)
!96 = !DILocation(line: 6, column: 48, scope: !88)
!97 = !DILocalVariable(name: "env", arg: 1, scope: !98, file: !3, line: 8, type: !36)
!98 = distinct !DISubprogram(name: "init_nif_llvm", scope: !3, file: !3, line: 8, type: !99, isLocal: true, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !36}
!101 = !{!97}
!102 = !DILocation(line: 8, column: 38, scope: !98, inlinedAt: !103)
!103 = distinct !DILocation(line: 8, column: 3, scope: !88)
!104 = !DILocation(line: 10, column: 47, scope: !98, inlinedAt: !103)
!105 = !DILocation(line: 10, column: 21, scope: !98, inlinedAt: !103)
!106 = !DILocation(line: 10, column: 19, scope: !98, inlinedAt: !103)
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !DILocation(line: 11, column: 15, scope: !98, inlinedAt: !103)
!112 = !DILocation(line: 11, column: 13, scope: !98, inlinedAt: !103)
!113 = !DILocation(line: 9, column: 3, scope: !88)
!114 = distinct !DISubprogram(name: "unload", scope: !89, file: !89, line: 13, type: !72, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(name: "env", arg: 1, scope: !114, file: !89, line: 13, type: !36)
!117 = !DILocalVariable(name: "priv", arg: 2, scope: !114, file: !89, line: 13, type: !64)
!118 = !DILocation(line: 13, column: 19, scope: !114)
!119 = !DILocation(line: 13, column: 30, scope: !114)
!120 = !DILocation(line: 15, column: 1, scope: !114)
!121 = distinct !DISubprogram(name: "reload", scope: !89, file: !89, line: 18, type: !61, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !122)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "env", arg: 1, scope: !121, file: !89, line: 18, type: !36)
!124 = !DILocalVariable(name: "priv", arg: 2, scope: !121, file: !89, line: 18, type: !63)
!125 = !DILocalVariable(name: "info", arg: 3, scope: !121, file: !89, line: 18, type: !31)
!126 = !DILocation(line: 18, column: 19, scope: !121)
!127 = !DILocation(line: 18, column: 31, scope: !121)
!128 = !DILocation(line: 18, column: 50, scope: !121)
!129 = !DILocation(line: 20, column: 3, scope: !121)
!130 = distinct !DISubprogram(name: "upgrade", scope: !89, file: !89, line: 24, type: !68, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !131)
!131 = !{!132, !133, !134, !135}
!132 = !DILocalVariable(name: "env", arg: 1, scope: !130, file: !89, line: 24, type: !36)
!133 = !DILocalVariable(name: "priv", arg: 2, scope: !130, file: !89, line: 24, type: !63)
!134 = !DILocalVariable(name: "old_priv", arg: 3, scope: !130, file: !89, line: 24, type: !63)
!135 = !DILocalVariable(name: "info", arg: 4, scope: !130, file: !89, line: 24, type: !31)
!136 = !DILocation(line: 24, column: 20, scope: !130)
!137 = !DILocation(line: 24, column: 32, scope: !130)
!138 = !DILocation(line: 24, column: 45, scope: !130)
!139 = !DILocation(line: 24, column: 68, scope: !130)
!140 = !DILocation(line: 6, column: 17, scope: !88, inlinedAt: !141)
!141 = distinct !DILocation(line: 26, column: 10, scope: !130)
!142 = !DILocation(line: 6, column: 29, scope: !88, inlinedAt: !141)
!143 = !DILocation(line: 6, column: 48, scope: !88, inlinedAt: !141)
!144 = !DILocation(line: 8, column: 38, scope: !98, inlinedAt: !145)
!145 = distinct !DILocation(line: 8, column: 3, scope: !88, inlinedAt: !141)
!146 = !DILocation(line: 10, column: 47, scope: !98, inlinedAt: !145)
!147 = !DILocation(line: 10, column: 21, scope: !98, inlinedAt: !145)
!148 = !DILocation(line: 10, column: 19, scope: !98, inlinedAt: !145)
!149 = !DILocation(line: 11, column: 15, scope: !98, inlinedAt: !145)
!150 = !DILocation(line: 11, column: 13, scope: !98, inlinedAt: !145)
!151 = !DILocation(line: 26, column: 3, scope: !130)
!152 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 15, type: !29, isLocal: true, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !153)
!153 = !{!154, !155, !156, !157, !159, !160}
!154 = !DILocalVariable(name: "env", arg: 1, scope: !152, file: !3, line: 15, type: !36)
!155 = !DILocalVariable(name: "argc", arg: 2, scope: !152, file: !3, line: 15, type: !11)
!156 = !DILocalVariable(name: "argv", arg: 3, scope: !152, file: !3, line: 15, type: !39)
!157 = !DILocalVariable(name: "a", scope: !152, file: !3, line: 17, type: !158)
!158 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!159 = !DILocalVariable(name: "b", scope: !152, file: !3, line: 17, type: !158)
!160 = !DILocalVariable(name: "result", scope: !152, file: !3, line: 24, type: !158)
!161 = !DILocation(line: 15, column: 38, scope: !152)
!162 = !DILocation(line: 15, column: 47, scope: !152)
!163 = !DILocation(line: 15, column: 72, scope: !152)
!164 = !DILocation(line: 17, column: 2, scope: !152)
!165 = !DILocation(line: 18, column: 43, scope: !166)
!166 = distinct !DILexicalBlock(scope: !152, file: !3, line: 18, column: 5)
!167 = !DILocation(line: 17, column: 7, scope: !152)
!168 = !DILocation(line: 18, column: 23, scope: !166)
!169 = !DILocation(line: 18, column: 56, scope: !166)
!170 = !DILocation(line: 18, column: 5, scope: !152)
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !DILocation(line: 21, column: 43, scope: !173)
!173 = distinct !DILexicalBlock(scope: !152, file: !3, line: 21, column: 5)
!174 = !DILocation(line: 17, column: 10, scope: !152)
!175 = !DILocation(line: 21, column: 23, scope: !173)
!176 = !DILocation(line: 21, column: 56, scope: !173)
!177 = !DILocation(line: 21, column: 5, scope: !152)
!178 = !DILocation(line: 26, column: 47, scope: !179)
!179 = distinct !DILexicalBlock(scope: !152, file: !3, line: 26, column: 5)
!180 = !DILocation(line: 26, column: 50, scope: !179)
!181 = !DILocation(line: 26, column: 22, scope: !179)
!182 = !DILocation(line: 24, column: 7, scope: !152)
!183 = !DILocation(line: 26, column: 5, scope: !152)
!184 = !DILocation(line: 27, column: 10, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !3, line: 26, column: 67)
!186 = !DILocation(line: 27, column: 3, scope: !185)
!187 = !DILocation(line: 30, column: 9, scope: !152)
!188 = !DILocation(line: 30, column: 2, scope: !152)
!189 = !DILocation(line: 32, column: 9, scope: !152)
!190 = !DILocation(line: 32, column: 2, scope: !152)
!191 = !DILocation(line: 35, column: 1, scope: !152)
!192 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 38, type: !29, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !193)
!193 = !{!194, !195, !196, !197, !198, !199}
!194 = !DILocalVariable(name: "env", arg: 1, scope: !192, file: !3, line: 38, type: !36)
!195 = !DILocalVariable(name: "argc", arg: 2, scope: !192, file: !3, line: 38, type: !11)
!196 = !DILocalVariable(name: "argv", arg: 3, scope: !192, file: !3, line: 38, type: !39)
!197 = !DILocalVariable(name: "a", scope: !192, file: !3, line: 40, type: !158)
!198 = !DILocalVariable(name: "b", scope: !192, file: !3, line: 41, type: !13)
!199 = !DILocalVariable(name: "result", scope: !192, file: !3, line: 48, type: !13)
!200 = !DILocation(line: 38, column: 38, scope: !192)
!201 = !DILocation(line: 38, column: 47, scope: !192)
!202 = !DILocation(line: 38, column: 72, scope: !192)
!203 = !DILocation(line: 40, column: 2, scope: !192)
!204 = !DILocation(line: 41, column: 2, scope: !192)
!205 = !DILocation(line: 42, column: 43, scope: !206)
!206 = distinct !DILexicalBlock(scope: !192, file: !3, line: 42, column: 5)
!207 = !DILocation(line: 40, column: 7, scope: !192)
!208 = !DILocation(line: 42, column: 23, scope: !206)
!209 = !DILocation(line: 42, column: 56, scope: !206)
!210 = !DILocation(line: 42, column: 5, scope: !192)
!211 = !DILocation(line: 45, column: 44, scope: !212)
!212 = distinct !DILexicalBlock(scope: !192, file: !3, line: 45, column: 5)
!213 = !DILocation(line: 41, column: 9, scope: !192)
!214 = !DILocation(line: 45, column: 23, scope: !212)
!215 = !DILocation(line: 45, column: 57, scope: !212)
!216 = !DILocation(line: 45, column: 5, scope: !192)
!217 = !DILocation(line: 48, column: 27, scope: !192)
!218 = !DILocation(line: 48, column: 19, scope: !192)
!219 = !DILocation(line: 48, column: 32, scope: !192)
!220 = !{!221, !221, i64 0}
!221 = !{!"double", !109, i64 0}
!222 = !DILocation(line: 48, column: 30, scope: !192)
!223 = !DILocation(line: 48, column: 9, scope: !192)
!224 = !DILocation(line: 49, column: 9, scope: !192)
!225 = !DILocation(line: 49, column: 2, scope: !192)
!226 = !DILocation(line: 51, column: 9, scope: !192)
!227 = !DILocation(line: 51, column: 2, scope: !192)
!228 = !DILocation(line: 52, column: 1, scope: !192)
!229 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 55, type: !29, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !230)
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DILocalVariable(name: "env", arg: 1, scope: !229, file: !3, line: 55, type: !36)
!232 = !DILocalVariable(name: "argc", arg: 2, scope: !229, file: !3, line: 55, type: !11)
!233 = !DILocalVariable(name: "argv", arg: 3, scope: !229, file: !3, line: 55, type: !39)
!234 = !DILocalVariable(name: "a", scope: !229, file: !3, line: 57, type: !13)
!235 = !DILocalVariable(name: "b", scope: !229, file: !3, line: 58, type: !158)
!236 = !DILocalVariable(name: "result", scope: !229, file: !3, line: 65, type: !13)
!237 = !DILocation(line: 55, column: 38, scope: !229)
!238 = !DILocation(line: 55, column: 47, scope: !229)
!239 = !DILocation(line: 55, column: 72, scope: !229)
!240 = !DILocation(line: 57, column: 2, scope: !229)
!241 = !DILocation(line: 58, column: 2, scope: !229)
!242 = !DILocation(line: 59, column: 44, scope: !243)
!243 = distinct !DILexicalBlock(scope: !229, file: !3, line: 59, column: 5)
!244 = !DILocation(line: 57, column: 9, scope: !229)
!245 = !DILocation(line: 59, column: 23, scope: !243)
!246 = !DILocation(line: 59, column: 57, scope: !243)
!247 = !DILocation(line: 59, column: 5, scope: !229)
!248 = !DILocation(line: 62, column: 43, scope: !249)
!249 = distinct !DILexicalBlock(scope: !229, file: !3, line: 62, column: 5)
!250 = !DILocation(line: 58, column: 7, scope: !229)
!251 = !DILocation(line: 62, column: 23, scope: !249)
!252 = !DILocation(line: 62, column: 56, scope: !249)
!253 = !DILocation(line: 62, column: 5, scope: !229)
!254 = !DILocation(line: 65, column: 18, scope: !229)
!255 = !DILocation(line: 65, column: 32, scope: !229)
!256 = !DILocation(line: 65, column: 23, scope: !229)
!257 = !DILocation(line: 65, column: 20, scope: !229)
!258 = !DILocation(line: 65, column: 9, scope: !229)
!259 = !DILocation(line: 66, column: 9, scope: !229)
!260 = !DILocation(line: 66, column: 2, scope: !229)
!261 = !DILocation(line: 68, column: 9, scope: !229)
!262 = !DILocation(line: 68, column: 2, scope: !229)
!263 = !DILocation(line: 69, column: 1, scope: !229)
!264 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 72, type: !29, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !265)
!265 = !{!266, !267, !268, !269, !270, !271}
!266 = !DILocalVariable(name: "env", arg: 1, scope: !264, file: !3, line: 72, type: !36)
!267 = !DILocalVariable(name: "argc", arg: 2, scope: !264, file: !3, line: 72, type: !11)
!268 = !DILocalVariable(name: "argv", arg: 3, scope: !264, file: !3, line: 72, type: !39)
!269 = !DILocalVariable(name: "a", scope: !264, file: !3, line: 74, type: !13)
!270 = !DILocalVariable(name: "b", scope: !264, file: !3, line: 74, type: !13)
!271 = !DILocalVariable(name: "result", scope: !264, file: !3, line: 81, type: !13)
!272 = !DILocation(line: 72, column: 38, scope: !264)
!273 = !DILocation(line: 72, column: 47, scope: !264)
!274 = !DILocation(line: 72, column: 72, scope: !264)
!275 = !DILocation(line: 74, column: 2, scope: !264)
!276 = !DILocation(line: 75, column: 44, scope: !277)
!277 = distinct !DILexicalBlock(scope: !264, file: !3, line: 75, column: 5)
!278 = !DILocation(line: 74, column: 9, scope: !264)
!279 = !DILocation(line: 75, column: 23, scope: !277)
!280 = !DILocation(line: 75, column: 57, scope: !277)
!281 = !DILocation(line: 75, column: 5, scope: !264)
!282 = !DILocation(line: 78, column: 44, scope: !283)
!283 = distinct !DILexicalBlock(scope: !264, file: !3, line: 78, column: 5)
!284 = !DILocation(line: 74, column: 12, scope: !264)
!285 = !DILocation(line: 78, column: 23, scope: !283)
!286 = !DILocation(line: 78, column: 57, scope: !283)
!287 = !DILocation(line: 78, column: 5, scope: !264)
!288 = !DILocation(line: 81, column: 18, scope: !264)
!289 = !DILocation(line: 81, column: 22, scope: !264)
!290 = !DILocation(line: 81, column: 20, scope: !264)
!291 = !DILocation(line: 81, column: 9, scope: !264)
!292 = !DILocation(line: 82, column: 9, scope: !264)
!293 = !DILocation(line: 82, column: 2, scope: !264)
!294 = !DILocation(line: 84, column: 9, scope: !264)
!295 = !DILocation(line: 84, column: 2, scope: !264)
!296 = !DILocation(line: 85, column: 1, scope: !264)
!297 = !DILocation(line: 97, column: 1, scope: !46)
