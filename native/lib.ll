; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
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
define internal i32 @load(%struct.enif_environment_t*, i8** nocapture readnone, i64) #0 !dbg !86 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i8** %1, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i64 %2, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !95, metadata !DIExpression()) #6, !dbg !100
  %4 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !102
  %5 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %4) #6, !dbg !103
  store i64 %5, i64* @arithmetic_error, align 8, !dbg !104, !tbaa !105
  ret i32 0, !dbg !109
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #1 !dbg !110 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !112, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i8* %1, metadata !113, metadata !DIExpression()), !dbg !115
  ret void, !dbg !116
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #1 !dbg !117 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !119, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i8** %1, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i64 %2, metadata !121, metadata !DIExpression()), !dbg !124
  ret i32 0, !dbg !125
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t*, i8** nocapture readnone, i8** nocapture readnone, i64) #0 !dbg !126 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !128, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i8** %1, metadata !129, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8** %2, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i64 %3, metadata !131, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !89, metadata !DIExpression()) #6, !dbg !136
  call void @llvm.dbg.value(metadata i8** %1, metadata !90, metadata !DIExpression()) #6, !dbg !138
  call void @llvm.dbg.value(metadata i64 %3, metadata !91, metadata !DIExpression()) #6, !dbg !139
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !95, metadata !DIExpression()) #6, !dbg !140
  %5 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !142
  %6 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %5) #6, !dbg !143
  store i64 %6, i64* @arithmetic_error, align 8, !dbg !144, !tbaa !105
  ret i32 0, !dbg !145
}

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #2

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !146 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !148, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32 %1, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i64* %2, metadata !150, metadata !DIExpression()), !dbg !157
  %6 = bitcast i64* %4 to i8*, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !158
  %7 = bitcast i64* %5 to i8*, !dbg !158
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !158
  %8 = load i64, i64* %2, align 8, !dbg !159, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %4, metadata !151, metadata !DIExpression()), !dbg !161
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !162
  %10 = icmp eq i32 %9, 0, !dbg !163
  br i1 %10, label %26, label %11, !dbg !164

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !165
  %13 = load i64, i64* %12, align 8, !dbg !165, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %5, metadata !153, metadata !DIExpression()), !dbg !167
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !168
  %15 = icmp eq i32 %14, 0, !dbg !169
  br i1 %15, label %26, label %16, !dbg !170

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !171, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %17, metadata !151, metadata !DIExpression()), !dbg !161
  %18 = load i64, i64* %5, align 8, !dbg !173, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %18, metadata !153, metadata !DIExpression()), !dbg !167
  %19 = sub nsw i64 9223372036854775807, %18, !dbg !174
  %20 = icmp sgt i64 %17, %19, !dbg !175
  br i1 %20, label %21, label %23, !dbg !176

; <label>:21:                                     ; preds = %16
  %22 = call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !177
  br label %28, !dbg !179

; <label>:23:                                     ; preds = %16
  %24 = add nsw i64 %18, %17, !dbg !180
  call void @llvm.dbg.value(metadata i64 %24, metadata !154, metadata !DIExpression()), !dbg !181
  %25 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %24) #6, !dbg !182
  br label %28, !dbg !183

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !184, !tbaa !105
  br label %28, !dbg !185

