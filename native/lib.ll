; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [14 x i8] c"ArgumentError\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [4 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !0
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 4, %struct.enif_func_t* getelementptr inbounds ([4 x %struct.enif_func_t], [4 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, align 8, !dbg !15
@.str.5 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @load(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #0 !dbg !84 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8** %1, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i64 %2, metadata !89, metadata !DIExpression()), !dbg !92
  ret i32 0, !dbg !93
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #0 !dbg !94 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !96, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i8* %1, metadata !97, metadata !DIExpression()), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #0 !dbg !101 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i8** %1, metadata !104, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i64 %2, metadata !105, metadata !DIExpression()), !dbg !108
  ret i32 0, !dbg !109
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i8** nocapture readnone, i64) #0 !dbg !110 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !112, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i8** %1, metadata !113, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i8** %2, metadata !114, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i64 %3, metadata !115, metadata !DIExpression()), !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !121 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !123, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.value(metadata i64* %2, metadata !125, metadata !DIExpression()), !dbg !132
  %6 = bitcast i64* %4 to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !133
  %7 = bitcast i64* %5 to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !133
  %8 = load i64, i64* %2, align 8, !dbg !134, !tbaa !136
  call void @llvm.dbg.value(metadata i64* %4, metadata !126, metadata !DIExpression()), !dbg !140
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !141
  %10 = icmp eq i32 %9, 0, !dbg !142
  br i1 %10, label %24, label %11, !dbg !143

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !144
  %13 = load i64, i64* %12, align 8, !dbg !144, !tbaa !136
  call void @llvm.dbg.value(metadata i64* %5, metadata !128, metadata !DIExpression()), !dbg !146
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !147
  %15 = icmp eq i32 %14, 0, !dbg !148
  br i1 %15, label %24, label %16, !dbg !149

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !150, !tbaa !136
  call void @llvm.dbg.value(metadata i64 %17, metadata !126, metadata !DIExpression()), !dbg !140
  %18 = load i64, i64* %5, align 8, !dbg !152, !tbaa !136
  call void @llvm.dbg.value(metadata i64 %18, metadata !128, metadata !DIExpression()), !dbg !146
  %19 = sub nsw i64 9223372036854775807, %18, !dbg !153
  %20 = icmp sgt i64 %17, %19, !dbg !154
  br i1 %20, label %24, label %21, !dbg !155

; <label>:21:                                     ; preds = %16
  %22 = add nsw i64 %18, %17, !dbg !156
  call void @llvm.dbg.value(metadata i64 %22, metadata !129, metadata !DIExpression()), !dbg !157
  %23 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !158
  br label %27, !dbg !159

; <label>:24:                                     ; preds = %16, %11, %3
  %25 = call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !160
  %26 = call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %25) #6, !dbg !161
  br label %27, !dbg !162

; <label>:27:                                     ; preds = %24, %21
  %28 = phi i64 [ %26, %24 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !163
  ret i64 %28, !dbg !163
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #3

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #3

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #3

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !164 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !166, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata i32 %1, metadata !167, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata i64* %2, metadata !168, metadata !DIExpression()), !dbg !174
  %6 = bitcast i64* %4 to i8*, !dbg !175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !175
  %7 = bitcast double* %5 to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !176
  %8 = load i64, i64* %2, align 8, !dbg !177, !tbaa !136
  call void @llvm.dbg.value(metadata i64* %4, metadata !169, metadata !DIExpression()), !dbg !179
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !180
  %10 = icmp eq i32 %9, 0, !dbg !181
  br i1 %10, label %22, label %11, !dbg !182

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !183
  %13 = load i64, i64* %12, align 8, !dbg !183, !tbaa !136
  call void @llvm.dbg.value(metadata double* %5, metadata !170, metadata !DIExpression()), !dbg !185
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !186
  %15 = icmp eq i32 %14, 0, !dbg !187
  br i1 %15, label %22, label %16, !dbg !188

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !189, !tbaa !136
  call void @llvm.dbg.value(metadata i64 %17, metadata !169, metadata !DIExpression()), !dbg !179
  %18 = sitofp i64 %17 to double, !dbg !190
  %19 = load double, double* %5, align 8, !dbg !191, !tbaa !192
  call void @llvm.dbg.value(metadata double %19, metadata !170, metadata !DIExpression()), !dbg !185
  %20 = fadd double %19, %18, !dbg !194
  call void @llvm.dbg.value(metadata double %20, metadata !171, metadata !DIExpression()), !dbg !195
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !196
  br label %25, !dbg !197

; <label>:22:                                     ; preds = %11, %3
  %23 = call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !198
  %24 = call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %23) #6, !dbg !199
  br label %25, !dbg !200

