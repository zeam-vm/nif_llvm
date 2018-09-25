; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@ok_atom = internal unnamed_addr global i64 0, align 8, !dbg !81
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@error_atom = internal unnamed_addr global i64 0, align 8, !dbg !83
@.str.3 = private unnamed_addr constant [17 x i8] c"arithmetic_error\00", align 1
@arithmetic_error_atom = internal unnamed_addr global i64 0, align 8, !dbg !85
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"asm_1_nif_uu\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [5 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_uu, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !15
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 5, %struct.enif_func_t* getelementptr inbounds ([5 x %struct.enif_func_t], [5 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, align 8, !dbg !44
@.str.9 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

declare i64 @enif_make_tuple(%struct.enif_environment_t*, i32, ...) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @load(%struct.enif_environment_t*, i8** nocapture readnone, i64) #1 !dbg !92 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8** %1, metadata !96, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i64 %2, metadata !97, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !101, metadata !DIExpression()) #6, !dbg !106
  %4 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !108
  %5 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %4) #6, !dbg !109
  store i64 %5, i64* @arithmetic_error, align 8, !dbg !110, !tbaa !111
  %6 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !115
  store i64 %6, i64* @ok_atom, align 8, !dbg !116, !tbaa !111
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !117
  store i64 %7, i64* @error_atom, align 8, !dbg !118, !tbaa !111
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !119
  store i64 %8, i64* @arithmetic_error_atom, align 8, !dbg !120, !tbaa !111
  ret i32 0, !dbg !121
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #2 !dbg !122 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i8* %1, metadata !125, metadata !DIExpression()), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #2 !dbg !129 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !131, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i8** %1, metadata !132, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i64 %2, metadata !133, metadata !DIExpression()), !dbg !136
  ret i32 0, !dbg !137
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t*, i8** nocapture readnone, i8** nocapture readnone, i64) #1 !dbg !138 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i8** %1, metadata !141, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i8** %2, metadata !142, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i64 %3, metadata !143, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !95, metadata !DIExpression()) #6, !dbg !148
  call void @llvm.dbg.value(metadata i8** %1, metadata !96, metadata !DIExpression()) #6, !dbg !150
  call void @llvm.dbg.value(metadata i64 %3, metadata !97, metadata !DIExpression()) #6, !dbg !151
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !101, metadata !DIExpression()) #6, !dbg !152
  %5 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !154
  %6 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %5) #6, !dbg !155
  store i64 %6, i64* @arithmetic_error, align 8, !dbg !156, !tbaa !111
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !157
  store i64 %7, i64* @ok_atom, align 8, !dbg !158, !tbaa !111
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !159
  store i64 %8, i64* @error_atom, align 8, !dbg !160, !tbaa !111
  %9 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !161
  store i64 %9, i64* @arithmetic_error_atom, align 8, !dbg !162, !tbaa !111
  ret i32 0, !dbg !163
}

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #0

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !164 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !166, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i32 %1, metadata !167, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64* %2, metadata !168, metadata !DIExpression()), !dbg !175
  %6 = bitcast i64* %4 to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !176
  %7 = bitcast i64* %5 to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !176
  %8 = load i64, i64* %2, align 8, !dbg !177, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %4, metadata !169, metadata !DIExpression()), !dbg !179
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !180
  %10 = icmp eq i32 %9, 0, !dbg !181
  br i1 %10, label %26, label %11, !dbg !182, !prof !183

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !184
  %13 = load i64, i64* %12, align 8, !dbg !184, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %5, metadata !171, metadata !DIExpression()), !dbg !186
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !187
  %15 = icmp eq i32 %14, 0, !dbg !188
  br i1 %15, label %26, label %16, !dbg !189, !prof !183

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !190, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %17, metadata !169, metadata !DIExpression()), !dbg !179
  %18 = load i64, i64* %5, align 8, !dbg !192, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %18, metadata !171, metadata !DIExpression()), !dbg !186
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %18), !dbg !193
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %22, metadata !172, metadata !DIExpression()), !dbg !194
  br i1 %20, label %28, label %21, !dbg !195, !prof !183

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !193
  %23 = load i64, i64* @ok_atom, align 8, !dbg !196, !tbaa !111
  %24 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !197
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !206
  call void @llvm.dbg.value(metadata i64 %23, metadata !204, metadata !DIExpression()) #6, !dbg !208
  call void @llvm.dbg.value(metadata i64 %24, metadata !205, metadata !DIExpression()) #6, !dbg !209
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !210
  br label %32, !dbg !211

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !212, !tbaa !111
  br label %32, !dbg !213

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !214, !tbaa !111
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !215, !tbaa !111
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !216
  call void @llvm.dbg.value(metadata i64 %29, metadata !204, metadata !DIExpression()) #6, !dbg !218
  call void @llvm.dbg.value(metadata i64 %30, metadata !205, metadata !DIExpression()) #6, !dbg !219
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !220
  br label %32, !dbg !221

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !222
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !222
  ret i64 %33, !dbg !222
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_uu(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !223 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !225, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 %1, metadata !226, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i64* %2, metadata !227, metadata !DIExpression()), !dbg !233
  %6 = bitcast i64* %4 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !234
  %7 = bitcast i64* %5 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !234
  %8 = load i64, i64* %2, align 8, !dbg !235, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %4, metadata !228, metadata !DIExpression()), !dbg !237
  %9 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !238
  %10 = icmp eq i32 %9, 0, !dbg !239
  br i1 %10, label %26, label %11, !dbg !240, !prof !183

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !241
  %13 = load i64, i64* %12, align 8, !dbg !241, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %5, metadata !229, metadata !DIExpression()), !dbg !243
  %14 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !244
  %15 = icmp eq i32 %14, 0, !dbg !245
  br i1 %15, label %26, label %16, !dbg !246, !prof !183

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !247, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %17, metadata !228, metadata !DIExpression()), !dbg !237
  %18 = load i64, i64* %5, align 8, !dbg !249, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %18, metadata !229, metadata !DIExpression()), !dbg !243
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %18), !dbg !250
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !250
  call void @llvm.dbg.value(metadata i64 %22, metadata !230, metadata !DIExpression()), !dbg !251
  br i1 %20, label %28, label %21, !dbg !252, !prof !183

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !250
  %23 = load i64, i64* @ok_atom, align 8, !dbg !253, !tbaa !111
  %24 = call i64 @enif_make_ulong(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !254
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !255
  call void @llvm.dbg.value(metadata i64 %23, metadata !204, metadata !DIExpression()) #6, !dbg !257
  call void @llvm.dbg.value(metadata i64 %24, metadata !205, metadata !DIExpression()) #6, !dbg !258
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !259
  br label %32, !dbg !260

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !261, !tbaa !111
  br label %32, !dbg !262

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !263, !tbaa !111
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !264, !tbaa !111
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !265
  call void @llvm.dbg.value(metadata i64 %29, metadata !204, metadata !DIExpression()) #6, !dbg !267
  call void @llvm.dbg.value(metadata i64 %30, metadata !205, metadata !DIExpression()) #6, !dbg !268
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !269
  br label %32, !dbg !270

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !271
  ret i64 %33, !dbg !271
}