; <label>:28:                                     ; preds = %26, %23, %21
  %29 = phi i64 [ %27, %26 ], [ %22, %21 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !186
  ret i64 %29, !dbg !186
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #2

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !187 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !189, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 %1, metadata !190, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i64* %2, metadata !191, metadata !DIExpression()), !dbg !197
  %6 = bitcast i64* %4 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !198
  %7 = bitcast double* %5 to i8*, !dbg !199
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !199
  %8 = load i64, i64* %2, align 8, !dbg !200, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %4, metadata !192, metadata !DIExpression()), !dbg !202
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !203
  %10 = icmp eq i32 %9, 0, !dbg !204
  br i1 %10, label %22, label %11, !dbg !205

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !206
  %13 = load i64, i64* %12, align 8, !dbg !206, !tbaa !105
  call void @llvm.dbg.value(metadata double* %5, metadata !193, metadata !DIExpression()), !dbg !208
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !209
  %15 = icmp eq i32 %14, 0, !dbg !210
  br i1 %15, label %22, label %16, !dbg !211

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !212, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %17, metadata !192, metadata !DIExpression()), !dbg !202
  %18 = sitofp i64 %17 to double, !dbg !213
  %19 = load double, double* %5, align 8, !dbg !214, !tbaa !215
  call void @llvm.dbg.value(metadata double %19, metadata !193, metadata !DIExpression()), !dbg !208
  %20 = fadd double %19, %18, !dbg !217
  call void @llvm.dbg.value(metadata double %20, metadata !194, metadata !DIExpression()), !dbg !218
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !219
  br label %24, !dbg !220

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !221, !tbaa !105
  br label %24, !dbg !222

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !223
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !223
  ret i64 %25, !dbg !223
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #2

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !224 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !226, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 %1, metadata !227, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i64* %2, metadata !228, metadata !DIExpression()), !dbg !234
  %6 = bitcast double* %4 to i8*, !dbg !235
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !235
  %7 = bitcast i64* %5 to i8*, !dbg !236
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !236
  %8 = load i64, i64* %2, align 8, !dbg !237, !tbaa !105
  call void @llvm.dbg.value(metadata double* %4, metadata !229, metadata !DIExpression()), !dbg !239
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !240
  %10 = icmp eq i32 %9, 0, !dbg !241
  br i1 %10, label %22, label %11, !dbg !242

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !243
  %13 = load i64, i64* %12, align 8, !dbg !243, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %5, metadata !230, metadata !DIExpression()), !dbg !245
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !246
  %15 = icmp eq i32 %14, 0, !dbg !247
  br i1 %15, label %22, label %16, !dbg !248

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !249, !tbaa !215
  call void @llvm.dbg.value(metadata double %17, metadata !229, metadata !DIExpression()), !dbg !239
  %18 = load i64, i64* %5, align 8, !dbg !250, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %18, metadata !230, metadata !DIExpression()), !dbg !245
  %19 = sitofp i64 %18 to double, !dbg !251
  %20 = fadd double %17, %19, !dbg !252
  call void @llvm.dbg.value(metadata double %20, metadata !231, metadata !DIExpression()), !dbg !253
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !254
  br label %24, !dbg !255

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !256, !tbaa !105
  br label %24, !dbg !257

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !258
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !258
  ret i64 %25, !dbg !258
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !259 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !261, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %1, metadata !262, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64* %2, metadata !263, metadata !DIExpression()), !dbg !269
  %6 = bitcast double* %4 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !270
  %7 = bitcast double* %5 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !270
  %8 = load i64, i64* %2, align 8, !dbg !271, !tbaa !105
  call void @llvm.dbg.value(metadata double* %4, metadata !264, metadata !DIExpression()), !dbg !273
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !274
  %10 = icmp eq i32 %9, 0, !dbg !275
  br i1 %10, label %21, label %11, !dbg !276

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !277
  %13 = load i64, i64* %12, align 8, !dbg !277, !tbaa !105
  call void @llvm.dbg.value(metadata double* %5, metadata !265, metadata !DIExpression()), !dbg !279
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !280
  %15 = icmp eq i32 %14, 0, !dbg !281
  br i1 %15, label %21, label %16, !dbg !282

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !283, !tbaa !215
  call void @llvm.dbg.value(metadata double %17, metadata !264, metadata !DIExpression()), !dbg !273
  %18 = load double, double* %5, align 8, !dbg !284, !tbaa !215
  call void @llvm.dbg.value(metadata double %18, metadata !265, metadata !DIExpression()), !dbg !279
  %19 = fadd double %17, %18, !dbg !285
  call void @llvm.dbg.value(metadata double %19, metadata !266, metadata !DIExpression()), !dbg !286
  %20 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !287
  br label %23, !dbg !288

; <label>:21:                                     ; preds = %11, %3
  %22 = load i64, i64* @arithmetic_error, align 8, !dbg !289, !tbaa !105
  br label %23, !dbg !290