; <label>:25:                                     ; preds = %22, %16
  %26 = phi i64 [ %24, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !201
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !201
  ret i64 %26, !dbg !201
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #3

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !202 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !204, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata i32 %1, metadata !205, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i64* %2, metadata !206, metadata !DIExpression()), !dbg !212
  %6 = bitcast double* %4 to i8*, !dbg !213
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !213
  %7 = bitcast i64* %5 to i8*, !dbg !214
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !214
  %8 = load i64, i64* %2, align 8, !dbg !215, !tbaa !136
  call void @llvm.dbg.value(metadata double* %4, metadata !207, metadata !DIExpression()), !dbg !217
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !218
  %10 = icmp eq i32 %9, 0, !dbg !219
  br i1 %10, label %22, label %11, !dbg !220

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !221
  %13 = load i64, i64* %12, align 8, !dbg !221, !tbaa !136
  call void @llvm.dbg.value(metadata i64* %5, metadata !208, metadata !DIExpression()), !dbg !223
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !224
  %15 = icmp eq i32 %14, 0, !dbg !225
  br i1 %15, label %22, label %16, !dbg !226

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !227, !tbaa !192
  call void @llvm.dbg.value(metadata double %17, metadata !207, metadata !DIExpression()), !dbg !217
  %18 = load i64, i64* %5, align 8, !dbg !228, !tbaa !136
  call void @llvm.dbg.value(metadata i64 %18, metadata !208, metadata !DIExpression()), !dbg !223
  %19 = sitofp i64 %18 to double, !dbg !229
  %20 = fadd double %17, %19, !dbg !230
  call void @llvm.dbg.value(metadata double %20, metadata !209, metadata !DIExpression()), !dbg !231
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !232
  br label %25, !dbg !233

; <label>:22:                                     ; preds = %11, %3
  %23 = call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !234
  %24 = call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %23) #6, !dbg !235
  br label %25, !dbg !236

