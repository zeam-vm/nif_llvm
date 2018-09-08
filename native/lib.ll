; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [4 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !15
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 4, %struct.enif_func_t* getelementptr inbounds ([4 x %struct.enif_func_t], [4 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, align 8, !dbg !44
@.str.5 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

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
  br i1 %10, label %24, label %11, !dbg !164

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !165
  %13 = load i64, i64* %12, align 8, !dbg !165, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %5, metadata !153, metadata !DIExpression()), !dbg !167
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !168
  %15 = icmp eq i32 %14, 0, !dbg !169
  br i1 %15, label %24, label %16, !dbg !170

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !171, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %17, metadata !151, metadata !DIExpression()), !dbg !161
  %18 = load i64, i64* %5, align 8, !dbg !173, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %18, metadata !153, metadata !DIExpression()), !dbg !167
  %19 = sub nsw i64 9223372036854775807, %18, !dbg !174
  %20 = icmp sgt i64 %17, %19, !dbg !175
  br i1 %20, label %24, label %21, !dbg !176

; <label>:21:                                     ; preds = %16
  %22 = add nsw i64 %18, %17, !dbg !177
  call void @llvm.dbg.value(metadata i64 %22, metadata !154, metadata !DIExpression()), !dbg !178
  %23 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !179
  br label %26, !dbg !180

; <label>:24:                                     ; preds = %16, %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !181, !tbaa !105
  br label %26, !dbg !182

; <label>:26:                                     ; preds = %24, %21
  %27 = phi i64 [ %25, %24 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !183
  ret i64 %27, !dbg !183
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #2

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !184 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !186, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %1, metadata !187, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i64* %2, metadata !188, metadata !DIExpression()), !dbg !194
  %6 = bitcast i64* %4 to i8*, !dbg !195
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !195
  %7 = bitcast double* %5 to i8*, !dbg !196
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !196
  %8 = load i64, i64* %2, align 8, !dbg !197, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %4, metadata !189, metadata !DIExpression()), !dbg !199
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !200
  %10 = icmp eq i32 %9, 0, !dbg !201
  br i1 %10, label %22, label %11, !dbg !202

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !203
  %13 = load i64, i64* %12, align 8, !dbg !203, !tbaa !105
  call void @llvm.dbg.value(metadata double* %5, metadata !190, metadata !DIExpression()), !dbg !205
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !206
  %15 = icmp eq i32 %14, 0, !dbg !207
  br i1 %15, label %22, label %16, !dbg !208

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !209, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %17, metadata !189, metadata !DIExpression()), !dbg !199
  %18 = sitofp i64 %17 to double, !dbg !210
  %19 = load double, double* %5, align 8, !dbg !211, !tbaa !212
  call void @llvm.dbg.value(metadata double %19, metadata !190, metadata !DIExpression()), !dbg !205
  %20 = fadd double %19, %18, !dbg !214
  call void @llvm.dbg.value(metadata double %20, metadata !191, metadata !DIExpression()), !dbg !215
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !216
  br label %24, !dbg !217

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !218, !tbaa !105
  br label %24, !dbg !219

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !220
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !220
  ret i64 %25, !dbg !220
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #2

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !221 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !223, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %1, metadata !224, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i64* %2, metadata !225, metadata !DIExpression()), !dbg !231
  %6 = bitcast double* %4 to i8*, !dbg !232
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !232
  %7 = bitcast i64* %5 to i8*, !dbg !233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !233
  %8 = load i64, i64* %2, align 8, !dbg !234, !tbaa !105
  call void @llvm.dbg.value(metadata double* %4, metadata !226, metadata !DIExpression()), !dbg !236
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !237
  %10 = icmp eq i32 %9, 0, !dbg !238
  br i1 %10, label %22, label %11, !dbg !239

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !240
  %13 = load i64, i64* %12, align 8, !dbg !240, !tbaa !105
  call void @llvm.dbg.value(metadata i64* %5, metadata !227, metadata !DIExpression()), !dbg !242
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !243
  %15 = icmp eq i32 %14, 0, !dbg !244
  br i1 %15, label %22, label %16, !dbg !245

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !246, !tbaa !212
  call void @llvm.dbg.value(metadata double %17, metadata !226, metadata !DIExpression()), !dbg !236
  %18 = load i64, i64* %5, align 8, !dbg !247, !tbaa !105
  call void @llvm.dbg.value(metadata i64 %18, metadata !227, metadata !DIExpression()), !dbg !242
  %19 = sitofp i64 %18 to double, !dbg !248
  %20 = fadd double %17, %19, !dbg !249
  call void @llvm.dbg.value(metadata double %20, metadata !228, metadata !DIExpression()), !dbg !250
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !251
  br label %24, !dbg !252

; <label>:22:                                     ; preds = %11, %3
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !253, !tbaa !105
  br label %24, !dbg !254