declare i32 @enif_get_ulong(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

declare i64 @enif_make_ulong(%struct.enif_environment_t*, i64) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !272 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32 %1, metadata !275, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i64* %2, metadata !276, metadata !DIExpression()), !dbg !282
  %6 = bitcast i64* %4 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !283
  %7 = bitcast double* %5 to i8*, !dbg !284
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !284
  %8 = load i64, i64* %2, align 8, !dbg !285, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %4, metadata !277, metadata !DIExpression()), !dbg !287
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !288
  %10 = icmp eq i32 %9, 0, !dbg !289
  br i1 %10, label %24, label %11, !dbg !290, !prof !183

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !291
  %13 = load i64, i64* %12, align 8, !dbg !291, !tbaa !111
  call void @llvm.dbg.value(metadata double* %5, metadata !278, metadata !DIExpression()), !dbg !293
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !294
  %15 = icmp eq i32 %14, 0, !dbg !295
  br i1 %15, label %24, label %16, !dbg !296, !prof !183

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !297, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %17, metadata !277, metadata !DIExpression()), !dbg !287
  %18 = sitofp i64 %17 to double, !dbg !298
  %19 = load double, double* %5, align 8, !dbg !299, !tbaa !300
  call void @llvm.dbg.value(metadata double %19, metadata !278, metadata !DIExpression()), !dbg !293
  %20 = fadd double %19, %18, !dbg !302
  call void @llvm.dbg.value(metadata double %20, metadata !279, metadata !DIExpression()), !dbg !303
  %21 = load i64, i64* @ok_atom, align 8, !dbg !304, !tbaa !111
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !305
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !306
  call void @llvm.dbg.value(metadata i64 %21, metadata !204, metadata !DIExpression()) #6, !dbg !308
  call void @llvm.dbg.value(metadata i64 %22, metadata !205, metadata !DIExpression()) #6, !dbg !309
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !310
  br label %26, !dbg !311

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !312, !tbaa !111
  br label %26, !dbg !313

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !314
  ret i64 %27, !dbg !314
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #0

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !315 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !317, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %1, metadata !318, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.value(metadata i64* %2, metadata !319, metadata !DIExpression()), !dbg !325
  %6 = bitcast double* %4 to i8*, !dbg !326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !326
  %7 = bitcast i64* %5 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !327
  %8 = load i64, i64* %2, align 8, !dbg !328, !tbaa !111
  call void @llvm.dbg.value(metadata double* %4, metadata !320, metadata !DIExpression()), !dbg !330
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !331
  %10 = icmp eq i32 %9, 0, !dbg !332
  br i1 %10, label %24, label %11, !dbg !333, !prof !183

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !334
  %13 = load i64, i64* %12, align 8, !dbg !334, !tbaa !111
  call void @llvm.dbg.value(metadata i64* %5, metadata !321, metadata !DIExpression()), !dbg !336
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !337
  %15 = icmp eq i32 %14, 0, !dbg !338
  br i1 %15, label %24, label %16, !dbg !339, !prof !183

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !340, !tbaa !300
  call void @llvm.dbg.value(metadata double %17, metadata !320, metadata !DIExpression()), !dbg !330
  %18 = load i64, i64* %5, align 8, !dbg !341, !tbaa !111
  call void @llvm.dbg.value(metadata i64 %18, metadata !321, metadata !DIExpression()), !dbg !336
  %19 = sitofp i64 %18 to double, !dbg !342
  %20 = fadd double %17, %19, !dbg !343
  call void @llvm.dbg.value(metadata double %20, metadata !322, metadata !DIExpression()), !dbg !344
  %21 = load i64, i64* @ok_atom, align 8, !dbg !345, !tbaa !111
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !346
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !347
  call void @llvm.dbg.value(metadata i64 %21, metadata !204, metadata !DIExpression()) #6, !dbg !349
  call void @llvm.dbg.value(metadata i64 %22, metadata !205, metadata !DIExpression()) #6, !dbg !350
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !351
  br label %26, !dbg !352

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !353, !tbaa !111
  br label %26, !dbg !354

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !355
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !355
  ret i64 %27, !dbg !355
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !356 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !358, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.value(metadata i32 %1, metadata !359, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64* %2, metadata !360, metadata !DIExpression()), !dbg !366
  %6 = bitcast double* %4 to i8*, !dbg !367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !367
  %7 = bitcast double* %5 to i8*, !dbg !367
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !367
  %8 = load i64, i64* %2, align 8, !dbg !368, !tbaa !111
  call void @llvm.dbg.value(metadata double* %4, metadata !361, metadata !DIExpression()), !dbg !370
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !371
  %10 = icmp eq i32 %9, 0, !dbg !372
  br i1 %10, label %23, label %11, !dbg !373, !prof !183

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !374
  %13 = load i64, i64* %12, align 8, !dbg !374, !tbaa !111
  call void @llvm.dbg.value(metadata double* %5, metadata !362, metadata !DIExpression()), !dbg !376
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !377
  %15 = icmp eq i32 %14, 0, !dbg !378
  br i1 %15, label %23, label %16, !dbg !379, !prof !183

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !380, !tbaa !300
  call void @llvm.dbg.value(metadata double %17, metadata !361, metadata !DIExpression()), !dbg !370
  %18 = load double, double* %5, align 8, !dbg !381, !tbaa !300
  call void @llvm.dbg.value(metadata double %18, metadata !362, metadata !DIExpression()), !dbg !376
  %19 = fadd double %17, %18, !dbg !382
  call void @llvm.dbg.value(metadata double %19, metadata !363, metadata !DIExpression()), !dbg !383
  %20 = load i64, i64* @ok_atom, align 8, !dbg !384, !tbaa !111
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !385
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !198, metadata !DIExpression()) #6, !dbg !386
  call void @llvm.dbg.value(metadata i64 %20, metadata !204, metadata !DIExpression()) #6, !dbg !388
  call void @llvm.dbg.value(metadata i64 %21, metadata !205, metadata !DIExpression()) #6, !dbg !389
  %22 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %20, i64 %21) #6, !dbg !390
  br label %25, !dbg !391