; <label>:23:                                     ; preds = %21, %16
  %24 = phi i64 [ %22, %21 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !291
  ret i64 %24, !dbg !291
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #4 !dbg !46 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !292
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!81, !82, !83, !84}
!llvm.ident = !{!85}

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
!14 = !{!15, !44, !0}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 82, type: !17, isLocal: true, isDefinition: true)
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
!45 = distinct !DIGlobalVariable(name: "entry", scope: !46, file: !3, line: 91, type: !50, isLocal: true, isDefinition: true)
!46 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 91, type: !47, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
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
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 30, baseType: !79)
!78 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/zacky/github/nif_llvm")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !7, line: 92, baseType: !9)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "min_erts", scope: !51, file: !19, line: 137, baseType: !23, size: 64, offset: 704)
!81 = !{i32 2, !"Dwarf Version", i32 4}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 4}
!84 = !{i32 7, !"PIC Level", i32 2}
!85 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!86 = distinct !DISubprogram(name: "load", scope: !87, file: !87, line: 6, type: !61, isLocal: true, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !88)
!87 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!88 = !{!89, !90, !91}
!89 = !DILocalVariable(name: "env", arg: 1, scope: !86, file: !87, line: 6, type: !36)
!90 = !DILocalVariable(name: "priv", arg: 2, scope: !86, file: !87, line: 6, type: !63)
!91 = !DILocalVariable(name: "info", arg: 3, scope: !86, file: !87, line: 6, type: !31)
!92 = !DILocation(line: 6, column: 17, scope: !86)
!93 = !DILocation(line: 6, column: 29, scope: !86)
!94 = !DILocation(line: 6, column: 48, scope: !86)
!95 = !DILocalVariable(name: "env", arg: 1, scope: !96, file: !3, line: 7, type: !36)
!96 = distinct !DISubprogram(name: "init_nif_llvm", scope: !3, file: !3, line: 7, type: !97, isLocal: true, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !36}
!99 = !{!95}
!100 = !DILocation(line: 7, column: 38, scope: !96, inlinedAt: !101)
!101 = distinct !DILocation(line: 8, column: 3, scope: !86)
!102 = !DILocation(line: 9, column: 47, scope: !96, inlinedAt: !101)
!103 = !DILocation(line: 9, column: 21, scope: !96, inlinedAt: !101)
!104 = !DILocation(line: 9, column: 19, scope: !96, inlinedAt: !101)
!105 = !{!106, !106, i64 0}
!106 = !{!"long", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !DILocation(line: 9, column: 3, scope: !86)
!110 = distinct !DISubprogram(name: "unload", scope: !87, file: !87, line: 13, type: !72, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!111 = !{!112, !113}
!112 = !DILocalVariable(name: "env", arg: 1, scope: !110, file: !87, line: 13, type: !36)
!113 = !DILocalVariable(name: "priv", arg: 2, scope: !110, file: !87, line: 13, type: !64)
!114 = !DILocation(line: 13, column: 19, scope: !110)
!115 = !DILocation(line: 13, column: 30, scope: !110)
!116 = !DILocation(line: 15, column: 1, scope: !110)
!117 = distinct !DISubprogram(name: "reload", scope: !87, file: !87, line: 18, type: !61, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !118)
!118 = !{!119, !120, !121}
!119 = !DILocalVariable(name: "env", arg: 1, scope: !117, file: !87, line: 18, type: !36)
!120 = !DILocalVariable(name: "priv", arg: 2, scope: !117, file: !87, line: 18, type: !63)
!121 = !DILocalVariable(name: "info", arg: 3, scope: !117, file: !87, line: 18, type: !31)
!122 = !DILocation(line: 18, column: 19, scope: !117)
!123 = !DILocation(line: 18, column: 31, scope: !117)
!124 = !DILocation(line: 18, column: 50, scope: !117)
!125 = !DILocation(line: 20, column: 3, scope: !117)
!126 = distinct !DISubprogram(name: "upgrade", scope: !87, file: !87, line: 24, type: !68, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !127)
!127 = !{!128, !129, !130, !131}
!128 = !DILocalVariable(name: "env", arg: 1, scope: !126, file: !87, line: 24, type: !36)
!129 = !DILocalVariable(name: "priv", arg: 2, scope: !126, file: !87, line: 24, type: !63)
!130 = !DILocalVariable(name: "old_priv", arg: 3, scope: !126, file: !87, line: 24, type: !63)
!131 = !DILocalVariable(name: "info", arg: 4, scope: !126, file: !87, line: 24, type: !31)
!132 = !DILocation(line: 24, column: 20, scope: !126)
!133 = !DILocation(line: 24, column: 32, scope: !126)
!134 = !DILocation(line: 24, column: 45, scope: !126)
!135 = !DILocation(line: 24, column: 68, scope: !126)
!136 = !DILocation(line: 6, column: 17, scope: !86, inlinedAt: !137)
!137 = distinct !DILocation(line: 26, column: 10, scope: !126)
!138 = !DILocation(line: 6, column: 29, scope: !86, inlinedAt: !137)
!139 = !DILocation(line: 6, column: 48, scope: !86, inlinedAt: !137)
!140 = !DILocation(line: 7, column: 38, scope: !96, inlinedAt: !141)
!141 = distinct !DILocation(line: 8, column: 3, scope: !86, inlinedAt: !137)
!142 = !DILocation(line: 9, column: 47, scope: !96, inlinedAt: !141)
!143 = !DILocation(line: 9, column: 21, scope: !96, inlinedAt: !141)
!144 = !DILocation(line: 9, column: 19, scope: !96, inlinedAt: !141)
!145 = !DILocation(line: 26, column: 3, scope: !126)
!146 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 13, type: !29, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !147)
!147 = !{!148, !149, !150, !151, !153, !154}
!148 = !DILocalVariable(name: "env", arg: 1, scope: !146, file: !3, line: 13, type: !36)
!149 = !DILocalVariable(name: "argc", arg: 2, scope: !146, file: !3, line: 13, type: !11)
!150 = !DILocalVariable(name: "argv", arg: 3, scope: !146, file: !3, line: 13, type: !39)
!151 = !DILocalVariable(name: "a", scope: !146, file: !3, line: 15, type: !152)
!152 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!153 = !DILocalVariable(name: "b", scope: !146, file: !3, line: 15, type: !152)
!154 = !DILocalVariable(name: "result", scope: !146, file: !3, line: 25, type: !152)
!155 = !DILocation(line: 13, column: 38, scope: !146)
!156 = !DILocation(line: 13, column: 47, scope: !146)
!157 = !DILocation(line: 13, column: 72, scope: !146)
!158 = !DILocation(line: 15, column: 2, scope: !146)
!159 = !DILocation(line: 16, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !146, file: !3, line: 16, column: 5)
!161 = !DILocation(line: 15, column: 7, scope: !146)
!162 = !DILocation(line: 16, column: 5, scope: !160)
!163 = !DILocation(line: 16, column: 38, scope: !160)
!164 = !DILocation(line: 16, column: 5, scope: !146)
!165 = !DILocation(line: 19, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !146, file: !3, line: 19, column: 5)
!167 = !DILocation(line: 15, column: 10, scope: !146)
!168 = !DILocation(line: 19, column: 5, scope: !166)
!169 = !DILocation(line: 19, column: 38, scope: !166)
!170 = !DILocation(line: 19, column: 5, scope: !146)
!171 = !DILocation(line: 22, column: 5, scope: !172)
!172 = distinct !DILexicalBlock(scope: !146, file: !3, line: 22, column: 5)
!173 = !DILocation(line: 22, column: 20, scope: !172)
!174 = !DILocation(line: 22, column: 18, scope: !172)
!175 = !DILocation(line: 22, column: 7, scope: !172)
!176 = !DILocation(line: 22, column: 5, scope: !146)
!177 = !DILocation(line: 23, column: 10, scope: !178)
!178 = distinct !DILexicalBlock(scope: !172, file: !3, line: 22, column: 23)
!179 = !DILocation(line: 23, column: 3, scope: !178)
!180 = !DILocation(line: 25, column: 19, scope: !146)
!181 = !DILocation(line: 25, column: 7, scope: !146)
!182 = !DILocation(line: 26, column: 9, scope: !146)
!183 = !DILocation(line: 26, column: 2, scope: !146)
!184 = !DILocation(line: 28, column: 9, scope: !146)
!185 = !DILocation(line: 28, column: 2, scope: !146)
!186 = !DILocation(line: 29, column: 1, scope: !146)
!187 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 32, type: !29, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !188)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DILocalVariable(name: "env", arg: 1, scope: !187, file: !3, line: 32, type: !36)
!190 = !DILocalVariable(name: "argc", arg: 2, scope: !187, file: !3, line: 32, type: !11)
!191 = !DILocalVariable(name: "argv", arg: 3, scope: !187, file: !3, line: 32, type: !39)
!192 = !DILocalVariable(name: "a", scope: !187, file: !3, line: 34, type: !152)
!193 = !DILocalVariable(name: "b", scope: !187, file: !3, line: 35, type: !13)
!194 = !DILocalVariable(name: "result", scope: !187, file: !3, line: 42, type: !13)
!195 = !DILocation(line: 32, column: 38, scope: !187)
!196 = !DILocation(line: 32, column: 47, scope: !187)
!197 = !DILocation(line: 32, column: 72, scope: !187)
!198 = !DILocation(line: 34, column: 2, scope: !187)
!199 = !DILocation(line: 35, column: 2, scope: !187)
!200 = !DILocation(line: 36, column: 25, scope: !201)
!201 = distinct !DILexicalBlock(scope: !187, file: !3, line: 36, column: 5)
!202 = !DILocation(line: 34, column: 7, scope: !187)
!203 = !DILocation(line: 36, column: 5, scope: !201)
!204 = !DILocation(line: 36, column: 38, scope: !201)
!205 = !DILocation(line: 36, column: 5, scope: !187)
!206 = !DILocation(line: 39, column: 26, scope: !207)
!207 = distinct !DILexicalBlock(scope: !187, file: !3, line: 39, column: 5)
!208 = !DILocation(line: 35, column: 9, scope: !187)
!209 = !DILocation(line: 39, column: 5, scope: !207)
!210 = !DILocation(line: 39, column: 39, scope: !207)
!211 = !DILocation(line: 39, column: 5, scope: !187)
!212 = !DILocation(line: 42, column: 27, scope: !187)
!213 = !DILocation(line: 42, column: 19, scope: !187)
!214 = !DILocation(line: 42, column: 32, scope: !187)
!215 = !{!216, !216, i64 0}
!216 = !{!"double", !107, i64 0}
!217 = !DILocation(line: 42, column: 30, scope: !187)
!218 = !DILocation(line: 42, column: 9, scope: !187)
!219 = !DILocation(line: 43, column: 9, scope: !187)
!220 = !DILocation(line: 43, column: 2, scope: !187)
!221 = !DILocation(line: 45, column: 9, scope: !187)
!222 = !DILocation(line: 45, column: 2, scope: !187)
!223 = !DILocation(line: 46, column: 1, scope: !187)
!224 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 49, type: !29, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !225)
!225 = !{!226, !227, !228, !229, !230, !231}
!226 = !DILocalVariable(name: "env", arg: 1, scope: !224, file: !3, line: 49, type: !36)
!227 = !DILocalVariable(name: "argc", arg: 2, scope: !224, file: !3, line: 49, type: !11)
!228 = !DILocalVariable(name: "argv", arg: 3, scope: !224, file: !3, line: 49, type: !39)
!229 = !DILocalVariable(name: "a", scope: !224, file: !3, line: 51, type: !13)
!230 = !DILocalVariable(name: "b", scope: !224, file: !3, line: 52, type: !152)
!231 = !DILocalVariable(name: "result", scope: !224, file: !3, line: 59, type: !13)
!232 = !DILocation(line: 49, column: 38, scope: !224)
!233 = !DILocation(line: 49, column: 47, scope: !224)
!234 = !DILocation(line: 49, column: 72, scope: !224)
!235 = !DILocation(line: 51, column: 2, scope: !224)
!236 = !DILocation(line: 52, column: 2, scope: !224)
!237 = !DILocation(line: 53, column: 26, scope: !238)
!238 = distinct !DILexicalBlock(scope: !224, file: !3, line: 53, column: 5)
!239 = !DILocation(line: 51, column: 9, scope: !224)
!240 = !DILocation(line: 53, column: 5, scope: !238)
!241 = !DILocation(line: 53, column: 39, scope: !238)
!242 = !DILocation(line: 53, column: 5, scope: !224)
!243 = !DILocation(line: 56, column: 25, scope: !244)
!244 = distinct !DILexicalBlock(scope: !224, file: !3, line: 56, column: 5)
!245 = !DILocation(line: 52, column: 7, scope: !224)
!246 = !DILocation(line: 56, column: 5, scope: !244)
!247 = !DILocation(line: 56, column: 38, scope: !244)
!248 = !DILocation(line: 56, column: 5, scope: !224)
!249 = !DILocation(line: 59, column: 18, scope: !224)
!250 = !DILocation(line: 59, column: 32, scope: !224)
!251 = !DILocation(line: 59, column: 23, scope: !224)
!252 = !DILocation(line: 59, column: 20, scope: !224)
!253 = !DILocation(line: 59, column: 9, scope: !224)
!254 = !DILocation(line: 60, column: 9, scope: !224)
!255 = !DILocation(line: 60, column: 2, scope: !224)
!256 = !DILocation(line: 62, column: 9, scope: !224)
!257 = !DILocation(line: 62, column: 2, scope: !224)
!258 = !DILocation(line: 63, column: 1, scope: !224)
!259 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 66, type: !29, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !260)
!260 = !{!261, !262, !263, !264, !265, !266}
!261 = !DILocalVariable(name: "env", arg: 1, scope: !259, file: !3, line: 66, type: !36)
!262 = !DILocalVariable(name: "argc", arg: 2, scope: !259, file: !3, line: 66, type: !11)
!263 = !DILocalVariable(name: "argv", arg: 3, scope: !259, file: !3, line: 66, type: !39)
!264 = !DILocalVariable(name: "a", scope: !259, file: !3, line: 68, type: !13)
!265 = !DILocalVariable(name: "b", scope: !259, file: !3, line: 68, type: !13)
!266 = !DILocalVariable(name: "result", scope: !259, file: !3, line: 75, type: !13)
!267 = !DILocation(line: 66, column: 38, scope: !259)
!268 = !DILocation(line: 66, column: 47, scope: !259)
!269 = !DILocation(line: 66, column: 72, scope: !259)
!270 = !DILocation(line: 68, column: 2, scope: !259)
!271 = !DILocation(line: 69, column: 26, scope: !272)
!272 = distinct !DILexicalBlock(scope: !259, file: !3, line: 69, column: 5)
!273 = !DILocation(line: 68, column: 9, scope: !259)
!274 = !DILocation(line: 69, column: 5, scope: !272)
!275 = !DILocation(line: 69, column: 39, scope: !272)
!276 = !DILocation(line: 69, column: 5, scope: !259)
!277 = !DILocation(line: 72, column: 26, scope: !278)
!278 = distinct !DILexicalBlock(scope: !259, file: !3, line: 72, column: 5)
!279 = !DILocation(line: 68, column: 12, scope: !259)
!280 = !DILocation(line: 72, column: 5, scope: !278)
!281 = !DILocation(line: 72, column: 39, scope: !278)
!282 = !DILocation(line: 72, column: 5, scope: !259)
!283 = !DILocation(line: 75, column: 18, scope: !259)
!284 = !DILocation(line: 75, column: 22, scope: !259)
!285 = !DILocation(line: 75, column: 20, scope: !259)
!286 = !DILocation(line: 75, column: 9, scope: !259)
!287 = !DILocation(line: 76, column: 9, scope: !259)
!288 = !DILocation(line: 76, column: 2, scope: !259)
!289 = !DILocation(line: 78, column: 9, scope: !259)
!290 = !DILocation(line: 78, column: 2, scope: !259)
!291 = !DILocation(line: 79, column: 1, scope: !259)
!292 = !DILocation(line: 91, column: 1, scope: !46)