; <label>:24:                                     ; preds = %22, %16
  %25 = phi i64 [ %23, %22 ], [ %21, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !255
  ret i64 %25, !dbg !255
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #0 !dbg !256 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !258, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i64* %2, metadata !260, metadata !DIExpression()), !dbg !266
  %6 = bitcast double* %4 to i8*, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !267
  %7 = bitcast double* %5 to i8*, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !267
  %8 = load i64, i64* %2, align 8, !dbg !268, !tbaa !105
  call void @llvm.dbg.value(metadata double* %4, metadata !261, metadata !DIExpression()), !dbg !270
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !271
  %10 = icmp eq i32 %9, 0, !dbg !272
  br i1 %10, label %21, label %11, !dbg !273

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !274
  %13 = load i64, i64* %12, align 8, !dbg !274, !tbaa !105
  call void @llvm.dbg.value(metadata double* %5, metadata !262, metadata !DIExpression()), !dbg !276
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !277
  %15 = icmp eq i32 %14, 0, !dbg !278
  br i1 %15, label %21, label %16, !dbg !279

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !280, !tbaa !212
  call void @llvm.dbg.value(metadata double %17, metadata !261, metadata !DIExpression()), !dbg !270
  %18 = load double, double* %5, align 8, !dbg !281, !tbaa !212
  call void @llvm.dbg.value(metadata double %18, metadata !262, metadata !DIExpression()), !dbg !276
  %19 = fadd double %17, %18, !dbg !282
  call void @llvm.dbg.value(metadata double %19, metadata !263, metadata !DIExpression()), !dbg !283
  %20 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !284
  br label %23, !dbg !285

; <label>:21:                                     ; preds = %11, %3
  %22 = load i64, i64* @arithmetic_error, align 8, !dbg !286, !tbaa !105
  br label %23, !dbg !287

; <label>:23:                                     ; preds = %21, %16
  %24 = phi i64 [ %22, %21 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !288
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !288
  ret i64 %24, !dbg !288
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #4 !dbg !46 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !289
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
!177 = !DILocation(line: 25, column: 19, scope: !146)
!178 = !DILocation(line: 25, column: 7, scope: !146)
!179 = !DILocation(line: 26, column: 9, scope: !146)
!180 = !DILocation(line: 26, column: 2, scope: !146)
!181 = !DILocation(line: 28, column: 9, scope: !146)
!182 = !DILocation(line: 28, column: 2, scope: !146)
!183 = !DILocation(line: 29, column: 1, scope: !146)
!184 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 32, type: !29, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !185)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DILocalVariable(name: "env", arg: 1, scope: !184, file: !3, line: 32, type: !36)
!187 = !DILocalVariable(name: "argc", arg: 2, scope: !184, file: !3, line: 32, type: !11)
!188 = !DILocalVariable(name: "argv", arg: 3, scope: !184, file: !3, line: 32, type: !39)
!189 = !DILocalVariable(name: "a", scope: !184, file: !3, line: 34, type: !152)
!190 = !DILocalVariable(name: "b", scope: !184, file: !3, line: 35, type: !13)
!191 = !DILocalVariable(name: "result", scope: !184, file: !3, line: 42, type: !13)
!192 = !DILocation(line: 32, column: 38, scope: !184)
!193 = !DILocation(line: 32, column: 47, scope: !184)
!194 = !DILocation(line: 32, column: 72, scope: !184)
!195 = !DILocation(line: 34, column: 2, scope: !184)
!196 = !DILocation(line: 35, column: 2, scope: !184)
!197 = !DILocation(line: 36, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !184, file: !3, line: 36, column: 5)
!199 = !DILocation(line: 34, column: 7, scope: !184)
!200 = !DILocation(line: 36, column: 5, scope: !198)
!201 = !DILocation(line: 36, column: 38, scope: !198)
!202 = !DILocation(line: 36, column: 5, scope: !184)
!203 = !DILocation(line: 39, column: 26, scope: !204)
!204 = distinct !DILexicalBlock(scope: !184, file: !3, line: 39, column: 5)
!205 = !DILocation(line: 35, column: 9, scope: !184)
!206 = !DILocation(line: 39, column: 5, scope: !204)
!207 = !DILocation(line: 39, column: 39, scope: !204)
!208 = !DILocation(line: 39, column: 5, scope: !184)
!209 = !DILocation(line: 42, column: 27, scope: !184)
!210 = !DILocation(line: 42, column: 19, scope: !184)
!211 = !DILocation(line: 42, column: 32, scope: !184)
!212 = !{!213, !213, i64 0}
!213 = !{!"double", !107, i64 0}
!214 = !DILocation(line: 42, column: 30, scope: !184)
!215 = !DILocation(line: 42, column: 9, scope: !184)
!216 = !DILocation(line: 43, column: 9, scope: !184)
!217 = !DILocation(line: 43, column: 2, scope: !184)
!218 = !DILocation(line: 45, column: 9, scope: !184)
!219 = !DILocation(line: 45, column: 2, scope: !184)
!220 = !DILocation(line: 46, column: 1, scope: !184)
!221 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 49, type: !29, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !222)
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DILocalVariable(name: "env", arg: 1, scope: !221, file: !3, line: 49, type: !36)
!224 = !DILocalVariable(name: "argc", arg: 2, scope: !221, file: !3, line: 49, type: !11)
!225 = !DILocalVariable(name: "argv", arg: 3, scope: !221, file: !3, line: 49, type: !39)
!226 = !DILocalVariable(name: "a", scope: !221, file: !3, line: 51, type: !13)
!227 = !DILocalVariable(name: "b", scope: !221, file: !3, line: 52, type: !152)
!228 = !DILocalVariable(name: "result", scope: !221, file: !3, line: 59, type: !13)
!229 = !DILocation(line: 49, column: 38, scope: !221)
!230 = !DILocation(line: 49, column: 47, scope: !221)
!231 = !DILocation(line: 49, column: 72, scope: !221)
!232 = !DILocation(line: 51, column: 2, scope: !221)
!233 = !DILocation(line: 52, column: 2, scope: !221)
!234 = !DILocation(line: 53, column: 26, scope: !235)
!235 = distinct !DILexicalBlock(scope: !221, file: !3, line: 53, column: 5)
!236 = !DILocation(line: 51, column: 9, scope: !221)
!237 = !DILocation(line: 53, column: 5, scope: !235)
!238 = !DILocation(line: 53, column: 39, scope: !235)
!239 = !DILocation(line: 53, column: 5, scope: !221)
!240 = !DILocation(line: 56, column: 25, scope: !241)
!241 = distinct !DILexicalBlock(scope: !221, file: !3, line: 56, column: 5)
!242 = !DILocation(line: 52, column: 7, scope: !221)
!243 = !DILocation(line: 56, column: 5, scope: !241)
!244 = !DILocation(line: 56, column: 38, scope: !241)
!245 = !DILocation(line: 56, column: 5, scope: !221)
!246 = !DILocation(line: 59, column: 18, scope: !221)
!247 = !DILocation(line: 59, column: 32, scope: !221)
!248 = !DILocation(line: 59, column: 23, scope: !221)
!249 = !DILocation(line: 59, column: 20, scope: !221)
!250 = !DILocation(line: 59, column: 9, scope: !221)
!251 = !DILocation(line: 60, column: 9, scope: !221)
!252 = !DILocation(line: 60, column: 2, scope: !221)
!253 = !DILocation(line: 62, column: 9, scope: !221)
!254 = !DILocation(line: 62, column: 2, scope: !221)
!255 = !DILocation(line: 63, column: 1, scope: !221)
!256 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 66, type: !29, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !257)
!257 = !{!258, !259, !260, !261, !262, !263}
!258 = !DILocalVariable(name: "env", arg: 1, scope: !256, file: !3, line: 66, type: !36)
!259 = !DILocalVariable(name: "argc", arg: 2, scope: !256, file: !3, line: 66, type: !11)
!260 = !DILocalVariable(name: "argv", arg: 3, scope: !256, file: !3, line: 66, type: !39)
!261 = !DILocalVariable(name: "a", scope: !256, file: !3, line: 68, type: !13)
!262 = !DILocalVariable(name: "b", scope: !256, file: !3, line: 68, type: !13)
!263 = !DILocalVariable(name: "result", scope: !256, file: !3, line: 75, type: !13)
!264 = !DILocation(line: 66, column: 38, scope: !256)
!265 = !DILocation(line: 66, column: 47, scope: !256)
!266 = !DILocation(line: 66, column: 72, scope: !256)
!267 = !DILocation(line: 68, column: 2, scope: !256)
!268 = !DILocation(line: 69, column: 26, scope: !269)
!269 = distinct !DILexicalBlock(scope: !256, file: !3, line: 69, column: 5)
!270 = !DILocation(line: 68, column: 9, scope: !256)
!271 = !DILocation(line: 69, column: 5, scope: !269)
!272 = !DILocation(line: 69, column: 39, scope: !269)
!273 = !DILocation(line: 69, column: 5, scope: !256)
!274 = !DILocation(line: 72, column: 26, scope: !275)
!275 = distinct !DILexicalBlock(scope: !256, file: !3, line: 72, column: 5)
!276 = !DILocation(line: 68, column: 12, scope: !256)
!277 = !DILocation(line: 72, column: 5, scope: !275)
!278 = !DILocation(line: 72, column: 39, scope: !275)
!279 = !DILocation(line: 72, column: 5, scope: !256)
!280 = !DILocation(line: 75, column: 18, scope: !256)
!281 = !DILocation(line: 75, column: 22, scope: !256)
!282 = !DILocation(line: 75, column: 20, scope: !256)
!283 = !DILocation(line: 75, column: 9, scope: !256)
!284 = !DILocation(line: 76, column: 9, scope: !256)
!285 = !DILocation(line: 76, column: 2, scope: !256)
!286 = !DILocation(line: 78, column: 9, scope: !256)
!287 = !DILocation(line: 78, column: 2, scope: !256)
!288 = !DILocation(line: 79, column: 1, scope: !256)
!289 = !DILocation(line: 91, column: 1, scope: !46)