; <label>:25:                                     ; preds = %22, %16
  %26 = phi i64 [ %24, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !237
  ret i64 %26, !dbg !237
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !238 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %1, metadata !241, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.value(metadata i64* %2, metadata !242, metadata !DIExpression()), !dbg !248
  %6 = bitcast double* %4 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !249
  %7 = bitcast double* %5 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !249
  %8 = load i64, i64* %2, align 8, !dbg !250, !tbaa !136
  call void @llvm.dbg.value(metadata double* %4, metadata !243, metadata !DIExpression()), !dbg !252
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !253
  %10 = icmp eq i32 %9, 0, !dbg !254
  br i1 %10, label %21, label %11, !dbg !255

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !256
  %13 = load i64, i64* %12, align 8, !dbg !256, !tbaa !136
  call void @llvm.dbg.value(metadata double* %5, metadata !244, metadata !DIExpression()), !dbg !258
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !259
  %15 = icmp eq i32 %14, 0, !dbg !260
  br i1 %15, label %21, label %16, !dbg !261

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !262, !tbaa !192
  call void @llvm.dbg.value(metadata double %17, metadata !243, metadata !DIExpression()), !dbg !252
  %18 = load double, double* %5, align 8, !dbg !263, !tbaa !192
  call void @llvm.dbg.value(metadata double %18, metadata !244, metadata !DIExpression()), !dbg !258
  %19 = fadd double %17, %18, !dbg !264
  call void @llvm.dbg.value(metadata double %19, metadata !245, metadata !DIExpression()), !dbg !265
  %20 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !266
  br label %24, !dbg !267

; <label>:21:                                     ; preds = %11, %3
  %22 = call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !268
  %23 = call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !269
  br label %24, !dbg !270

; <label>:24:                                     ; preds = %21, %16
  %25 = phi i64 [ %23, %21 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !271
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !271
  ret i64 %25, !dbg !271
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #4 !dbg !17 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !272
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 71, type: !76, isLocal: true, isDefinition: true)
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
!14 = !{!0, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "entry", scope: !17, file: !3, line: 79, type: !21, isLocal: true, isDefinition: true)
!17 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 79, type: !18, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !4)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEntry", file: !22, line: 138, baseType: !23)
!22 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_nif.h", directory: "/Users/zacky/github/nif_llvm")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_entry_t", file: !22, line: 115, size: 768, elements: !24)
!24 = !{!25, !26, !27, !30, !31, !54, !60, !61, !65, !69, !70, !71, !75}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !23, file: !22, line: 117, baseType: !11, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !23, file: !22, line: 118, baseType: !11, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !23, file: !22, line: 119, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_funcs", scope: !23, file: !22, line: 120, baseType: !11, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !23, file: !22, line: 121, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifFunc", file: !22, line: 112, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_func_t", file: !22, line: 106, size: 256, elements: !35)
!35 = !{!36, !37, !39, !53}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !22, line: 108, baseType: !28, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !34, file: !22, line: 109, baseType: !38, size: 32, offset: 64)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !34, file: !22, line: 110, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !48, !11, !51}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERL_NIF_TERM", file: !22, line: 88, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifUInt", file: !22, line: 84, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt", file: !46, line: 124, baseType: !47)
!46 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.0/lib/erlang/erts-10.0/include/erl_drv_nif.h", directory: "/Users/zacky/github/nif_llvm")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt64", file: !46, line: 110, baseType: !9)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEnv", file: !22, line: 104, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "enif_environment_t", file: !22, line: 103, flags: DIFlagFwdDecl)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !34, file: !22, line: 111, baseType: !38, size: 32, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !23, file: !22, line: 122, baseType: !55, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!11, !48, !58, !43}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reload", scope: !23, file: !22, line: 123, baseType: !55, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !23, file: !22, line: 124, baseType: !62, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!11, !48, !58, !58, !43}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !23, file: !22, line: 125, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !48, !59}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "vm_variant", scope: !23, file: !22, line: 128, baseType: !28, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !23, file: !22, line: 131, baseType: !38, size: 32, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sizeof_ErlNifResourceTypeInit", scope: !23, file: !22, line: 134, baseType: !72, size: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 30, baseType: !74)
!73 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/zacky/github/nif_llvm")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !7, line: 92, baseType: !9)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "min_erts", scope: !23, file: !22, line: 137, baseType: !28, size: 64, offset: 704)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 4)
!79 = !{i32 2, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 4}
!82 = !{i32 7, !"PIC Level", i32 2}
!83 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!84 = distinct !DISubprogram(name: "load", scope: !85, file: !85, line: 4, type: !56, isLocal: true, isDefinition: true, scopeLine: 5, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !86)
!85 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!86 = !{!87, !88, !89}
!87 = !DILocalVariable(name: "env", arg: 1, scope: !84, file: !85, line: 4, type: !48)
!88 = !DILocalVariable(name: "priv", arg: 2, scope: !84, file: !85, line: 4, type: !58)
!89 = !DILocalVariable(name: "info", arg: 3, scope: !84, file: !85, line: 4, type: !43)
!90 = !DILocation(line: 4, column: 17, scope: !84)
!91 = !DILocation(line: 4, column: 29, scope: !84)
!92 = !DILocation(line: 4, column: 48, scope: !84)
!93 = !DILocation(line: 6, column: 3, scope: !84)
!94 = distinct !DISubprogram(name: "unload", scope: !85, file: !85, line: 10, type: !67, isLocal: true, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !95)
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "env", arg: 1, scope: !94, file: !85, line: 10, type: !48)
!97 = !DILocalVariable(name: "priv", arg: 2, scope: !94, file: !85, line: 10, type: !59)
!98 = !DILocation(line: 10, column: 19, scope: !94)
!99 = !DILocation(line: 10, column: 30, scope: !94)
!100 = !DILocation(line: 12, column: 1, scope: !94)
!101 = distinct !DISubprogram(name: "reload", scope: !85, file: !85, line: 15, type: !56, isLocal: true, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !102)
!102 = !{!103, !104, !105}
!103 = !DILocalVariable(name: "env", arg: 1, scope: !101, file: !85, line: 15, type: !48)
!104 = !DILocalVariable(name: "priv", arg: 2, scope: !101, file: !85, line: 15, type: !58)
!105 = !DILocalVariable(name: "info", arg: 3, scope: !101, file: !85, line: 15, type: !43)
!106 = !DILocation(line: 15, column: 19, scope: !101)
!107 = !DILocation(line: 15, column: 31, scope: !101)
!108 = !DILocation(line: 15, column: 50, scope: !101)
!109 = !DILocation(line: 17, column: 3, scope: !101)
!110 = distinct !DISubprogram(name: "upgrade", scope: !85, file: !85, line: 21, type: !63, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DILocalVariable(name: "env", arg: 1, scope: !110, file: !85, line: 21, type: !48)
!113 = !DILocalVariable(name: "priv", arg: 2, scope: !110, file: !85, line: 21, type: !58)
!114 = !DILocalVariable(name: "old_priv", arg: 3, scope: !110, file: !85, line: 21, type: !58)
!115 = !DILocalVariable(name: "info", arg: 4, scope: !110, file: !85, line: 21, type: !43)
!116 = !DILocation(line: 21, column: 20, scope: !110)
!117 = !DILocation(line: 21, column: 32, scope: !110)
!118 = !DILocation(line: 21, column: 45, scope: !110)
!119 = !DILocation(line: 21, column: 68, scope: !110)
!120 = !DILocation(line: 23, column: 3, scope: !110)
!121 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 6, type: !41, isLocal: true, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !122)
!122 = !{!123, !124, !125, !126, !128, !129}
!123 = !DILocalVariable(name: "env", arg: 1, scope: !121, file: !3, line: 6, type: !48)
!124 = !DILocalVariable(name: "argc", arg: 2, scope: !121, file: !3, line: 6, type: !11)
!125 = !DILocalVariable(name: "argv", arg: 3, scope: !121, file: !3, line: 6, type: !51)
!126 = !DILocalVariable(name: "a", scope: !121, file: !3, line: 7, type: !127)
!127 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!128 = !DILocalVariable(name: "b", scope: !121, file: !3, line: 7, type: !127)
!129 = !DILocalVariable(name: "result", scope: !121, file: !3, line: 17, type: !127)
!130 = !DILocation(line: 6, column: 38, scope: !121)
!131 = !DILocation(line: 6, column: 47, scope: !121)
!132 = !DILocation(line: 6, column: 72, scope: !121)
!133 = !DILocation(line: 7, column: 2, scope: !121)
!134 = !DILocation(line: 8, column: 25, scope: !135)
!135 = distinct !DILexicalBlock(scope: !121, file: !3, line: 8, column: 5)
!136 = !{!137, !137, i64 0}
!137 = !{!"long", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !DILocation(line: 7, column: 7, scope: !121)
!141 = !DILocation(line: 8, column: 5, scope: !135)
!142 = !DILocation(line: 8, column: 38, scope: !135)
!143 = !DILocation(line: 8, column: 5, scope: !121)
!144 = !DILocation(line: 11, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !121, file: !3, line: 11, column: 5)
!146 = !DILocation(line: 7, column: 10, scope: !121)
!147 = !DILocation(line: 11, column: 5, scope: !145)
!148 = !DILocation(line: 11, column: 38, scope: !145)
!149 = !DILocation(line: 11, column: 5, scope: !121)
!150 = !DILocation(line: 14, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !121, file: !3, line: 14, column: 5)
!152 = !DILocation(line: 14, column: 20, scope: !151)
!153 = !DILocation(line: 14, column: 18, scope: !151)
!154 = !DILocation(line: 14, column: 7, scope: !151)
!155 = !DILocation(line: 14, column: 5, scope: !121)
!156 = !DILocation(line: 17, column: 19, scope: !121)
!157 = !DILocation(line: 17, column: 7, scope: !121)
!158 = !DILocation(line: 18, column: 9, scope: !121)
!159 = !DILocation(line: 18, column: 2, scope: !121)
!160 = !DILocation(line: 20, column: 35, scope: !121)
!161 = !DILocation(line: 20, column: 9, scope: !121)
!162 = !DILocation(line: 20, column: 2, scope: !121)
!163 = !DILocation(line: 21, column: 1, scope: !121)
!164 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 24, type: !41, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !165)
!165 = !{!166, !167, !168, !169, !170, !171}
!166 = !DILocalVariable(name: "env", arg: 1, scope: !164, file: !3, line: 24, type: !48)
!167 = !DILocalVariable(name: "argc", arg: 2, scope: !164, file: !3, line: 24, type: !11)
!168 = !DILocalVariable(name: "argv", arg: 3, scope: !164, file: !3, line: 24, type: !51)
!169 = !DILocalVariable(name: "a", scope: !164, file: !3, line: 25, type: !127)
!170 = !DILocalVariable(name: "b", scope: !164, file: !3, line: 26, type: !13)
!171 = !DILocalVariable(name: "result", scope: !164, file: !3, line: 33, type: !13)
!172 = !DILocation(line: 24, column: 38, scope: !164)
!173 = !DILocation(line: 24, column: 47, scope: !164)
!174 = !DILocation(line: 24, column: 72, scope: !164)
!175 = !DILocation(line: 25, column: 2, scope: !164)
!176 = !DILocation(line: 26, column: 2, scope: !164)
!177 = !DILocation(line: 27, column: 25, scope: !178)
!178 = distinct !DILexicalBlock(scope: !164, file: !3, line: 27, column: 5)
!179 = !DILocation(line: 25, column: 7, scope: !164)
!180 = !DILocation(line: 27, column: 5, scope: !178)
!181 = !DILocation(line: 27, column: 38, scope: !178)
!182 = !DILocation(line: 27, column: 5, scope: !164)
!183 = !DILocation(line: 30, column: 26, scope: !184)
!184 = distinct !DILexicalBlock(scope: !164, file: !3, line: 30, column: 5)
!185 = !DILocation(line: 26, column: 9, scope: !164)
!186 = !DILocation(line: 30, column: 5, scope: !184)
!187 = !DILocation(line: 30, column: 39, scope: !184)
!188 = !DILocation(line: 30, column: 5, scope: !164)
!189 = !DILocation(line: 33, column: 27, scope: !164)
!190 = !DILocation(line: 33, column: 19, scope: !164)
!191 = !DILocation(line: 33, column: 32, scope: !164)
!192 = !{!193, !193, i64 0}
!193 = !{!"double", !138, i64 0}
!194 = !DILocation(line: 33, column: 30, scope: !164)
!195 = !DILocation(line: 33, column: 9, scope: !164)
!196 = !DILocation(line: 34, column: 9, scope: !164)
!197 = !DILocation(line: 34, column: 2, scope: !164)
!198 = !DILocation(line: 36, column: 35, scope: !164)
!199 = !DILocation(line: 36, column: 9, scope: !164)
!200 = !DILocation(line: 36, column: 2, scope: !164)
!201 = !DILocation(line: 37, column: 1, scope: !164)
!202 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 40, type: !41, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !203)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DILocalVariable(name: "env", arg: 1, scope: !202, file: !3, line: 40, type: !48)
!205 = !DILocalVariable(name: "argc", arg: 2, scope: !202, file: !3, line: 40, type: !11)
!206 = !DILocalVariable(name: "argv", arg: 3, scope: !202, file: !3, line: 40, type: !51)
!207 = !DILocalVariable(name: "a", scope: !202, file: !3, line: 41, type: !13)
!208 = !DILocalVariable(name: "b", scope: !202, file: !3, line: 42, type: !127)
!209 = !DILocalVariable(name: "result", scope: !202, file: !3, line: 49, type: !13)
!210 = !DILocation(line: 40, column: 38, scope: !202)
!211 = !DILocation(line: 40, column: 47, scope: !202)
!212 = !DILocation(line: 40, column: 72, scope: !202)
!213 = !DILocation(line: 41, column: 2, scope: !202)
!214 = !DILocation(line: 42, column: 2, scope: !202)
!215 = !DILocation(line: 43, column: 26, scope: !216)
!216 = distinct !DILexicalBlock(scope: !202, file: !3, line: 43, column: 5)
!217 = !DILocation(line: 41, column: 9, scope: !202)
!218 = !DILocation(line: 43, column: 5, scope: !216)
!219 = !DILocation(line: 43, column: 39, scope: !216)
!220 = !DILocation(line: 43, column: 5, scope: !202)
!221 = !DILocation(line: 46, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !202, file: !3, line: 46, column: 5)
!223 = !DILocation(line: 42, column: 7, scope: !202)
!224 = !DILocation(line: 46, column: 5, scope: !222)
!225 = !DILocation(line: 46, column: 38, scope: !222)
!226 = !DILocation(line: 46, column: 5, scope: !202)
!227 = !DILocation(line: 49, column: 18, scope: !202)
!228 = !DILocation(line: 49, column: 32, scope: !202)
!229 = !DILocation(line: 49, column: 23, scope: !202)
!230 = !DILocation(line: 49, column: 20, scope: !202)
!231 = !DILocation(line: 49, column: 9, scope: !202)
!232 = !DILocation(line: 50, column: 9, scope: !202)
!233 = !DILocation(line: 50, column: 2, scope: !202)
!234 = !DILocation(line: 52, column: 35, scope: !202)
!235 = !DILocation(line: 52, column: 9, scope: !202)
!236 = !DILocation(line: 52, column: 2, scope: !202)
!237 = !DILocation(line: 53, column: 1, scope: !202)
!238 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 56, type: !41, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !239)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DILocalVariable(name: "env", arg: 1, scope: !238, file: !3, line: 56, type: !48)
!241 = !DILocalVariable(name: "argc", arg: 2, scope: !238, file: !3, line: 56, type: !11)
!242 = !DILocalVariable(name: "argv", arg: 3, scope: !238, file: !3, line: 56, type: !51)
!243 = !DILocalVariable(name: "a", scope: !238, file: !3, line: 57, type: !13)
!244 = !DILocalVariable(name: "b", scope: !238, file: !3, line: 57, type: !13)
!245 = !DILocalVariable(name: "result", scope: !238, file: !3, line: 64, type: !13)
!246 = !DILocation(line: 56, column: 38, scope: !238)
!247 = !DILocation(line: 56, column: 47, scope: !238)
!248 = !DILocation(line: 56, column: 72, scope: !238)
!249 = !DILocation(line: 57, column: 2, scope: !238)
!250 = !DILocation(line: 58, column: 26, scope: !251)
!251 = distinct !DILexicalBlock(scope: !238, file: !3, line: 58, column: 5)
!252 = !DILocation(line: 57, column: 9, scope: !238)
!253 = !DILocation(line: 58, column: 5, scope: !251)
!254 = !DILocation(line: 58, column: 39, scope: !251)
!255 = !DILocation(line: 58, column: 5, scope: !238)
!256 = !DILocation(line: 61, column: 26, scope: !257)
!257 = distinct !DILexicalBlock(scope: !238, file: !3, line: 61, column: 5)
!258 = !DILocation(line: 57, column: 12, scope: !238)
!259 = !DILocation(line: 61, column: 5, scope: !257)
!260 = !DILocation(line: 61, column: 39, scope: !257)
!261 = !DILocation(line: 61, column: 5, scope: !238)
!262 = !DILocation(line: 64, column: 18, scope: !238)
!263 = !DILocation(line: 64, column: 22, scope: !238)
!264 = !DILocation(line: 64, column: 20, scope: !238)
!265 = !DILocation(line: 64, column: 9, scope: !238)
!266 = !DILocation(line: 65, column: 9, scope: !238)
!267 = !DILocation(line: 65, column: 2, scope: !238)
!268 = !DILocation(line: 67, column: 35, scope: !238)
!269 = !DILocation(line: 67, column: 9, scope: !238)
!270 = !DILocation(line: 67, column: 2, scope: !238)
!271 = !DILocation(line: 68, column: 1, scope: !238)
!272 = !DILocation(line: 79, column: 1, scope: !17)