; <label>:23:                                     ; preds = %11, %3
  %24 = load i64, i64* @arithmetic_error, align 8, !dbg !392, !tbaa !111
  br label %25, !dbg !393

; <label>:25:                                     ; preds = %23, %16
  %26 = phi i64 [ %24, %23 ], [ %22, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !394
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !394
  ret i64 %26, !dbg !394
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #5 !dbg !46 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !395
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
!llvm.module.flags = !{!87, !88, !89, !90}
!llvm.ident = !{!91}

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
!14 = !{!15, !44, !0, !81, !83, !85}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 118, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1280, elements: !42)
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
!43 = !DISubrange(count: 5)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "entry", scope: !46, file: !3, line: 128, type: !50, isLocal: true, isDefinition: true)
!46 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 128, type: !47, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
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
!82 = distinct !DIGlobalVariable(name: "ok_atom", scope: !2, file: !3, line: 6, type: !31, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "error_atom", scope: !2, file: !3, line: 7, type: !31, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "arithmetic_error_atom", scope: !2, file: !3, line: 8, type: !31, isLocal: true, isDefinition: true)
!87 = !{i32 2, !"Dwarf Version", i32 4}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 7, !"PIC Level", i32 2}
!91 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!92 = distinct !DISubprogram(name: "load", scope: !93, file: !93, line: 6, type: !61, isLocal: true, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !94)
!93 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!94 = !{!95, !96, !97}
!95 = !DILocalVariable(name: "env", arg: 1, scope: !92, file: !93, line: 6, type: !36)
!96 = !DILocalVariable(name: "priv", arg: 2, scope: !92, file: !93, line: 6, type: !63)
!97 = !DILocalVariable(name: "info", arg: 3, scope: !92, file: !93, line: 6, type: !31)
!98 = !DILocation(line: 6, column: 17, scope: !92)
!99 = !DILocation(line: 6, column: 29, scope: !92)
!100 = !DILocation(line: 6, column: 48, scope: !92)
!101 = !DILocalVariable(name: "env", arg: 1, scope: !102, file: !3, line: 10, type: !36)
!102 = distinct !DISubprogram(name: "init_nif_llvm", scope: !3, file: !3, line: 10, type: !103, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !105)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !36}
!105 = !{!101}
!106 = !DILocation(line: 10, column: 38, scope: !102, inlinedAt: !107)
!107 = distinct !DILocation(line: 8, column: 3, scope: !92)
!108 = !DILocation(line: 12, column: 48, scope: !102, inlinedAt: !107)
!109 = !DILocation(line: 12, column: 22, scope: !102, inlinedAt: !107)
!110 = !DILocation(line: 12, column: 20, scope: !102, inlinedAt: !107)
!111 = !{!112, !112, i64 0}
!112 = !{!"long", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !DILocation(line: 13, column: 13, scope: !102, inlinedAt: !107)
!116 = !DILocation(line: 13, column: 11, scope: !102, inlinedAt: !107)
!117 = !DILocation(line: 14, column: 16, scope: !102, inlinedAt: !107)
!118 = !DILocation(line: 14, column: 14, scope: !102, inlinedAt: !107)
!119 = !DILocation(line: 15, column: 27, scope: !102, inlinedAt: !107)
!120 = !DILocation(line: 15, column: 25, scope: !102, inlinedAt: !107)
!121 = !DILocation(line: 9, column: 3, scope: !92)
!122 = distinct !DISubprogram(name: "unload", scope: !93, file: !93, line: 13, type: !72, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !123)
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "env", arg: 1, scope: !122, file: !93, line: 13, type: !36)
!125 = !DILocalVariable(name: "priv", arg: 2, scope: !122, file: !93, line: 13, type: !64)
!126 = !DILocation(line: 13, column: 19, scope: !122)
!127 = !DILocation(line: 13, column: 30, scope: !122)
!128 = !DILocation(line: 15, column: 1, scope: !122)
!129 = distinct !DISubprogram(name: "reload", scope: !93, file: !93, line: 18, type: !61, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "env", arg: 1, scope: !129, file: !93, line: 18, type: !36)
!132 = !DILocalVariable(name: "priv", arg: 2, scope: !129, file: !93, line: 18, type: !63)
!133 = !DILocalVariable(name: "info", arg: 3, scope: !129, file: !93, line: 18, type: !31)
!134 = !DILocation(line: 18, column: 19, scope: !129)
!135 = !DILocation(line: 18, column: 31, scope: !129)
!136 = !DILocation(line: 18, column: 50, scope: !129)
!137 = !DILocation(line: 20, column: 3, scope: !129)
!138 = distinct !DISubprogram(name: "upgrade", scope: !93, file: !93, line: 24, type: !68, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DILocalVariable(name: "env", arg: 1, scope: !138, file: !93, line: 24, type: !36)
!141 = !DILocalVariable(name: "priv", arg: 2, scope: !138, file: !93, line: 24, type: !63)
!142 = !DILocalVariable(name: "old_priv", arg: 3, scope: !138, file: !93, line: 24, type: !63)
!143 = !DILocalVariable(name: "info", arg: 4, scope: !138, file: !93, line: 24, type: !31)
!144 = !DILocation(line: 24, column: 20, scope: !138)
!145 = !DILocation(line: 24, column: 32, scope: !138)
!146 = !DILocation(line: 24, column: 45, scope: !138)
!147 = !DILocation(line: 24, column: 68, scope: !138)
!148 = !DILocation(line: 6, column: 17, scope: !92, inlinedAt: !149)
!149 = distinct !DILocation(line: 26, column: 10, scope: !138)
!150 = !DILocation(line: 6, column: 29, scope: !92, inlinedAt: !149)
!151 = !DILocation(line: 6, column: 48, scope: !92, inlinedAt: !149)
!152 = !DILocation(line: 10, column: 38, scope: !102, inlinedAt: !153)
!153 = distinct !DILocation(line: 8, column: 3, scope: !92, inlinedAt: !149)
!154 = !DILocation(line: 12, column: 48, scope: !102, inlinedAt: !153)
!155 = !DILocation(line: 12, column: 22, scope: !102, inlinedAt: !153)
!156 = !DILocation(line: 12, column: 20, scope: !102, inlinedAt: !153)
!157 = !DILocation(line: 13, column: 13, scope: !102, inlinedAt: !153)
!158 = !DILocation(line: 13, column: 11, scope: !102, inlinedAt: !153)
!159 = !DILocation(line: 14, column: 16, scope: !102, inlinedAt: !153)
!160 = !DILocation(line: 14, column: 14, scope: !102, inlinedAt: !153)
!161 = !DILocation(line: 15, column: 27, scope: !102, inlinedAt: !153)
!162 = !DILocation(line: 15, column: 25, scope: !102, inlinedAt: !153)
!163 = !DILocation(line: 26, column: 3, scope: !138)
!164 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 19, type: !29, isLocal: true, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !165)
!165 = !{!166, !167, !168, !169, !171, !172}
!166 = !DILocalVariable(name: "env", arg: 1, scope: !164, file: !3, line: 19, type: !36)
!167 = !DILocalVariable(name: "argc", arg: 2, scope: !164, file: !3, line: 19, type: !11)
!168 = !DILocalVariable(name: "argv", arg: 3, scope: !164, file: !3, line: 19, type: !39)
!169 = !DILocalVariable(name: "a", scope: !164, file: !3, line: 21, type: !170)
!170 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!171 = !DILocalVariable(name: "b", scope: !164, file: !3, line: 21, type: !170)
!172 = !DILocalVariable(name: "result", scope: !164, file: !3, line: 29, type: !170)
!173 = !DILocation(line: 19, column: 38, scope: !164)
!174 = !DILocation(line: 19, column: 47, scope: !164)
!175 = !DILocation(line: 19, column: 72, scope: !164)
!176 = !DILocation(line: 21, column: 3, scope: !164)
!177 = !DILocation(line: 22, column: 44, scope: !178)
!178 = distinct !DILexicalBlock(scope: !164, file: !3, line: 22, column: 6)
!179 = !DILocation(line: 21, column: 8, scope: !164)
!180 = !DILocation(line: 22, column: 24, scope: !178)
!181 = !DILocation(line: 22, column: 57, scope: !178)
!182 = !DILocation(line: 22, column: 6, scope: !164)
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !DILocation(line: 25, column: 44, scope: !185)
!185 = distinct !DILexicalBlock(scope: !164, file: !3, line: 25, column: 6)
!186 = !DILocation(line: 21, column: 11, scope: !164)
!187 = !DILocation(line: 25, column: 24, scope: !185)
!188 = !DILocation(line: 25, column: 57, scope: !185)
!189 = !DILocation(line: 25, column: 6, scope: !164)
!190 = !DILocation(line: 31, column: 48, scope: !191)
!191 = distinct !DILexicalBlock(scope: !164, file: !3, line: 31, column: 6)
!192 = !DILocation(line: 31, column: 51, scope: !191)
!193 = !DILocation(line: 31, column: 23, scope: !191)
!194 = !DILocation(line: 29, column: 8, scope: !164)
!195 = !DILocation(line: 31, column: 6, scope: !164)
!196 = !DILocation(line: 35, column: 32, scope: !164)
!197 = !DILocation(line: 35, column: 41, scope: !164)
!198 = !DILocalVariable(name: "env", arg: 1, scope: !199, file: !200, line: 422, type: !36)
!199 = distinct !DISubprogram(name: "enif_make_tuple2", scope: !200, file: !200, line: 422, type: !201, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !203)
!200 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif_api_funcs.h", directory: "/Users/zacky/github/nif_llvm")
!201 = !DISubroutineType(types: !202)
!202 = !{!31, !36, !31, !31}
!203 = !{!198, !204, !205}
!204 = !DILocalVariable(name: "e1", arg: 2, scope: !199, file: !200, line: 423, type: !31)
!205 = !DILocalVariable(name: "e2", arg: 3, scope: !199, file: !200, line: 424, type: !31)
!206 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !207)
!207 = distinct !DILocation(line: 35, column: 10, scope: !164)
!208 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !207)
!209 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !207)
!210 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !207)
!211 = !DILocation(line: 35, column: 3, scope: !164)
!212 = !DILocation(line: 37, column: 10, scope: !164)
!213 = !DILocation(line: 37, column: 3, scope: !164)
!214 = !DILocation(line: 39, column: 32, scope: !164)
!215 = !DILocation(line: 39, column: 44, scope: !164)
!216 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !217)
!217 = distinct !DILocation(line: 39, column: 10, scope: !164)
!218 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !217)
!219 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !217)
!220 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !217)
!221 = !DILocation(line: 39, column: 3, scope: !164)
!222 = !DILocation(line: 40, column: 1, scope: !164)
!223 = distinct !DISubprogram(name: "asm_1_nif_uu", scope: !3, file: !3, line: 44, type: !29, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !224)
!224 = !{!225, !226, !227, !228, !229, !230}
!225 = !DILocalVariable(name: "env", arg: 1, scope: !223, file: !3, line: 44, type: !36)
!226 = !DILocalVariable(name: "argc", arg: 2, scope: !223, file: !3, line: 44, type: !11)
!227 = !DILocalVariable(name: "argv", arg: 3, scope: !223, file: !3, line: 44, type: !39)
!228 = !DILocalVariable(name: "a", scope: !223, file: !3, line: 46, type: !9)
!229 = !DILocalVariable(name: "b", scope: !223, file: !3, line: 46, type: !9)
!230 = !DILocalVariable(name: "result", scope: !223, file: !3, line: 54, type: !9)
!231 = !DILocation(line: 44, column: 38, scope: !223)
!232 = !DILocation(line: 44, column: 47, scope: !223)
!233 = !DILocation(line: 44, column: 72, scope: !223)
!234 = !DILocation(line: 46, column: 3, scope: !223)
!235 = !DILocation(line: 47, column: 45, scope: !236)
!236 = distinct !DILexicalBlock(scope: !223, file: !3, line: 47, column: 6)
!237 = !DILocation(line: 46, column: 17, scope: !223)
!238 = !DILocation(line: 47, column: 24, scope: !236)
!239 = !DILocation(line: 47, column: 58, scope: !236)
!240 = !DILocation(line: 47, column: 6, scope: !223)
!241 = !DILocation(line: 50, column: 45, scope: !242)
!242 = distinct !DILexicalBlock(scope: !223, file: !3, line: 50, column: 6)
!243 = !DILocation(line: 46, column: 20, scope: !223)
!244 = !DILocation(line: 50, column: 24, scope: !242)
!245 = !DILocation(line: 50, column: 58, scope: !242)
!246 = !DILocation(line: 50, column: 6, scope: !223)
!247 = !DILocation(line: 56, column: 48, scope: !248)
!248 = distinct !DILexicalBlock(scope: !223, file: !3, line: 56, column: 6)
!249 = !DILocation(line: 56, column: 51, scope: !248)
!250 = !DILocation(line: 56, column: 23, scope: !248)
!251 = !DILocation(line: 54, column: 17, scope: !223)
!252 = !DILocation(line: 56, column: 6, scope: !223)
!253 = !DILocation(line: 60, column: 32, scope: !223)
!254 = !DILocation(line: 60, column: 41, scope: !223)
!255 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !256)
!256 = distinct !DILocation(line: 60, column: 10, scope: !223)
!257 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !256)
!258 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !256)
!259 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !256)
!260 = !DILocation(line: 60, column: 3, scope: !223)
!261 = !DILocation(line: 62, column: 10, scope: !223)
!262 = !DILocation(line: 62, column: 3, scope: !223)
!263 = !DILocation(line: 64, column: 32, scope: !223)
!264 = !DILocation(line: 64, column: 44, scope: !223)
!265 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !266)
!266 = distinct !DILocation(line: 64, column: 10, scope: !223)
!267 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !266)
!268 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !266)
!269 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !266)
!270 = !DILocation(line: 64, column: 3, scope: !223)
!271 = !DILocation(line: 65, column: 1, scope: !223)
!272 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 68, type: !29, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !273)
!273 = !{!274, !275, !276, !277, !278, !279}
!274 = !DILocalVariable(name: "env", arg: 1, scope: !272, file: !3, line: 68, type: !36)
!275 = !DILocalVariable(name: "argc", arg: 2, scope: !272, file: !3, line: 68, type: !11)
!276 = !DILocalVariable(name: "argv", arg: 3, scope: !272, file: !3, line: 68, type: !39)
!277 = !DILocalVariable(name: "a", scope: !272, file: !3, line: 70, type: !170)
!278 = !DILocalVariable(name: "b", scope: !272, file: !3, line: 71, type: !13)
!279 = !DILocalVariable(name: "result", scope: !272, file: !3, line: 78, type: !13)
!280 = !DILocation(line: 68, column: 38, scope: !272)
!281 = !DILocation(line: 68, column: 47, scope: !272)
!282 = !DILocation(line: 68, column: 72, scope: !272)
!283 = !DILocation(line: 70, column: 3, scope: !272)
!284 = !DILocation(line: 71, column: 3, scope: !272)
!285 = !DILocation(line: 72, column: 44, scope: !286)
!286 = distinct !DILexicalBlock(scope: !272, file: !3, line: 72, column: 6)
!287 = !DILocation(line: 70, column: 8, scope: !272)
!288 = !DILocation(line: 72, column: 24, scope: !286)
!289 = !DILocation(line: 72, column: 57, scope: !286)
!290 = !DILocation(line: 72, column: 6, scope: !272)
!291 = !DILocation(line: 75, column: 45, scope: !292)
!292 = distinct !DILexicalBlock(scope: !272, file: !3, line: 75, column: 6)
!293 = !DILocation(line: 71, column: 10, scope: !272)
!294 = !DILocation(line: 75, column: 24, scope: !292)
!295 = !DILocation(line: 75, column: 58, scope: !292)
!296 = !DILocation(line: 75, column: 6, scope: !272)
!297 = !DILocation(line: 78, column: 28, scope: !272)
!298 = !DILocation(line: 78, column: 20, scope: !272)
!299 = !DILocation(line: 78, column: 33, scope: !272)
!300 = !{!301, !301, i64 0}
!301 = !{!"double", !113, i64 0}
!302 = !DILocation(line: 78, column: 31, scope: !272)
!303 = !DILocation(line: 78, column: 10, scope: !272)
!304 = !DILocation(line: 79, column: 32, scope: !272)
!305 = !DILocation(line: 79, column: 41, scope: !272)
!306 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !307)
!307 = distinct !DILocation(line: 79, column: 10, scope: !272)
!308 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !307)
!309 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !307)
!310 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !307)
!311 = !DILocation(line: 79, column: 3, scope: !272)
!312 = !DILocation(line: 81, column: 10, scope: !272)
!313 = !DILocation(line: 81, column: 3, scope: !272)
!314 = !DILocation(line: 82, column: 1, scope: !272)
!315 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 85, type: !29, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !316)
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DILocalVariable(name: "env", arg: 1, scope: !315, file: !3, line: 85, type: !36)
!318 = !DILocalVariable(name: "argc", arg: 2, scope: !315, file: !3, line: 85, type: !11)
!319 = !DILocalVariable(name: "argv", arg: 3, scope: !315, file: !3, line: 85, type: !39)
!320 = !DILocalVariable(name: "a", scope: !315, file: !3, line: 87, type: !13)
!321 = !DILocalVariable(name: "b", scope: !315, file: !3, line: 88, type: !170)
!322 = !DILocalVariable(name: "result", scope: !315, file: !3, line: 95, type: !13)
!323 = !DILocation(line: 85, column: 38, scope: !315)
!324 = !DILocation(line: 85, column: 47, scope: !315)
!325 = !DILocation(line: 85, column: 72, scope: !315)
!326 = !DILocation(line: 87, column: 3, scope: !315)
!327 = !DILocation(line: 88, column: 3, scope: !315)
!328 = !DILocation(line: 89, column: 45, scope: !329)
!329 = distinct !DILexicalBlock(scope: !315, file: !3, line: 89, column: 6)
!330 = !DILocation(line: 87, column: 10, scope: !315)
!331 = !DILocation(line: 89, column: 24, scope: !329)
!332 = !DILocation(line: 89, column: 58, scope: !329)
!333 = !DILocation(line: 89, column: 6, scope: !315)
!334 = !DILocation(line: 92, column: 44, scope: !335)
!335 = distinct !DILexicalBlock(scope: !315, file: !3, line: 92, column: 6)
!336 = !DILocation(line: 88, column: 8, scope: !315)
!337 = !DILocation(line: 92, column: 24, scope: !335)
!338 = !DILocation(line: 92, column: 57, scope: !335)
!339 = !DILocation(line: 92, column: 6, scope: !315)
!340 = !DILocation(line: 95, column: 19, scope: !315)
!341 = !DILocation(line: 95, column: 33, scope: !315)
!342 = !DILocation(line: 95, column: 24, scope: !315)
!343 = !DILocation(line: 95, column: 21, scope: !315)
!344 = !DILocation(line: 95, column: 10, scope: !315)
!345 = !DILocation(line: 96, column: 32, scope: !315)
!346 = !DILocation(line: 96, column: 41, scope: !315)
!347 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !348)
!348 = distinct !DILocation(line: 96, column: 10, scope: !315)
!349 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !348)
!350 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !348)
!351 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !348)
!352 = !DILocation(line: 96, column: 3, scope: !315)
!353 = !DILocation(line: 98, column: 10, scope: !315)
!354 = !DILocation(line: 98, column: 3, scope: !315)
!355 = !DILocation(line: 99, column: 1, scope: !315)
!356 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 102, type: !29, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !357)
!357 = !{!358, !359, !360, !361, !362, !363}
!358 = !DILocalVariable(name: "env", arg: 1, scope: !356, file: !3, line: 102, type: !36)
!359 = !DILocalVariable(name: "argc", arg: 2, scope: !356, file: !3, line: 102, type: !11)
!360 = !DILocalVariable(name: "argv", arg: 3, scope: !356, file: !3, line: 102, type: !39)
!361 = !DILocalVariable(name: "a", scope: !356, file: !3, line: 104, type: !13)
!362 = !DILocalVariable(name: "b", scope: !356, file: !3, line: 104, type: !13)
!363 = !DILocalVariable(name: "result", scope: !356, file: !3, line: 111, type: !13)
!364 = !DILocation(line: 102, column: 38, scope: !356)
!365 = !DILocation(line: 102, column: 47, scope: !356)
!366 = !DILocation(line: 102, column: 72, scope: !356)
!367 = !DILocation(line: 104, column: 3, scope: !356)
!368 = !DILocation(line: 105, column: 45, scope: !369)
!369 = distinct !DILexicalBlock(scope: !356, file: !3, line: 105, column: 6)
!370 = !DILocation(line: 104, column: 10, scope: !356)
!371 = !DILocation(line: 105, column: 24, scope: !369)
!372 = !DILocation(line: 105, column: 58, scope: !369)
!373 = !DILocation(line: 105, column: 6, scope: !356)
!374 = !DILocation(line: 108, column: 45, scope: !375)
!375 = distinct !DILexicalBlock(scope: !356, file: !3, line: 108, column: 6)
!376 = !DILocation(line: 104, column: 13, scope: !356)
!377 = !DILocation(line: 108, column: 24, scope: !375)
!378 = !DILocation(line: 108, column: 58, scope: !375)
!379 = !DILocation(line: 108, column: 6, scope: !356)
!380 = !DILocation(line: 111, column: 19, scope: !356)
!381 = !DILocation(line: 111, column: 23, scope: !356)
!382 = !DILocation(line: 111, column: 21, scope: !356)
!383 = !DILocation(line: 111, column: 10, scope: !356)
!384 = !DILocation(line: 112, column: 32, scope: !356)
!385 = !DILocation(line: 112, column: 41, scope: !356)
!386 = !DILocation(line: 422, column: 64, scope: !199, inlinedAt: !387)
!387 = distinct !DILocation(line: 112, column: 10, scope: !356)
!388 = !DILocation(line: 423, column: 24, scope: !199, inlinedAt: !387)
!389 = !DILocation(line: 424, column: 24, scope: !199, inlinedAt: !387)
!390 = !DILocation(line: 426, column: 12, scope: !199, inlinedAt: !387)
!391 = !DILocation(line: 112, column: 3, scope: !356)
!392 = !DILocation(line: 114, column: 10, scope: !356)
!393 = !DILocation(line: 114, column: 3, scope: !356)
!394 = !DILocation(line: 115, column: 1, scope: !356)
!395 = !DILocation(line: 128, column: 1, scope: !46)
