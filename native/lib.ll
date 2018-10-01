; ModuleID = 'native/lib.c'
source_filename = "native/lib.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.enif_func_t = type { i8*, i32, i64 (%struct.enif_environment_t*, i32, i64*)*, i32 }
%struct.enif_environment_t = type opaque
%struct.enif_entry_t = type { i32, i32, i8*, i32, %struct.enif_func_t*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i64)*, i32 (%struct.enif_environment_t*, i8**, i8**, i64)*, void (%struct.enif_environment_t*, i8*)*, i8*, i32, i64, i8* }
%struct.vector = type { i32, i64* }

@.str = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@arithmetic_error = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@ok_atom = internal unnamed_addr global i64 0, align 8, !dbg !88
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@error_atom = internal unnamed_addr global i64 0, align 8, !dbg !90
@.str.3 = private unnamed_addr constant [17 x i8] c"arithmetic_error\00", align 1
@arithmetic_error_atom = internal unnamed_addr global i64 0, align 8, !dbg !92
@.str.4 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ii\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"asm_1_nif_uu\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"asm_1_nif_bb\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"asm_1_nif_if\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"asm_1_nif_uf\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fi\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"asm_1_nif_fu\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"asm_1_nif_ff\00", align 1
@nif_funcs = internal global [8 x %struct.enif_func_t] [%struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ii, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_uu, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_bb, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_if, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_uf, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fi, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_fu, i32 0 }, %struct.enif_func_t { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 2, i64 (%struct.enif_environment_t*, i32, i64*)* @asm_1_nif_ff, i32 0 }], align 16, !dbg !23
@nif_init.entry = internal global %struct.enif_entry_t { i32 2, i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 8, %struct.enif_func_t* getelementptr inbounds ([8 x %struct.enif_func_t], [8 x %struct.enif_func_t]* @nif_funcs, i32 0, i32 0), i32 (%struct.enif_environment_t*, i8**, i64)* @load, i32 (%struct.enif_environment_t*, i8**, i64)* @reload, i32 (%struct.enif_environment_t*, i8**, i8**, i64)* @upgrade, void (%struct.enif_environment_t*, i8*)* @unload, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 1, i64 24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0) }, align 8, !dbg !52
@.str.12 = private unnamed_addr constant [15 x i8] c"Elixir.NifLlvm\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"beam.vanilla\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"erts-10.0 (OTP-21)\00", align 1

declare i64 @enif_make_tuple(%struct.enif_environment_t*, i32, ...) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i32 @load(%struct.enif_environment_t*, i8** nocapture readnone, i64) #1 !dbg !99 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i8** %1, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i64 %2, metadata !104, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !108, metadata !DIExpression()) #6, !dbg !113
  %4 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !115
  %5 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %4) #6, !dbg !116
  store i64 %5, i64* @arithmetic_error, align 8, !dbg !117, !tbaa !118
  %6 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !122
  store i64 %6, i64* @ok_atom, align 8, !dbg !123, !tbaa !118
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !124
  store i64 %7, i64* @error_atom, align 8, !dbg !125, !tbaa !118
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !126
  store i64 %8, i64* @arithmetic_error_atom, align 8, !dbg !127, !tbaa !118
  ret i32 0, !dbg !128
}

; Function Attrs: nounwind readnone ssp uwtable
define internal void @unload(%struct.enif_environment_t* nocapture, i8* nocapture) #2 !dbg !129 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i8* %1, metadata !132, metadata !DIExpression()), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: nounwind readnone ssp uwtable
define internal i32 @reload(%struct.enif_environment_t* nocapture readnone, i8** nocapture readnone, i64) #2 !dbg !136 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i8** %1, metadata !139, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i64 %2, metadata !140, metadata !DIExpression()), !dbg !143
  ret i32 0, !dbg !144
}

; Function Attrs: nounwind ssp uwtable
define internal i32 @upgrade(%struct.enif_environment_t*, i8** nocapture readnone, i8** nocapture readnone, i64) #1 !dbg !145 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i8** %1, metadata !148, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i8** %2, metadata !149, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata i64 %3, metadata !150, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !102, metadata !DIExpression()) #6, !dbg !155
  call void @llvm.dbg.value(metadata i8** %1, metadata !103, metadata !DIExpression()) #6, !dbg !157
  call void @llvm.dbg.value(metadata i64 %3, metadata !104, metadata !DIExpression()) #6, !dbg !158
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !108, metadata !DIExpression()) #6, !dbg !159
  %5 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #6, !dbg !161
  %6 = tail call i64 @enif_raise_exception(%struct.enif_environment_t* %0, i64 %5) #6, !dbg !162
  store i64 %6, i64* @arithmetic_error, align 8, !dbg !163, !tbaa !118
  %7 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !164
  store i64 %7, i64* @ok_atom, align 8, !dbg !165, !tbaa !118
  %8 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !166
  store i64 %8, i64* @error_atom, align 8, !dbg !167, !tbaa !118
  %9 = tail call i64 @enif_make_atom(%struct.enif_environment_t* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !168
  store i64 %9, i64* @arithmetic_error_atom, align 8, !dbg !169, !tbaa !118
  ret i32 0, !dbg !170
}

; Function Attrs: nounwind ssp uwtable
define i32 @enif_get_big_num(%struct.enif_environment_t*, i64, i32*, %struct.vector** nocapture) local_unnamed_addr #1 !dbg !171 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !177, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 %1, metadata !178, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32* %2, metadata !179, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata %struct.vector** %3, metadata !180, metadata !DIExpression()), !dbg !192
  %10 = bitcast i32* %5 to i8*, !dbg !193
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #6, !dbg !193
  %11 = bitcast i64** %6 to i8*, !dbg !194
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6, !dbg !194
  call void @llvm.dbg.value(metadata i32* %5, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !195
  call void @llvm.dbg.value(metadata i64** %6, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !196
  %12 = call i32 @enif_get_tuple(%struct.enif_environment_t* %0, i64 %1, i32* nonnull %5, i64** nonnull %6) #6, !dbg !197
  %13 = icmp ne i32 %12, 0, !dbg !199
  %14 = load i32, i32* %5, align 4, !dbg !200
  %15 = icmp eq i32 %14, 2, !dbg !202
  %16 = and i1 %13, %15, !dbg !203
  br i1 %16, label %17, label %94, !dbg !203, !prof !204

; <label>:17:                                     ; preds = %4
  %18 = load i64*, i64** %6, align 8, !dbg !205, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %18, metadata !182, metadata !DIExpression()), !dbg !196
  %19 = load i64, i64* %18, align 8, !dbg !205, !tbaa !118
  %20 = call i32 @enif_get_uint(%struct.enif_environment_t* %0, i64 %19, i32* %2) #6, !dbg !209
  %21 = icmp eq i32 %20, 0, !dbg !210
  br i1 %21, label %94, label %22, !dbg !211, !prof !212

; <label>:22:                                     ; preds = %17
  %23 = bitcast i32* %7 to i8*, !dbg !213
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #6, !dbg !213
  %24 = load i64*, i64** %6, align 8, !dbg !214, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %24, metadata !182, metadata !DIExpression()), !dbg !196
  %25 = getelementptr inbounds i64, i64* %24, i64 1, !dbg !214
  %26 = load i64, i64* %25, align 8, !dbg !214, !tbaa !118
  call void @llvm.dbg.value(metadata i32* %7, metadata !183, metadata !DIExpression(DW_OP_deref)), !dbg !216
  %27 = call i32 @enif_get_list_length(%struct.enif_environment_t* %0, i64 %26, i32* nonnull %7) #6, !dbg !217
  %28 = icmp eq i32 %27, 0, !dbg !218
  %29 = load i32, i32* %7, align 4, !dbg !219
  %30 = icmp eq i32 %29, 0, !dbg !221
  %31 = or i1 %28, %30, !dbg !222
  br i1 %31, label %92, label %32, !dbg !222, !prof !223

; <label>:32:                                     ; preds = %22
  %33 = bitcast i64* %8 to i8*, !dbg !224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #6, !dbg !224
  %34 = bitcast i64* %9 to i8*, !dbg !224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #6, !dbg !224
  %35 = load i64*, i64** %6, align 8, !dbg !225, !tbaa !207
  call void @llvm.dbg.value(metadata i64* %35, metadata !182, metadata !DIExpression()), !dbg !196
  %36 = getelementptr inbounds i64, i64* %35, i64 1, !dbg !225
  %37 = load i64, i64* %36, align 8, !dbg !225, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %8, metadata !184, metadata !DIExpression(DW_OP_deref)), !dbg !227
  call void @llvm.dbg.value(metadata i64* %9, metadata !185, metadata !DIExpression(DW_OP_deref)), !dbg !228
  %38 = call i32 @enif_get_list_cell(%struct.enif_environment_t* %0, i64 %37, i64* nonnull %8, i64* nonnull %9) #6, !dbg !229
  %39 = icmp eq i32 %38, 0, !dbg !230
  br i1 %39, label %90, label %40, !dbg !231, !prof !212

; <label>:40:                                     ; preds = %32
  %41 = load i32, i32* %7, align 4, !dbg !232, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %41, metadata !183, metadata !DIExpression()), !dbg !216
  %42 = zext i32 %41 to i64, !dbg !232
  %43 = shl nuw nsw i64 %42, 3, !dbg !235
  %44 = call i8* @enif_alloc(i64 %43) #6, !dbg !236
  %45 = bitcast i8* %44 to i64*, !dbg !237
  call void @llvm.dbg.value(metadata i64* %45, metadata !186, metadata !DIExpression()), !dbg !238
  %46 = icmp eq i8* %44, null, !dbg !239
  br i1 %46, label %90, label %47, !dbg !241, !prof !212

; <label>:47:                                     ; preds = %40
  %48 = call i8* @enif_alloc(i64 16) #6, !dbg !242
  %49 = bitcast %struct.vector** %3 to i8**, !dbg !243
  store i8* %48, i8** %49, align 8, !dbg !243, !tbaa !207
  %50 = icmp eq i8* %48, null, !dbg !244
  br i1 %50, label %55, label %51, !dbg !246, !prof !212

; <label>:51:                                     ; preds = %47
  %52 = bitcast i8* %48 to %struct.vector*, !dbg !246
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !247
  %53 = load i32, i32* %7, align 4, !dbg !248, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %53, metadata !183, metadata !DIExpression()), !dbg !216
  %54 = icmp eq i32 %53, 0, !dbg !250
  br i1 %54, label %84, label %56, !dbg !251

; <label>:55:                                     ; preds = %47
  call void @enif_free(i8* nonnull %44) #6, !dbg !252
  br label %90, !dbg !254

; <label>:56:                                     ; preds = %51, %77
  %57 = phi i64 [ %79, %77 ], [ 0, %51 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !187, metadata !DIExpression()), !dbg !247
  %58 = load i64, i64* %8, align 8, !dbg !255, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %58, metadata !184, metadata !DIExpression()), !dbg !227
  %59 = getelementptr inbounds i64, i64* %45, i64 %57, !dbg !258
  %60 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %58, i64* %59) #6, !dbg !259
  %61 = icmp eq i32 %60, 0, !dbg !260
  br i1 %61, label %62, label %63, !dbg !261, !prof !212

; <label>:62:                                     ; preds = %56
  call void @enif_free(i8* nonnull %44) #6, !dbg !262
  br label %90

; <label>:63:                                     ; preds = %56
  %64 = load i64, i64* %9, align 8, !dbg !264, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %64, metadata !185, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64* %8, metadata !184, metadata !DIExpression(DW_OP_deref)), !dbg !227
  call void @llvm.dbg.value(metadata i64* %9, metadata !185, metadata !DIExpression(DW_OP_deref)), !dbg !228
  %65 = call i32 @enif_get_list_cell(%struct.enif_environment_t* %0, i64 %64, i64* nonnull %8, i64* nonnull %9) #6, !dbg !266
  %66 = icmp eq i32 %65, 0, !dbg !267
  br i1 %66, label %71, label %67, !dbg !268, !prof !212

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %7, align 4, !dbg !248, !tbaa !233
  %69 = add nuw nsw i64 %57, 1, !dbg !269
  %70 = zext i32 %68 to i64, !dbg !250
  br label %77, !dbg !268

; <label>:71:                                     ; preds = %63
  %72 = add nuw nsw i64 %57, 1, !dbg !270
  %73 = load i32, i32* %7, align 4, !dbg !273, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %73, metadata !183, metadata !DIExpression()), !dbg !216
  %74 = zext i32 %73 to i64, !dbg !274
  %75 = icmp ult i64 %72, %74, !dbg !274
  br i1 %75, label %76, label %77, !dbg !275

; <label>:76:                                     ; preds = %71
  call void @enif_free(i8* nonnull %44) #6, !dbg !276
  br label %90

; <label>:77:                                     ; preds = %67, %71
  %78 = phi i64 [ %70, %67 ], [ %74, %71 ], !dbg !250
  %79 = phi i64 [ %69, %67 ], [ %72, %71 ], !dbg !269
  %80 = phi i32 [ %68, %67 ], [ %73, %71 ], !dbg !248
  call void @llvm.dbg.value(metadata i32 undef, metadata !187, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !247
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !216
  %81 = icmp ult i64 %79, %78, !dbg !250
  br i1 %81, label %56, label %82, !dbg !251, !llvm.loop !278

; <label>:82:                                     ; preds = %77
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %80, metadata !183, metadata !DIExpression()), !dbg !216
  %83 = load %struct.vector*, %struct.vector** %3, align 8, !dbg !280, !tbaa !207
  br label %84, !dbg !280

; <label>:84:                                     ; preds = %82, %51
  %85 = phi %struct.vector* [ %52, %51 ], [ %83, %82 ], !dbg !280
  %86 = phi i32 [ 0, %51 ], [ %80, %82 ], !dbg !248
  call void @llvm.dbg.value(metadata i32 undef, metadata !183, metadata !DIExpression()), !dbg !216
  %87 = getelementptr inbounds %struct.vector, %struct.vector* %85, i64 0, i32 0, !dbg !281
  store i32 %86, i32* %87, align 8, !dbg !282, !tbaa !283
  %88 = getelementptr inbounds %struct.vector, %struct.vector* %85, i64 0, i32 1, !dbg !285
  %89 = bitcast i64** %88 to i8**, !dbg !286
  store i8* %44, i8** %89, align 8, !dbg !286, !tbaa !287
  br label %90, !dbg !288

; <label>:90:                                     ; preds = %55, %84, %40, %62, %76, %32
  %91 = phi i32 [ 0, %32 ], [ 0, %55 ], [ 1, %84 ], [ 0, %40 ], [ 0, %62 ], [ 0, %76 ], !dbg !289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #6, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #6, !dbg !291
  br label %92

; <label>:92:                                     ; preds = %22, %90
  %93 = phi i32 [ %91, %90 ], [ 0, %22 ], !dbg !292
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #6, !dbg !291
  br label %94

; <label>:94:                                     ; preds = %4, %17, %92
  %95 = phi i32 [ %93, %92 ], [ 0, %4 ], [ 0, %17 ], !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #6, !dbg !291
  ret i32 %95, !dbg !291
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

declare i32 @enif_get_tuple(%struct.enif_environment_t*, i64, i32*, i64**) local_unnamed_addr #0

declare i32 @enif_get_uint(%struct.enif_environment_t*, i64, i32*) local_unnamed_addr #0

declare i32 @enif_get_list_length(%struct.enif_environment_t*, i64, i32*) local_unnamed_addr #0

declare i32 @enif_get_list_cell(%struct.enif_environment_t*, i64, i64*, i64*) local_unnamed_addr #0

declare i8* @enif_alloc(i64) local_unnamed_addr #0

declare void @enif_free(i8*) local_unnamed_addr #0

declare i32 @enif_get_ulong(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: nounwind ssp uwtable
define i64 @enif_make_big_num(%struct.enif_environment_t*, i32, %struct.vector* nocapture readonly) local_unnamed_addr #1 !dbg !296 {
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !303, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i32 %1, metadata !304, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.value(metadata %struct.vector* %2, metadata !305, metadata !DIExpression()), !dbg !314
  %4 = tail call i64 @enif_make_uint(%struct.enif_environment_t* %0, i32 %1) #6, !dbg !315
  call void @llvm.dbg.value(metadata i64 %4, metadata !306, metadata !DIExpression()), !dbg !316
  %5 = getelementptr inbounds %struct.vector, %struct.vector* %2, i64 0, i32 0, !dbg !317
  %6 = load i32, i32* %5, align 8, !dbg !317, !tbaa !283
  %7 = sext i32 %6 to i64, !dbg !318
  %8 = shl nsw i64 %7, 3, !dbg !319
  %9 = tail call i8* @enif_alloc(i64 %8) #6, !dbg !320
  %10 = bitcast i8* %9 to i64*, !dbg !320
  call void @llvm.dbg.value(metadata i64* %10, metadata !307, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.value(metadata i32 0, metadata !309, metadata !DIExpression()), !dbg !322
  %11 = load i32, i32* %5, align 8, !dbg !323, !tbaa !283
  %12 = icmp sgt i32 %11, 0, !dbg !325
  br i1 %12, label %13, label %15, !dbg !326

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %2, i64 0, i32 1
  br label %19, !dbg !326

; <label>:15:                                     ; preds = %19, %3
  %16 = phi i32 [ %11, %3 ], [ %27, %19 ], !dbg !323
  %17 = tail call i64 @enif_make_list_from_array(%struct.enif_environment_t* %0, i64* %10, i32 %16) #6, !dbg !327
  call void @llvm.dbg.value(metadata i64 %17, metadata !311, metadata !DIExpression()), !dbg !328
  tail call void @enif_free(i8* %9) #6, !dbg !329
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !338
  call void @llvm.dbg.value(metadata i64 %4, metadata !336, metadata !DIExpression()) #6, !dbg !340
  call void @llvm.dbg.value(metadata i64 %17, metadata !337, metadata !DIExpression()) #6, !dbg !341
  %18 = tail call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %4, i64 %17) #6, !dbg !342
  ret i64 %18, !dbg !343

; <label>:19:                                     ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %26, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !309, metadata !DIExpression()), !dbg !322
  %21 = load i64*, i64** %14, align 8, !dbg !344, !tbaa !287
  %22 = getelementptr inbounds i64, i64* %21, i64 %20, !dbg !346
  %23 = load i64, i64* %22, align 8, !dbg !346, !tbaa !118
  %24 = tail call i64 @enif_make_ulong(%struct.enif_environment_t* %0, i64 %23) #6, !dbg !347
  %25 = getelementptr inbounds i64, i64* %10, i64 %20, !dbg !348
  store i64 %24, i64* %25, align 8, !dbg !349, !tbaa !118
  %26 = add nuw nsw i64 %20, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32 undef, metadata !309, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !322
  %27 = load i32, i32* %5, align 8, !dbg !323, !tbaa !283
  %28 = sext i32 %27 to i64, !dbg !325
  %29 = icmp slt i64 %26, %28, !dbg !325
  br i1 %29, label %19, label %15, !dbg !326, !llvm.loop !351
}

declare i64 @enif_make_uint(%struct.enif_environment_t*, i32) local_unnamed_addr #0

declare i64 @enif_make_ulong(%struct.enif_environment_t*, i64) local_unnamed_addr #0

declare i64 @enif_make_list_from_array(%struct.enif_environment_t*, i64*, i32) local_unnamed_addr #0

declare i64 @enif_raise_exception(%struct.enif_environment_t*, i64) local_unnamed_addr #0

declare i64 @enif_make_atom(%struct.enif_environment_t*, i8*) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ii(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !353 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !355, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata i32 %1, metadata !356, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i64* %2, metadata !357, metadata !DIExpression()), !dbg !364
  %6 = bitcast i64* %4 to i8*, !dbg !365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !365
  %7 = bitcast i64* %5 to i8*, !dbg !365
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !365
  %8 = load i64, i64* %2, align 8, !dbg !366, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %4, metadata !358, metadata !DIExpression(DW_OP_deref)), !dbg !368
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !369
  %10 = icmp eq i32 %9, 0, !dbg !370
  br i1 %10, label %26, label %11, !dbg !371, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !372
  %13 = load i64, i64* %12, align 8, !dbg !372, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %5, metadata !360, metadata !DIExpression(DW_OP_deref)), !dbg !374
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !375
  %15 = icmp eq i32 %14, 0, !dbg !376
  br i1 %15, label %26, label %16, !dbg !377, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !378, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %17, metadata !358, metadata !DIExpression()), !dbg !368
  %18 = load i64, i64* %5, align 8, !dbg !380, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %18, metadata !360, metadata !DIExpression()), !dbg !374
  %19 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %17, i64 %18), !dbg !381
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !381
  br i1 %20, label %28, label %21, !dbg !382, !prof !212

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !381
  call void @llvm.dbg.value(metadata i64 %22, metadata !361, metadata !DIExpression()), !dbg !383
  %23 = load i64, i64* @ok_atom, align 8, !dbg !384, !tbaa !118
  %24 = call i64 @enif_make_long(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !385
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !386
  call void @llvm.dbg.value(metadata i64 %23, metadata !336, metadata !DIExpression()) #6, !dbg !388
  call void @llvm.dbg.value(metadata i64 %24, metadata !337, metadata !DIExpression()) #6, !dbg !389
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !390
  br label %32, !dbg !391

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !392, !tbaa !118
  br label %32, !dbg !393

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !394, !tbaa !118
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !395, !tbaa !118
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !396
  call void @llvm.dbg.value(metadata i64 %29, metadata !336, metadata !DIExpression()) #6, !dbg !398
  call void @llvm.dbg.value(metadata i64 %30, metadata !337, metadata !DIExpression()) #6, !dbg !399
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !400
  br label %32, !dbg !401

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ], !dbg !402
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !403
  ret i64 %33, !dbg !403
}

declare i32 @enif_get_long(%struct.enif_environment_t*, i64, i64*) local_unnamed_addr #0

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #4

declare i64 @enif_make_long(%struct.enif_environment_t*, i64) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_uu(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !404 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !406, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32 %1, metadata !407, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata i64* %2, metadata !408, metadata !DIExpression()), !dbg !414
  %6 = bitcast i64* %4 to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !415
  %7 = bitcast i64* %5 to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !415
  %8 = load i64, i64* %2, align 8, !dbg !416, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %4, metadata !409, metadata !DIExpression(DW_OP_deref)), !dbg !418
  %9 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !419
  %10 = icmp eq i32 %9, 0, !dbg !420
  br i1 %10, label %26, label %11, !dbg !421, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !422
  %13 = load i64, i64* %12, align 8, !dbg !422, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %5, metadata !410, metadata !DIExpression(DW_OP_deref)), !dbg !424
  %14 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !425
  %15 = icmp eq i32 %14, 0, !dbg !426
  br i1 %15, label %26, label %16, !dbg !427, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !428, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %17, metadata !409, metadata !DIExpression()), !dbg !418
  %18 = load i64, i64* %5, align 8, !dbg !430, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %18, metadata !410, metadata !DIExpression()), !dbg !424
  %19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %17, i64 %18), !dbg !431
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !431
  br i1 %20, label %28, label %21, !dbg !432, !prof !212

; <label>:21:                                     ; preds = %16
  %22 = extractvalue { i64, i1 } %19, 0, !dbg !431
  call void @llvm.dbg.value(metadata i64 %22, metadata !411, metadata !DIExpression()), !dbg !433
  %23 = load i64, i64* @ok_atom, align 8, !dbg !434, !tbaa !118
  %24 = call i64 @enif_make_ulong(%struct.enif_environment_t* %0, i64 %22) #6, !dbg !435
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !436
  call void @llvm.dbg.value(metadata i64 %23, metadata !336, metadata !DIExpression()) #6, !dbg !438
  call void @llvm.dbg.value(metadata i64 %24, metadata !337, metadata !DIExpression()) #6, !dbg !439
  %25 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %23, i64 %24) #6, !dbg !440
  br label %32, !dbg !441

; <label>:26:                                     ; preds = %11, %3
  %27 = load i64, i64* @arithmetic_error, align 8, !dbg !442, !tbaa !118
  br label %32, !dbg !443

; <label>:28:                                     ; preds = %16
  %29 = load i64, i64* @error_atom, align 8, !dbg !444, !tbaa !118
  %30 = load i64, i64* @arithmetic_error_atom, align 8, !dbg !445, !tbaa !118
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !446
  call void @llvm.dbg.value(metadata i64 %29, metadata !336, metadata !DIExpression()) #6, !dbg !448
  call void @llvm.dbg.value(metadata i64 %30, metadata !337, metadata !DIExpression()) #6, !dbg !449
  %31 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %29, i64 %30) #6, !dbg !450
  br label %32, !dbg !451

; <label>:32:                                     ; preds = %28, %26, %21
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ], [ %25, %21 ], !dbg !452
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !453
  ret i64 %33, !dbg !453
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_bb(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !454 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vector*, align 8
  %7 = alloca %struct.vector*, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !456, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.value(metadata i32 %1, metadata !457, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i64* %2, metadata !458, metadata !DIExpression()), !dbg !466
  %8 = bitcast i32* %4 to i8*, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #6, !dbg !467
  %9 = bitcast i32* %5 to i8*, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !467
  %10 = bitcast %struct.vector** %6 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6, !dbg !468
  %11 = bitcast %struct.vector** %7 to i8*, !dbg !468
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #6, !dbg !468
  %12 = load i64, i64* %2, align 8, !dbg !469, !tbaa !118
  call void @llvm.dbg.value(metadata i32* %4, metadata !459, metadata !DIExpression(DW_OP_deref)), !dbg !471
  call void @llvm.dbg.value(metadata %struct.vector** %6, metadata !461, metadata !DIExpression(DW_OP_deref)), !dbg !472
  %13 = call i32 @enif_get_big_num(%struct.enif_environment_t* %0, i64 %12, i32* nonnull %4, %struct.vector** nonnull %6), !dbg !473
  %14 = icmp eq i32 %13, 0, !dbg !474
  br i1 %14, label %15, label %17, !dbg !475, !prof !212

; <label>:15:                                     ; preds = %3
  %16 = load i64, i64* @arithmetic_error, align 8, !dbg !476, !tbaa !118
  br label %39, !dbg !478

; <label>:17:                                     ; preds = %3
  %18 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !479
  %19 = load i64, i64* %18, align 8, !dbg !479, !tbaa !118
  call void @llvm.dbg.value(metadata i32* %5, metadata !460, metadata !DIExpression(DW_OP_deref)), !dbg !481
  call void @llvm.dbg.value(metadata %struct.vector** %7, metadata !462, metadata !DIExpression(DW_OP_deref)), !dbg !482
  %20 = call i32 @enif_get_big_num(%struct.enif_environment_t* %0, i64 %19, i32* nonnull %5, %struct.vector** nonnull %7), !dbg !483
  %21 = icmp eq i32 %20, 0, !dbg !484
  br i1 %21, label %22, label %24, !dbg !485, !prof !212

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* @arithmetic_error, align 8, !dbg !486, !tbaa !118
  br label %39, !dbg !488

; <label>:24:                                     ; preds = %17
  %25 = load i32, i32* %4, align 4, !dbg !489, !tbaa !233
  call void @llvm.dbg.value(metadata i32 %25, metadata !459, metadata !DIExpression()), !dbg !471
  %26 = load %struct.vector*, %struct.vector** %6, align 8, !dbg !490, !tbaa !207
  call void @llvm.dbg.value(metadata %struct.vector* %26, metadata !461, metadata !DIExpression()), !dbg !472
  %27 = call i64 @enif_make_big_num(%struct.enif_environment_t* %0, i32 %25, %struct.vector* %26), !dbg !491
  call void @llvm.dbg.value(metadata i64 %27, metadata !463, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.value(metadata %struct.vector* %26, metadata !461, metadata !DIExpression()), !dbg !472
  %28 = getelementptr inbounds %struct.vector, %struct.vector* %26, i64 0, i32 1, !dbg !493
  %29 = bitcast i64** %28 to i8**, !dbg !493
  %30 = load i8*, i8** %29, align 8, !dbg !493, !tbaa !287
  call void @enif_free(i8* %30) #6, !dbg !494
  %31 = bitcast %struct.vector* %26 to i8*, !dbg !495
  call void @llvm.dbg.value(metadata %struct.vector** %6, metadata !461, metadata !DIExpression(DW_OP_deref)), !dbg !472
  call void @enif_free(i8* %31) #6, !dbg !496
  %32 = load %struct.vector*, %struct.vector** %7, align 8, !dbg !497, !tbaa !207
  call void @llvm.dbg.value(metadata %struct.vector* %32, metadata !462, metadata !DIExpression()), !dbg !482
  %33 = getelementptr inbounds %struct.vector, %struct.vector* %32, i64 0, i32 1, !dbg !498
  %34 = bitcast i64** %33 to i8**, !dbg !498
  %35 = load i8*, i8** %34, align 8, !dbg !498, !tbaa !287
  call void @enif_free(i8* %35) #6, !dbg !499
  %36 = bitcast %struct.vector* %32 to i8*, !dbg !500
  call void @llvm.dbg.value(metadata %struct.vector** %7, metadata !462, metadata !DIExpression(DW_OP_deref)), !dbg !482
  call void @enif_free(i8* %36) #6, !dbg !501
  %37 = load i64, i64* @ok_atom, align 8, !dbg !502, !tbaa !118
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !503
  call void @llvm.dbg.value(metadata i64 %37, metadata !336, metadata !DIExpression()) #6, !dbg !505
  call void @llvm.dbg.value(metadata i64 %27, metadata !337, metadata !DIExpression()) #6, !dbg !506
  %38 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %37, i64 %27) #6, !dbg !507
  br label %39

; <label>:39:                                     ; preds = %24, %22, %15
  %40 = phi i64 [ %16, %15 ], [ %23, %22 ], [ %38, %24 ], !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #6, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #6, !dbg !509
  ret i64 %40, !dbg !509
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_if(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !510 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !512, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 %1, metadata !513, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.value(metadata i64* %2, metadata !514, metadata !DIExpression()), !dbg !520
  %6 = bitcast i64* %4 to i8*, !dbg !521
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !521
  %7 = bitcast double* %5 to i8*, !dbg !522
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !522
  %8 = load i64, i64* %2, align 8, !dbg !523, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %4, metadata !515, metadata !DIExpression(DW_OP_deref)), !dbg !525
  %9 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !526
  %10 = icmp eq i32 %9, 0, !dbg !527
  br i1 %10, label %24, label %11, !dbg !528, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !529
  %13 = load i64, i64* %12, align 8, !dbg !529, !tbaa !118
  call void @llvm.dbg.value(metadata double* %5, metadata !516, metadata !DIExpression(DW_OP_deref)), !dbg !531
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !532
  %15 = icmp eq i32 %14, 0, !dbg !533
  br i1 %15, label %24, label %16, !dbg !534, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !535, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %17, metadata !515, metadata !DIExpression()), !dbg !525
  %18 = sitofp i64 %17 to double, !dbg !536
  %19 = load double, double* %5, align 8, !dbg !537, !tbaa !538
  call void @llvm.dbg.value(metadata double %19, metadata !516, metadata !DIExpression()), !dbg !531
  %20 = fadd double %19, %18, !dbg !540
  call void @llvm.dbg.value(metadata double %20, metadata !517, metadata !DIExpression()), !dbg !541
  %21 = load i64, i64* @ok_atom, align 8, !dbg !542, !tbaa !118
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !543
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !544
  call void @llvm.dbg.value(metadata i64 %21, metadata !336, metadata !DIExpression()) #6, !dbg !546
  call void @llvm.dbg.value(metadata i64 %22, metadata !337, metadata !DIExpression()) #6, !dbg !547
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !548
  br label %26, !dbg !549

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !550, !tbaa !118
  br label %26, !dbg !551

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !553
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !553
  ret i64 %27, !dbg !553
}

declare i32 @enif_get_double(%struct.enif_environment_t*, i64, double*) local_unnamed_addr #0

declare i64 @enif_make_double(%struct.enif_environment_t*, double) local_unnamed_addr #0

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_uf(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !554 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !556, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.value(metadata i32 %1, metadata !557, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata i64* %2, metadata !558, metadata !DIExpression()), !dbg !564
  %6 = bitcast i64* %4 to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !565
  %7 = bitcast double* %5 to i8*, !dbg !566
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !566
  %8 = load i64, i64* %2, align 8, !dbg !567, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %4, metadata !559, metadata !DIExpression(DW_OP_deref)), !dbg !569
  %9 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %8, i64* nonnull %4) #6, !dbg !570
  %10 = icmp eq i32 %9, 0, !dbg !571
  br i1 %10, label %24, label %11, !dbg !572, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !573
  %13 = load i64, i64* %12, align 8, !dbg !573, !tbaa !118
  call void @llvm.dbg.value(metadata double* %5, metadata !560, metadata !DIExpression(DW_OP_deref)), !dbg !575
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !576
  %15 = icmp eq i32 %14, 0, !dbg !577
  br i1 %15, label %24, label %16, !dbg !578, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load i64, i64* %4, align 8, !dbg !579, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %17, metadata !559, metadata !DIExpression()), !dbg !569
  %18 = uitofp i64 %17 to double, !dbg !580
  %19 = load double, double* %5, align 8, !dbg !581, !tbaa !538
  call void @llvm.dbg.value(metadata double %19, metadata !560, metadata !DIExpression()), !dbg !575
  %20 = fadd double %19, %18, !dbg !582
  call void @llvm.dbg.value(metadata double %20, metadata !561, metadata !DIExpression()), !dbg !583
  %21 = load i64, i64* @ok_atom, align 8, !dbg !584, !tbaa !118
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !585
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !586
  call void @llvm.dbg.value(metadata i64 %21, metadata !336, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata i64 %22, metadata !337, metadata !DIExpression()) #6, !dbg !589
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !590
  br label %26, !dbg !591

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !592, !tbaa !118
  br label %26, !dbg !593

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !595
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !595
  ret i64 %27, !dbg !595
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fi(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !596 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !598, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.value(metadata i32 %1, metadata !599, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64* %2, metadata !600, metadata !DIExpression()), !dbg !606
  %6 = bitcast double* %4 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !607
  %7 = bitcast i64* %5 to i8*, !dbg !608
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !608
  %8 = load i64, i64* %2, align 8, !dbg !609, !tbaa !118
  call void @llvm.dbg.value(metadata double* %4, metadata !601, metadata !DIExpression(DW_OP_deref)), !dbg !611
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !612
  %10 = icmp eq i32 %9, 0, !dbg !613
  br i1 %10, label %24, label %11, !dbg !614, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !615
  %13 = load i64, i64* %12, align 8, !dbg !615, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %5, metadata !602, metadata !DIExpression(DW_OP_deref)), !dbg !617
  %14 = call i32 @enif_get_long(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !618
  %15 = icmp eq i32 %14, 0, !dbg !619
  br i1 %15, label %24, label %16, !dbg !620, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !621, !tbaa !538
  call void @llvm.dbg.value(metadata double %17, metadata !601, metadata !DIExpression()), !dbg !611
  %18 = load i64, i64* %5, align 8, !dbg !622, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %18, metadata !602, metadata !DIExpression()), !dbg !617
  %19 = sitofp i64 %18 to double, !dbg !623
  %20 = fadd double %17, %19, !dbg !624
  call void @llvm.dbg.value(metadata double %20, metadata !603, metadata !DIExpression()), !dbg !625
  %21 = load i64, i64* @ok_atom, align 8, !dbg !626, !tbaa !118
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !627
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !628
  call void @llvm.dbg.value(metadata i64 %21, metadata !336, metadata !DIExpression()) #6, !dbg !630
  call void @llvm.dbg.value(metadata i64 %22, metadata !337, metadata !DIExpression()) #6, !dbg !631
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !632
  br label %26, !dbg !633

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !634, !tbaa !118
  br label %26, !dbg !635

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !637
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !637
  ret i64 %27, !dbg !637
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_fu(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !638 {
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !640, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.value(metadata i32 %1, metadata !641, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i64* %2, metadata !642, metadata !DIExpression()), !dbg !648
  %6 = bitcast double* %4 to i8*, !dbg !649
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !649
  %7 = bitcast i64* %5 to i8*, !dbg !650
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !650
  %8 = load i64, i64* %2, align 8, !dbg !651, !tbaa !118
  call void @llvm.dbg.value(metadata double* %4, metadata !643, metadata !DIExpression(DW_OP_deref)), !dbg !653
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !654
  %10 = icmp eq i32 %9, 0, !dbg !655
  br i1 %10, label %24, label %11, !dbg !656, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !657
  %13 = load i64, i64* %12, align 8, !dbg !657, !tbaa !118
  call void @llvm.dbg.value(metadata i64* %5, metadata !644, metadata !DIExpression(DW_OP_deref)), !dbg !659
  %14 = call i32 @enif_get_ulong(%struct.enif_environment_t* %0, i64 %13, i64* nonnull %5) #6, !dbg !660
  %15 = icmp eq i32 %14, 0, !dbg !661
  br i1 %15, label %24, label %16, !dbg !662, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !663, !tbaa !538
  call void @llvm.dbg.value(metadata double %17, metadata !643, metadata !DIExpression()), !dbg !653
  %18 = load i64, i64* %5, align 8, !dbg !664, !tbaa !118
  call void @llvm.dbg.value(metadata i64 %18, metadata !644, metadata !DIExpression()), !dbg !659
  %19 = uitofp i64 %18 to double, !dbg !665
  %20 = fadd double %17, %19, !dbg !666
  call void @llvm.dbg.value(metadata double %20, metadata !645, metadata !DIExpression()), !dbg !667
  %21 = load i64, i64* @ok_atom, align 8, !dbg !668, !tbaa !118
  %22 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %20) #6, !dbg !669
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !670
  call void @llvm.dbg.value(metadata i64 %21, metadata !336, metadata !DIExpression()) #6, !dbg !672
  call void @llvm.dbg.value(metadata i64 %22, metadata !337, metadata !DIExpression()) #6, !dbg !673
  %23 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %21, i64 %22) #6, !dbg !674
  br label %26, !dbg !675

; <label>:24:                                     ; preds = %11, %3
  %25 = load i64, i64* @arithmetic_error, align 8, !dbg !676, !tbaa !118
  br label %26, !dbg !677

; <label>:26:                                     ; preds = %24, %16
  %27 = phi i64 [ %25, %24 ], [ %23, %16 ], !dbg !678
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !679
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !679
  ret i64 %27, !dbg !679
}

; Function Attrs: nounwind ssp uwtable
define internal i64 @asm_1_nif_ff(%struct.enif_environment_t*, i32, i64* nocapture readonly) #1 !dbg !680 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !682, metadata !DIExpression()), !dbg !688
  call void @llvm.dbg.value(metadata i32 %1, metadata !683, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i64* %2, metadata !684, metadata !DIExpression()), !dbg !690
  %6 = bitcast double* %4 to i8*, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #6, !dbg !691
  %7 = bitcast double* %5 to i8*, !dbg !691
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !691
  %8 = load i64, i64* %2, align 8, !dbg !692, !tbaa !118
  call void @llvm.dbg.value(metadata double* %4, metadata !685, metadata !DIExpression(DW_OP_deref)), !dbg !694
  %9 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %8, double* nonnull %4) #6, !dbg !695
  %10 = icmp eq i32 %9, 0, !dbg !696
  br i1 %10, label %23, label %11, !dbg !697, !prof !212

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i64, i64* %2, i64 1, !dbg !698
  %13 = load i64, i64* %12, align 8, !dbg !698, !tbaa !118
  call void @llvm.dbg.value(metadata double* %5, metadata !686, metadata !DIExpression(DW_OP_deref)), !dbg !700
  %14 = call i32 @enif_get_double(%struct.enif_environment_t* %0, i64 %13, double* nonnull %5) #6, !dbg !701
  %15 = icmp eq i32 %14, 0, !dbg !702
  br i1 %15, label %23, label %16, !dbg !703, !prof !212

; <label>:16:                                     ; preds = %11
  %17 = load double, double* %4, align 8, !dbg !704, !tbaa !538
  call void @llvm.dbg.value(metadata double %17, metadata !685, metadata !DIExpression()), !dbg !694
  %18 = load double, double* %5, align 8, !dbg !705, !tbaa !538
  call void @llvm.dbg.value(metadata double %18, metadata !686, metadata !DIExpression()), !dbg !700
  %19 = fadd double %17, %18, !dbg !706
  call void @llvm.dbg.value(metadata double %19, metadata !687, metadata !DIExpression()), !dbg !707
  %20 = load i64, i64* @ok_atom, align 8, !dbg !708, !tbaa !118
  %21 = call i64 @enif_make_double(%struct.enif_environment_t* %0, double %19) #6, !dbg !709
  call void @llvm.dbg.value(metadata %struct.enif_environment_t* %0, metadata !330, metadata !DIExpression()) #6, !dbg !710
  call void @llvm.dbg.value(metadata i64 %20, metadata !336, metadata !DIExpression()) #6, !dbg !712
  call void @llvm.dbg.value(metadata i64 %21, metadata !337, metadata !DIExpression()) #6, !dbg !713
  %22 = call i64 (%struct.enif_environment_t*, i32, ...) @enif_make_tuple(%struct.enif_environment_t* %0, i32 2, i64 %20, i64 %21) #6, !dbg !714
  br label %25, !dbg !715

; <label>:23:                                     ; preds = %11, %3
  %24 = load i64, i64* @arithmetic_error, align 8, !dbg !716, !tbaa !118
  br label %25, !dbg !717

; <label>:25:                                     ; preds = %23, %16
  %26 = phi i64 [ %24, %23 ], [ %22, %16 ], !dbg !718
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #6, !dbg !719
  ret i64 %26, !dbg !719
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define nonnull %struct.enif_entry_t* @nif_init() local_unnamed_addr #5 !dbg !54 {
  ret %struct.enif_entry_t* @nif_init.entry, !dbg !720
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
!llvm.module.flags = !{!94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arithmetic_error", scope: !2, file: !3, line: 72, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !22)
!3 = !DIFile(filename: "native/lib.c", directory: "/Users/zacky/github/nif_llvm")
!4 = !{}
!5 = !{!6, !9, !10, !12, !13, !14, !15, !21}
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
!20 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !3, line: 7, baseType: !13, size: 64, offset: 64)
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !{!23, !52, !0, !88, !90, !92}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "nif_funcs", scope: !2, file: !3, line: 241, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !50)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifFunc", file: !27, line: 112, baseType: !28)
!27 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif.h", directory: "/Users/zacky/github/nif_llvm")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_func_t", file: !27, line: 106, size: 256, elements: !29)
!29 = !{!30, !33, !35, !49}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !27, line: 108, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !28, file: !27, line: 109, baseType: !34, size: 32, offset: 64)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "fptr", scope: !28, file: !27, line: 110, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !44, !11, !47}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERL_NIF_TERM", file: !27, line: 88, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifUInt", file: !27, line: 84, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt", file: !42, line: 124, baseType: !43)
!42 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_drv_nif.h", directory: "/Users/zacky/github/nif_llvm")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNapiUInt64", file: !42, line: 110, baseType: !9)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEnv", file: !27, line: 104, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "enif_environment_t", file: !27, line: 103, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !27, line: 111, baseType: !34, size: 32, offset: 192)
!50 = !{!51}
!51 = !DISubrange(count: 8)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "entry", scope: !54, file: !3, line: 254, type: !58, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "nif_init", scope: !3, file: !3, line: 254, type: !55, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErlNifEntry", file: !27, line: 138, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "enif_entry_t", file: !27, line: 115, size: 768, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !67, !72, !73, !77, !81, !82, !83, !87}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !59, file: !27, line: 117, baseType: !11, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !59, file: !27, line: 118, baseType: !11, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !27, line: 119, baseType: !31, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_funcs", scope: !59, file: !27, line: 120, baseType: !11, size: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !59, file: !27, line: 121, baseType: !66, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !59, file: !27, line: 122, baseType: !68, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!11, !44, !71, !39}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reload", scope: !59, file: !27, line: 123, baseType: !68, size: 64, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade", scope: !59, file: !27, line: 124, baseType: !74, size: 64, offset: 384)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!11, !44, !71, !71, !39}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !59, file: !27, line: 125, baseType: !78, size: 64, offset: 448)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !44, !14}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "vm_variant", scope: !59, file: !27, line: 128, baseType: !31, size: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !59, file: !27, line: 131, baseType: !34, size: 32, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sizeof_ErlNifResourceTypeInit", scope: !59, file: !27, line: 134, baseType: !84, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 30, baseType: !86)
!85 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/zacky/github/nif_llvm")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !7, line: 92, baseType: !9)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "min_erts", scope: !59, file: !27, line: 137, baseType: !31, size: 64, offset: 704)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "ok_atom", scope: !2, file: !3, line: 73, type: !39, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "error_atom", scope: !2, file: !3, line: 74, type: !39, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "arithmetic_error_atom", scope: !2, file: !3, line: 75, type: !39, isLocal: true, isDefinition: true)
!94 = !{i32 2, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 7, !"PIC Level", i32 2}
!98 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!99 = distinct !DISubprogram(name: "load", scope: !100, file: !100, line: 6, type: !69, isLocal: true, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !101)
!100 = !DIFile(filename: "native/loader.c", directory: "/Users/zacky/github/nif_llvm")
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(name: "env", arg: 1, scope: !99, file: !100, line: 6, type: !44)
!103 = !DILocalVariable(name: "priv", arg: 2, scope: !99, file: !100, line: 6, type: !71)
!104 = !DILocalVariable(name: "info", arg: 3, scope: !99, file: !100, line: 6, type: !39)
!105 = !DILocation(line: 6, column: 17, scope: !99)
!106 = !DILocation(line: 6, column: 29, scope: !99)
!107 = !DILocation(line: 6, column: 48, scope: !99)
!108 = !DILocalVariable(name: "env", arg: 1, scope: !109, file: !3, line: 77, type: !44)
!109 = distinct !DISubprogram(name: "init_nif_llvm", scope: !3, file: !3, line: 77, type: !110, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !44}
!112 = !{!108}
!113 = !DILocation(line: 77, column: 38, scope: !109, inlinedAt: !114)
!114 = distinct !DILocation(line: 8, column: 3, scope: !99)
!115 = !DILocation(line: 79, column: 48, scope: !109, inlinedAt: !114)
!116 = !DILocation(line: 79, column: 22, scope: !109, inlinedAt: !114)
!117 = !DILocation(line: 79, column: 20, scope: !109, inlinedAt: !114)
!118 = !{!119, !119, i64 0}
!119 = !{!"long", !120, i64 0}
!120 = !{!"omnipotent char", !121, i64 0}
!121 = !{!"Simple C/C++ TBAA"}
!122 = !DILocation(line: 80, column: 13, scope: !109, inlinedAt: !114)
!123 = !DILocation(line: 80, column: 11, scope: !109, inlinedAt: !114)
!124 = !DILocation(line: 81, column: 16, scope: !109, inlinedAt: !114)
!125 = !DILocation(line: 81, column: 14, scope: !109, inlinedAt: !114)
!126 = !DILocation(line: 82, column: 27, scope: !109, inlinedAt: !114)
!127 = !DILocation(line: 82, column: 25, scope: !109, inlinedAt: !114)
!128 = !DILocation(line: 9, column: 3, scope: !99)
!129 = distinct !DISubprogram(name: "unload", scope: !100, file: !100, line: 13, type: !79, isLocal: true, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !130)
!130 = !{!131, !132}
!131 = !DILocalVariable(name: "env", arg: 1, scope: !129, file: !100, line: 13, type: !44)
!132 = !DILocalVariable(name: "priv", arg: 2, scope: !129, file: !100, line: 13, type: !14)
!133 = !DILocation(line: 13, column: 19, scope: !129)
!134 = !DILocation(line: 13, column: 30, scope: !129)
!135 = !DILocation(line: 15, column: 1, scope: !129)
!136 = distinct !DISubprogram(name: "reload", scope: !100, file: !100, line: 18, type: !69, isLocal: true, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !137)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: "env", arg: 1, scope: !136, file: !100, line: 18, type: !44)
!139 = !DILocalVariable(name: "priv", arg: 2, scope: !136, file: !100, line: 18, type: !71)
!140 = !DILocalVariable(name: "info", arg: 3, scope: !136, file: !100, line: 18, type: !39)
!141 = !DILocation(line: 18, column: 19, scope: !136)
!142 = !DILocation(line: 18, column: 31, scope: !136)
!143 = !DILocation(line: 18, column: 50, scope: !136)
!144 = !DILocation(line: 20, column: 3, scope: !136)
!145 = distinct !DISubprogram(name: "upgrade", scope: !100, file: !100, line: 24, type: !75, isLocal: true, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DILocalVariable(name: "env", arg: 1, scope: !145, file: !100, line: 24, type: !44)
!148 = !DILocalVariable(name: "priv", arg: 2, scope: !145, file: !100, line: 24, type: !71)
!149 = !DILocalVariable(name: "old_priv", arg: 3, scope: !145, file: !100, line: 24, type: !71)
!150 = !DILocalVariable(name: "info", arg: 4, scope: !145, file: !100, line: 24, type: !39)
!151 = !DILocation(line: 24, column: 20, scope: !145)
!152 = !DILocation(line: 24, column: 32, scope: !145)
!153 = !DILocation(line: 24, column: 45, scope: !145)
!154 = !DILocation(line: 24, column: 68, scope: !145)
!155 = !DILocation(line: 6, column: 17, scope: !99, inlinedAt: !156)
!156 = distinct !DILocation(line: 26, column: 10, scope: !145)
!157 = !DILocation(line: 6, column: 29, scope: !99, inlinedAt: !156)
!158 = !DILocation(line: 6, column: 48, scope: !99, inlinedAt: !156)
!159 = !DILocation(line: 77, column: 38, scope: !109, inlinedAt: !160)
!160 = distinct !DILocation(line: 8, column: 3, scope: !99, inlinedAt: !156)
!161 = !DILocation(line: 79, column: 48, scope: !109, inlinedAt: !160)
!162 = !DILocation(line: 79, column: 22, scope: !109, inlinedAt: !160)
!163 = !DILocation(line: 79, column: 20, scope: !109, inlinedAt: !160)
!164 = !DILocation(line: 80, column: 13, scope: !109, inlinedAt: !160)
!165 = !DILocation(line: 80, column: 11, scope: !109, inlinedAt: !160)
!166 = !DILocation(line: 81, column: 16, scope: !109, inlinedAt: !160)
!167 = !DILocation(line: 81, column: 14, scope: !109, inlinedAt: !160)
!168 = !DILocation(line: 82, column: 27, scope: !109, inlinedAt: !160)
!169 = !DILocation(line: 82, column: 25, scope: !109, inlinedAt: !160)
!170 = !DILocation(line: 26, column: 3, scope: !145)
!171 = distinct !DISubprogram(name: "enif_get_big_num", scope: !3, file: !3, line: 10, type: !172, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !176)
!172 = !DISubroutineType(types: !173)
!173 = !{!11, !44, !39, !174, !175}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!177 = !DILocalVariable(name: "env", arg: 1, scope: !171, file: !3, line: 10, type: !44)
!178 = !DILocalVariable(name: "term", arg: 2, scope: !171, file: !3, line: 10, type: !39)
!179 = !DILocalVariable(name: "is_negative", arg: 3, scope: !171, file: !3, line: 10, type: !174)
!180 = !DILocalVariable(name: "value", arg: 4, scope: !171, file: !3, line: 10, type: !175)
!181 = !DILocalVariable(name: "tuple_arity", scope: !171, file: !3, line: 12, type: !11)
!182 = !DILocalVariable(name: "tuple", scope: !171, file: !3, line: 13, type: !47)
!183 = !DILocalVariable(name: "length", scope: !171, file: !3, line: 23, type: !34)
!184 = !DILocalVariable(name: "head", scope: !171, file: !3, line: 30, type: !39)
!185 = !DILocalVariable(name: "tail", scope: !171, file: !3, line: 30, type: !39)
!186 = !DILocalVariable(name: "v", scope: !171, file: !3, line: 34, type: !13)
!187 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 43, type: !11)
!188 = distinct !DILexicalBlock(scope: !171, file: !3, line: 43, column: 3)
!189 = !DILocation(line: 10, column: 33, scope: !171)
!190 = !DILocation(line: 10, column: 51, scope: !171)
!191 = !DILocation(line: 10, column: 67, scope: !171)
!192 = !DILocation(line: 10, column: 89, scope: !171)
!193 = !DILocation(line: 12, column: 3, scope: !171)
!194 = !DILocation(line: 13, column: 3, scope: !171)
!195 = !DILocation(line: 12, column: 7, scope: !171)
!196 = !DILocation(line: 13, column: 23, scope: !171)
!197 = !DILocation(line: 14, column: 24, scope: !198)
!198 = distinct !DILexicalBlock(scope: !171, file: !3, line: 14, column: 6)
!199 = !DILocation(line: 14, column: 72, scope: !198)
!200 = !DILocation(line: 17, column: 23, scope: !201)
!201 = distinct !DILexicalBlock(scope: !171, file: !3, line: 17, column: 6)
!202 = !DILocation(line: 17, column: 35, scope: !201)
!203 = !DILocation(line: 14, column: 6, scope: !171)
!204 = !{!"branch_weights", i32 4000000, i32 4001}
!205 = !DILocation(line: 20, column: 43, scope: !206)
!206 = distinct !DILexicalBlock(scope: !171, file: !3, line: 20, column: 6)
!207 = !{!208, !208, i64 0}
!208 = !{!"any pointer", !120, i64 0}
!209 = !DILocation(line: 20, column: 24, scope: !206)
!210 = !DILocation(line: 20, column: 66, scope: !206)
!211 = !DILocation(line: 20, column: 6, scope: !171)
!212 = !{!"branch_weights", i32 1, i32 2000}
!213 = !DILocation(line: 23, column: 3, scope: !171)
!214 = !DILocation(line: 24, column: 50, scope: !215)
!215 = distinct !DILexicalBlock(scope: !171, file: !3, line: 24, column: 6)
!216 = !DILocation(line: 23, column: 16, scope: !171)
!217 = !DILocation(line: 24, column: 24, scope: !215)
!218 = !DILocation(line: 24, column: 69, scope: !215)
!219 = !DILocation(line: 27, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !171, file: !3, line: 27, column: 6)
!221 = !DILocation(line: 27, column: 31, scope: !220)
!222 = !DILocation(line: 24, column: 6, scope: !171)
!223 = !{!"branch_weights", i32 4001, i32 4000000}
!224 = !DILocation(line: 30, column: 3, scope: !171)
!225 = !DILocation(line: 31, column: 48, scope: !226)
!226 = distinct !DILexicalBlock(scope: !171, file: !3, line: 31, column: 6)
!227 = !DILocation(line: 30, column: 16, scope: !171)
!228 = !DILocation(line: 30, column: 22, scope: !171)
!229 = !DILocation(line: 31, column: 24, scope: !226)
!230 = !DILocation(line: 31, column: 72, scope: !226)
!231 = !DILocation(line: 31, column: 6, scope: !171)
!232 = !DILocation(line: 34, column: 74, scope: !171)
!233 = !{!234, !234, i64 0}
!234 = !{!"int", !120, i64 0}
!235 = !DILocation(line: 34, column: 72, scope: !171)
!236 = !DILocation(line: 34, column: 39, scope: !171)
!237 = !DILocation(line: 34, column: 22, scope: !171)
!238 = !DILocation(line: 34, column: 18, scope: !171)
!239 = !DILocation(line: 35, column: 26, scope: !240)
!240 = distinct !DILexicalBlock(scope: !171, file: !3, line: 35, column: 6)
!241 = !DILocation(line: 35, column: 6, scope: !171)
!242 = !DILocation(line: 38, column: 22, scope: !171)
!243 = !DILocation(line: 38, column: 10, scope: !171)
!244 = !DILocation(line: 39, column: 31, scope: !245)
!245 = distinct !DILexicalBlock(scope: !171, file: !3, line: 39, column: 6)
!246 = !DILocation(line: 39, column: 6, scope: !171)
!247 = !DILocation(line: 43, column: 11, scope: !188)
!248 = !DILocation(line: 43, column: 22, scope: !249)
!249 = distinct !DILexicalBlock(scope: !188, file: !3, line: 43, column: 3)
!250 = !DILocation(line: 43, column: 20, scope: !249)
!251 = !DILocation(line: 43, column: 3, scope: !188)
!252 = !DILocation(line: 40, column: 5, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 39, column: 45)
!254 = !DILocation(line: 41, column: 5, scope: !253)
!255 = !DILocation(line: 44, column: 47, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 44, column: 8)
!257 = distinct !DILexicalBlock(scope: !249, file: !3, line: 43, column: 35)
!258 = !DILocation(line: 44, column: 54, scope: !256)
!259 = !DILocation(line: 44, column: 26, scope: !256)
!260 = !DILocation(line: 44, column: 60, scope: !256)
!261 = !DILocation(line: 44, column: 8, scope: !257)
!262 = !DILocation(line: 45, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !256, file: !3, line: 44, column: 71)
!264 = !DILocation(line: 48, column: 50, scope: !265)
!265 = distinct !DILexicalBlock(scope: !257, file: !3, line: 48, column: 8)
!266 = !DILocation(line: 48, column: 26, scope: !265)
!267 = !DILocation(line: 48, column: 70, scope: !265)
!268 = !DILocation(line: 48, column: 8, scope: !257)
!269 = !DILocation(line: 43, column: 31, scope: !249)
!270 = !DILocation(line: 49, column: 12, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 49, column: 10)
!272 = distinct !DILexicalBlock(scope: !265, file: !3, line: 48, column: 81)
!273 = !DILocation(line: 49, column: 18, scope: !271)
!274 = !DILocation(line: 49, column: 16, scope: !271)
!275 = !DILocation(line: 49, column: 10, scope: !272)
!276 = !DILocation(line: 50, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !3, line: 49, column: 26)
!278 = distinct !{!278, !251, !279}
!279 = !DILocation(line: 54, column: 3, scope: !188)
!280 = !DILocation(line: 55, column: 4, scope: !171)
!281 = !DILocation(line: 55, column: 13, scope: !171)
!282 = !DILocation(line: 55, column: 18, scope: !171)
!283 = !{!284, !234, i64 0}
!284 = !{!"vector", !234, i64 0, !208, i64 8}
!285 = !DILocation(line: 56, column: 13, scope: !171)
!286 = !DILocation(line: 56, column: 19, scope: !171)
!287 = !{!284, !208, i64 8}
!288 = !DILocation(line: 57, column: 3, scope: !171)
!289 = !DILocation(line: 0, scope: !290)
!290 = distinct !DILexicalBlock(scope: !240, file: !3, line: 35, column: 40)
!291 = !DILocation(line: 58, column: 1, scope: !171)
!292 = !DILocation(line: 0, scope: !293)
!293 = distinct !DILexicalBlock(scope: !226, file: !3, line: 31, column: 83)
!294 = !DILocation(line: 0, scope: !295)
!295 = distinct !DILexicalBlock(scope: !215, file: !3, line: 24, column: 80)
!296 = distinct !DISubprogram(name: "enif_make_big_num", scope: !3, file: !3, line: 60, type: !297, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !302)
!297 = !DISubroutineType(types: !298)
!298 = !{!39, !44, !299, !300}
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!302 = !{!303, !304, !305, !306, !307, !309, !311}
!303 = !DILocalVariable(name: "env", arg: 1, scope: !296, file: !3, line: 60, type: !44)
!304 = !DILocalVariable(name: "is_negative", arg: 2, scope: !296, file: !3, line: 60, type: !299)
!305 = !DILocalVariable(name: "value", arg: 3, scope: !296, file: !3, line: 60, type: !300)
!306 = !DILocalVariable(name: "term_is_negative", scope: !296, file: !3, line: 62, type: !39)
!307 = !DILocalVariable(name: "term_array", scope: !296, file: !3, line: 63, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!309 = !DILocalVariable(name: "i", scope: !310, file: !3, line: 64, type: !11)
!310 = distinct !DILexicalBlock(scope: !296, file: !3, line: 64, column: 2)
!311 = !DILocalVariable(name: "term_list", scope: !296, file: !3, line: 67, type: !39)
!312 = !DILocation(line: 60, column: 43, scope: !296)
!313 = !DILocation(line: 60, column: 63, scope: !296)
!314 = !DILocation(line: 60, column: 90, scope: !296)
!315 = !DILocation(line: 62, column: 34, scope: !296)
!316 = !DILocation(line: 62, column: 15, scope: !296)
!317 = !DILocation(line: 63, column: 70, scope: !296)
!318 = !DILocation(line: 63, column: 63, scope: !296)
!319 = !DILocation(line: 63, column: 61, scope: !296)
!320 = !DILocation(line: 63, column: 29, scope: !296)
!321 = !DILocation(line: 63, column: 16, scope: !296)
!322 = !DILocation(line: 64, column: 10, scope: !310)
!323 = !DILocation(line: 64, column: 28, scope: !324)
!324 = distinct !DILexicalBlock(scope: !310, file: !3, line: 64, column: 2)
!325 = !DILocation(line: 64, column: 19, scope: !324)
!326 = !DILocation(line: 64, column: 2, scope: !310)
!327 = !DILocation(line: 67, column: 27, scope: !296)
!328 = !DILocation(line: 67, column: 15, scope: !296)
!329 = !DILocation(line: 68, column: 2, scope: !296)
!330 = !DILocalVariable(name: "env", arg: 1, scope: !331, file: !332, line: 422, type: !44)
!331 = distinct !DISubprogram(name: "enif_make_tuple2", scope: !332, file: !332, line: 422, type: !333, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !335)
!332 = !DIFile(filename: "/Users/zacky/.erlenv/releases/21.1/lib/erlang/erts-10.1/include/erl_nif_api_funcs.h", directory: "/Users/zacky/github/nif_llvm")
!333 = !DISubroutineType(types: !334)
!334 = !{!39, !44, !39, !39}
!335 = !{!330, !336, !337}
!336 = !DILocalVariable(name: "e1", arg: 2, scope: !331, file: !332, line: 423, type: !39)
!337 = !DILocalVariable(name: "e2", arg: 3, scope: !331, file: !332, line: 424, type: !39)
!338 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !339)
!339 = distinct !DILocation(line: 69, column: 9, scope: !296)
!340 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !339)
!341 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !339)
!342 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !339)
!343 = !DILocation(line: 69, column: 2, scope: !296)
!344 = !DILocation(line: 65, column: 48, scope: !345)
!345 = distinct !DILexicalBlock(scope: !324, file: !3, line: 64, column: 39)
!346 = !DILocation(line: 65, column: 41, scope: !345)
!347 = !DILocation(line: 65, column: 19, scope: !345)
!348 = !DILocation(line: 65, column: 3, scope: !345)
!349 = !DILocation(line: 65, column: 17, scope: !345)
!350 = !DILocation(line: 64, column: 35, scope: !324)
!351 = distinct !{!351, !326, !352}
!352 = !DILocation(line: 66, column: 2, scope: !310)
!353 = distinct !DISubprogram(name: "asm_1_nif_ii", scope: !3, file: !3, line: 86, type: !37, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !354)
!354 = !{!355, !356, !357, !358, !360, !361}
!355 = !DILocalVariable(name: "env", arg: 1, scope: !353, file: !3, line: 86, type: !44)
!356 = !DILocalVariable(name: "argc", arg: 2, scope: !353, file: !3, line: 86, type: !11)
!357 = !DILocalVariable(name: "argv", arg: 3, scope: !353, file: !3, line: 86, type: !47)
!358 = !DILocalVariable(name: "a", scope: !353, file: !3, line: 88, type: !359)
!359 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!360 = !DILocalVariable(name: "b", scope: !353, file: !3, line: 88, type: !359)
!361 = !DILocalVariable(name: "result", scope: !353, file: !3, line: 96, type: !359)
!362 = !DILocation(line: 86, column: 38, scope: !353)
!363 = !DILocation(line: 86, column: 47, scope: !353)
!364 = !DILocation(line: 86, column: 72, scope: !353)
!365 = !DILocation(line: 88, column: 3, scope: !353)
!366 = !DILocation(line: 89, column: 44, scope: !367)
!367 = distinct !DILexicalBlock(scope: !353, file: !3, line: 89, column: 6)
!368 = !DILocation(line: 88, column: 8, scope: !353)
!369 = !DILocation(line: 89, column: 24, scope: !367)
!370 = !DILocation(line: 89, column: 57, scope: !367)
!371 = !DILocation(line: 89, column: 6, scope: !353)
!372 = !DILocation(line: 92, column: 44, scope: !373)
!373 = distinct !DILexicalBlock(scope: !353, file: !3, line: 92, column: 6)
!374 = !DILocation(line: 88, column: 11, scope: !353)
!375 = !DILocation(line: 92, column: 24, scope: !373)
!376 = !DILocation(line: 92, column: 57, scope: !373)
!377 = !DILocation(line: 92, column: 6, scope: !353)
!378 = !DILocation(line: 98, column: 48, scope: !379)
!379 = distinct !DILexicalBlock(scope: !353, file: !3, line: 98, column: 6)
!380 = !DILocation(line: 98, column: 51, scope: !379)
!381 = !DILocation(line: 98, column: 23, scope: !379)
!382 = !DILocation(line: 98, column: 6, scope: !353)
!383 = !DILocation(line: 96, column: 8, scope: !353)
!384 = !DILocation(line: 102, column: 32, scope: !353)
!385 = !DILocation(line: 102, column: 41, scope: !353)
!386 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !387)
!387 = distinct !DILocation(line: 102, column: 10, scope: !353)
!388 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !387)
!389 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !387)
!390 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !387)
!391 = !DILocation(line: 102, column: 3, scope: !353)
!392 = !DILocation(line: 104, column: 10, scope: !353)
!393 = !DILocation(line: 104, column: 3, scope: !353)
!394 = !DILocation(line: 106, column: 32, scope: !353)
!395 = !DILocation(line: 106, column: 44, scope: !353)
!396 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !397)
!397 = distinct !DILocation(line: 106, column: 10, scope: !353)
!398 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !397)
!399 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !397)
!400 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !397)
!401 = !DILocation(line: 106, column: 3, scope: !353)
!402 = !DILocation(line: 0, scope: !353)
!403 = !DILocation(line: 107, column: 1, scope: !353)
!404 = distinct !DISubprogram(name: "asm_1_nif_uu", scope: !3, file: !3, line: 111, type: !37, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !405)
!405 = !{!406, !407, !408, !409, !410, !411}
!406 = !DILocalVariable(name: "env", arg: 1, scope: !404, file: !3, line: 111, type: !44)
!407 = !DILocalVariable(name: "argc", arg: 2, scope: !404, file: !3, line: 111, type: !11)
!408 = !DILocalVariable(name: "argv", arg: 3, scope: !404, file: !3, line: 111, type: !47)
!409 = !DILocalVariable(name: "a", scope: !404, file: !3, line: 113, type: !9)
!410 = !DILocalVariable(name: "b", scope: !404, file: !3, line: 113, type: !9)
!411 = !DILocalVariable(name: "result", scope: !404, file: !3, line: 121, type: !9)
!412 = !DILocation(line: 111, column: 38, scope: !404)
!413 = !DILocation(line: 111, column: 47, scope: !404)
!414 = !DILocation(line: 111, column: 72, scope: !404)
!415 = !DILocation(line: 113, column: 3, scope: !404)
!416 = !DILocation(line: 114, column: 45, scope: !417)
!417 = distinct !DILexicalBlock(scope: !404, file: !3, line: 114, column: 6)
!418 = !DILocation(line: 113, column: 17, scope: !404)
!419 = !DILocation(line: 114, column: 24, scope: !417)
!420 = !DILocation(line: 114, column: 58, scope: !417)
!421 = !DILocation(line: 114, column: 6, scope: !404)
!422 = !DILocation(line: 117, column: 45, scope: !423)
!423 = distinct !DILexicalBlock(scope: !404, file: !3, line: 117, column: 6)
!424 = !DILocation(line: 113, column: 20, scope: !404)
!425 = !DILocation(line: 117, column: 24, scope: !423)
!426 = !DILocation(line: 117, column: 58, scope: !423)
!427 = !DILocation(line: 117, column: 6, scope: !404)
!428 = !DILocation(line: 123, column: 48, scope: !429)
!429 = distinct !DILexicalBlock(scope: !404, file: !3, line: 123, column: 6)
!430 = !DILocation(line: 123, column: 51, scope: !429)
!431 = !DILocation(line: 123, column: 23, scope: !429)
!432 = !DILocation(line: 123, column: 6, scope: !404)
!433 = !DILocation(line: 121, column: 17, scope: !404)
!434 = !DILocation(line: 127, column: 32, scope: !404)
!435 = !DILocation(line: 127, column: 41, scope: !404)
!436 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !437)
!437 = distinct !DILocation(line: 127, column: 10, scope: !404)
!438 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !437)
!439 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !437)
!440 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !437)
!441 = !DILocation(line: 127, column: 3, scope: !404)
!442 = !DILocation(line: 129, column: 10, scope: !404)
!443 = !DILocation(line: 129, column: 3, scope: !404)
!444 = !DILocation(line: 131, column: 32, scope: !404)
!445 = !DILocation(line: 131, column: 44, scope: !404)
!446 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !447)
!447 = distinct !DILocation(line: 131, column: 10, scope: !404)
!448 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !447)
!449 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !447)
!450 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !447)
!451 = !DILocation(line: 131, column: 3, scope: !404)
!452 = !DILocation(line: 0, scope: !404)
!453 = !DILocation(line: 132, column: 1, scope: !404)
!454 = distinct !DISubprogram(name: "asm_1_nif_bb", scope: !3, file: !3, line: 135, type: !37, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463}
!456 = !DILocalVariable(name: "env", arg: 1, scope: !454, file: !3, line: 135, type: !44)
!457 = !DILocalVariable(name: "argc", arg: 2, scope: !454, file: !3, line: 135, type: !11)
!458 = !DILocalVariable(name: "argv", arg: 3, scope: !454, file: !3, line: 135, type: !47)
!459 = !DILocalVariable(name: "a_neg", scope: !454, file: !3, line: 137, type: !34)
!460 = !DILocalVariable(name: "b_neg", scope: !454, file: !3, line: 137, type: !34)
!461 = !DILocalVariable(name: "a_v", scope: !454, file: !3, line: 138, type: !15)
!462 = !DILocalVariable(name: "b_v", scope: !454, file: !3, line: 138, type: !15)
!463 = !DILocalVariable(name: "result", scope: !454, file: !3, line: 146, type: !39)
!464 = !DILocation(line: 135, column: 38, scope: !454)
!465 = !DILocation(line: 135, column: 47, scope: !454)
!466 = !DILocation(line: 135, column: 72, scope: !454)
!467 = !DILocation(line: 137, column: 3, scope: !454)
!468 = !DILocation(line: 138, column: 3, scope: !454)
!469 = !DILocation(line: 139, column: 46, scope: !470)
!470 = distinct !DILexicalBlock(scope: !454, file: !3, line: 139, column: 6)
!471 = !DILocation(line: 137, column: 12, scope: !454)
!472 = !DILocation(line: 138, column: 11, scope: !454)
!473 = !DILocation(line: 139, column: 24, scope: !470)
!474 = !DILocation(line: 139, column: 69, scope: !470)
!475 = !DILocation(line: 139, column: 6, scope: !454)
!476 = !DILocation(line: 140, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !470, file: !3, line: 139, column: 80)
!478 = !DILocation(line: 140, column: 5, scope: !477)
!479 = !DILocation(line: 142, column: 46, scope: !480)
!480 = distinct !DILexicalBlock(scope: !454, file: !3, line: 142, column: 6)
!481 = !DILocation(line: 137, column: 19, scope: !454)
!482 = !DILocation(line: 138, column: 17, scope: !454)
!483 = !DILocation(line: 142, column: 24, scope: !480)
!484 = !DILocation(line: 142, column: 69, scope: !480)
!485 = !DILocation(line: 142, column: 6, scope: !454)
!486 = !DILocation(line: 143, column: 12, scope: !487)
!487 = distinct !DILexicalBlock(scope: !480, file: !3, line: 142, column: 80)
!488 = !DILocation(line: 143, column: 5, scope: !487)
!489 = !DILocation(line: 146, column: 47, scope: !454)
!490 = !DILocation(line: 146, column: 54, scope: !454)
!491 = !DILocation(line: 146, column: 24, scope: !454)
!492 = !DILocation(line: 146, column: 15, scope: !454)
!493 = !DILocation(line: 148, column: 18, scope: !454)
!494 = !DILocation(line: 148, column: 3, scope: !454)
!495 = !DILocation(line: 149, column: 13, scope: !454)
!496 = !DILocation(line: 149, column: 3, scope: !454)
!497 = !DILocation(line: 150, column: 13, scope: !454)
!498 = !DILocation(line: 150, column: 18, scope: !454)
!499 = !DILocation(line: 150, column: 3, scope: !454)
!500 = !DILocation(line: 151, column: 13, scope: !454)
!501 = !DILocation(line: 151, column: 3, scope: !454)
!502 = !DILocation(line: 153, column: 32, scope: !454)
!503 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !504)
!504 = distinct !DILocation(line: 153, column: 10, scope: !454)
!505 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !504)
!506 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !504)
!507 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !504)
!508 = !DILocation(line: 0, scope: !454)
!509 = !DILocation(line: 154, column: 1, scope: !454)
!510 = distinct !DISubprogram(name: "asm_1_nif_if", scope: !3, file: !3, line: 157, type: !37, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !511)
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DILocalVariable(name: "env", arg: 1, scope: !510, file: !3, line: 157, type: !44)
!513 = !DILocalVariable(name: "argc", arg: 2, scope: !510, file: !3, line: 157, type: !11)
!514 = !DILocalVariable(name: "argv", arg: 3, scope: !510, file: !3, line: 157, type: !47)
!515 = !DILocalVariable(name: "a", scope: !510, file: !3, line: 159, type: !359)
!516 = !DILocalVariable(name: "b", scope: !510, file: !3, line: 160, type: !21)
!517 = !DILocalVariable(name: "result", scope: !510, file: !3, line: 167, type: !21)
!518 = !DILocation(line: 157, column: 38, scope: !510)
!519 = !DILocation(line: 157, column: 47, scope: !510)
!520 = !DILocation(line: 157, column: 72, scope: !510)
!521 = !DILocation(line: 159, column: 3, scope: !510)
!522 = !DILocation(line: 160, column: 3, scope: !510)
!523 = !DILocation(line: 161, column: 44, scope: !524)
!524 = distinct !DILexicalBlock(scope: !510, file: !3, line: 161, column: 6)
!525 = !DILocation(line: 159, column: 8, scope: !510)
!526 = !DILocation(line: 161, column: 24, scope: !524)
!527 = !DILocation(line: 161, column: 57, scope: !524)
!528 = !DILocation(line: 161, column: 6, scope: !510)
!529 = !DILocation(line: 164, column: 45, scope: !530)
!530 = distinct !DILexicalBlock(scope: !510, file: !3, line: 164, column: 6)
!531 = !DILocation(line: 160, column: 10, scope: !510)
!532 = !DILocation(line: 164, column: 24, scope: !530)
!533 = !DILocation(line: 164, column: 58, scope: !530)
!534 = !DILocation(line: 164, column: 6, scope: !510)
!535 = !DILocation(line: 167, column: 28, scope: !510)
!536 = !DILocation(line: 167, column: 20, scope: !510)
!537 = !DILocation(line: 167, column: 33, scope: !510)
!538 = !{!539, !539, i64 0}
!539 = !{!"double", !120, i64 0}
!540 = !DILocation(line: 167, column: 31, scope: !510)
!541 = !DILocation(line: 167, column: 10, scope: !510)
!542 = !DILocation(line: 168, column: 32, scope: !510)
!543 = !DILocation(line: 168, column: 41, scope: !510)
!544 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !545)
!545 = distinct !DILocation(line: 168, column: 10, scope: !510)
!546 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !545)
!547 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !545)
!548 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !545)
!549 = !DILocation(line: 168, column: 3, scope: !510)
!550 = !DILocation(line: 170, column: 10, scope: !510)
!551 = !DILocation(line: 170, column: 3, scope: !510)
!552 = !DILocation(line: 0, scope: !510)
!553 = !DILocation(line: 171, column: 1, scope: !510)
!554 = distinct !DISubprogram(name: "asm_1_nif_uf", scope: !3, file: !3, line: 175, type: !37, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !555)
!555 = !{!556, !557, !558, !559, !560, !561}
!556 = !DILocalVariable(name: "env", arg: 1, scope: !554, file: !3, line: 175, type: !44)
!557 = !DILocalVariable(name: "argc", arg: 2, scope: !554, file: !3, line: 175, type: !11)
!558 = !DILocalVariable(name: "argv", arg: 3, scope: !554, file: !3, line: 175, type: !47)
!559 = !DILocalVariable(name: "a", scope: !554, file: !3, line: 177, type: !9)
!560 = !DILocalVariable(name: "b", scope: !554, file: !3, line: 178, type: !21)
!561 = !DILocalVariable(name: "result", scope: !554, file: !3, line: 185, type: !21)
!562 = !DILocation(line: 175, column: 38, scope: !554)
!563 = !DILocation(line: 175, column: 47, scope: !554)
!564 = !DILocation(line: 175, column: 72, scope: !554)
!565 = !DILocation(line: 177, column: 3, scope: !554)
!566 = !DILocation(line: 178, column: 3, scope: !554)
!567 = !DILocation(line: 179, column: 45, scope: !568)
!568 = distinct !DILexicalBlock(scope: !554, file: !3, line: 179, column: 6)
!569 = !DILocation(line: 177, column: 17, scope: !554)
!570 = !DILocation(line: 179, column: 24, scope: !568)
!571 = !DILocation(line: 179, column: 58, scope: !568)
!572 = !DILocation(line: 179, column: 6, scope: !554)
!573 = !DILocation(line: 182, column: 45, scope: !574)
!574 = distinct !DILexicalBlock(scope: !554, file: !3, line: 182, column: 6)
!575 = !DILocation(line: 178, column: 10, scope: !554)
!576 = !DILocation(line: 182, column: 24, scope: !574)
!577 = !DILocation(line: 182, column: 58, scope: !574)
!578 = !DILocation(line: 182, column: 6, scope: !554)
!579 = !DILocation(line: 185, column: 28, scope: !554)
!580 = !DILocation(line: 185, column: 20, scope: !554)
!581 = !DILocation(line: 185, column: 33, scope: !554)
!582 = !DILocation(line: 185, column: 31, scope: !554)
!583 = !DILocation(line: 185, column: 10, scope: !554)
!584 = !DILocation(line: 186, column: 32, scope: !554)
!585 = !DILocation(line: 186, column: 41, scope: !554)
!586 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !587)
!587 = distinct !DILocation(line: 186, column: 10, scope: !554)
!588 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !587)
!589 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !587)
!590 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !587)
!591 = !DILocation(line: 186, column: 3, scope: !554)
!592 = !DILocation(line: 188, column: 10, scope: !554)
!593 = !DILocation(line: 188, column: 3, scope: !554)
!594 = !DILocation(line: 0, scope: !554)
!595 = !DILocation(line: 189, column: 1, scope: !554)
!596 = distinct !DISubprogram(name: "asm_1_nif_fi", scope: !3, file: !3, line: 192, type: !37, isLocal: true, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !597)
!597 = !{!598, !599, !600, !601, !602, !603}
!598 = !DILocalVariable(name: "env", arg: 1, scope: !596, file: !3, line: 192, type: !44)
!599 = !DILocalVariable(name: "argc", arg: 2, scope: !596, file: !3, line: 192, type: !11)
!600 = !DILocalVariable(name: "argv", arg: 3, scope: !596, file: !3, line: 192, type: !47)
!601 = !DILocalVariable(name: "a", scope: !596, file: !3, line: 194, type: !21)
!602 = !DILocalVariable(name: "b", scope: !596, file: !3, line: 195, type: !359)
!603 = !DILocalVariable(name: "result", scope: !596, file: !3, line: 202, type: !21)
!604 = !DILocation(line: 192, column: 38, scope: !596)
!605 = !DILocation(line: 192, column: 47, scope: !596)
!606 = !DILocation(line: 192, column: 72, scope: !596)
!607 = !DILocation(line: 194, column: 3, scope: !596)
!608 = !DILocation(line: 195, column: 3, scope: !596)
!609 = !DILocation(line: 196, column: 45, scope: !610)
!610 = distinct !DILexicalBlock(scope: !596, file: !3, line: 196, column: 6)
!611 = !DILocation(line: 194, column: 10, scope: !596)
!612 = !DILocation(line: 196, column: 24, scope: !610)
!613 = !DILocation(line: 196, column: 58, scope: !610)
!614 = !DILocation(line: 196, column: 6, scope: !596)
!615 = !DILocation(line: 199, column: 44, scope: !616)
!616 = distinct !DILexicalBlock(scope: !596, file: !3, line: 199, column: 6)
!617 = !DILocation(line: 195, column: 8, scope: !596)
!618 = !DILocation(line: 199, column: 24, scope: !616)
!619 = !DILocation(line: 199, column: 57, scope: !616)
!620 = !DILocation(line: 199, column: 6, scope: !596)
!621 = !DILocation(line: 202, column: 19, scope: !596)
!622 = !DILocation(line: 202, column: 33, scope: !596)
!623 = !DILocation(line: 202, column: 24, scope: !596)
!624 = !DILocation(line: 202, column: 21, scope: !596)
!625 = !DILocation(line: 202, column: 10, scope: !596)
!626 = !DILocation(line: 203, column: 32, scope: !596)
!627 = !DILocation(line: 203, column: 41, scope: !596)
!628 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !629)
!629 = distinct !DILocation(line: 203, column: 10, scope: !596)
!630 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !629)
!631 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !629)
!632 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !629)
!633 = !DILocation(line: 203, column: 3, scope: !596)
!634 = !DILocation(line: 205, column: 10, scope: !596)
!635 = !DILocation(line: 205, column: 3, scope: !596)
!636 = !DILocation(line: 0, scope: !596)
!637 = !DILocation(line: 206, column: 1, scope: !596)
!638 = distinct !DISubprogram(name: "asm_1_nif_fu", scope: !3, file: !3, line: 209, type: !37, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!639 = !{!640, !641, !642, !643, !644, !645}
!640 = !DILocalVariable(name: "env", arg: 1, scope: !638, file: !3, line: 209, type: !44)
!641 = !DILocalVariable(name: "argc", arg: 2, scope: !638, file: !3, line: 209, type: !11)
!642 = !DILocalVariable(name: "argv", arg: 3, scope: !638, file: !3, line: 209, type: !47)
!643 = !DILocalVariable(name: "a", scope: !638, file: !3, line: 211, type: !21)
!644 = !DILocalVariable(name: "b", scope: !638, file: !3, line: 212, type: !9)
!645 = !DILocalVariable(name: "result", scope: !638, file: !3, line: 219, type: !21)
!646 = !DILocation(line: 209, column: 38, scope: !638)
!647 = !DILocation(line: 209, column: 47, scope: !638)
!648 = !DILocation(line: 209, column: 72, scope: !638)
!649 = !DILocation(line: 211, column: 3, scope: !638)
!650 = !DILocation(line: 212, column: 3, scope: !638)
!651 = !DILocation(line: 213, column: 45, scope: !652)
!652 = distinct !DILexicalBlock(scope: !638, file: !3, line: 213, column: 6)
!653 = !DILocation(line: 211, column: 10, scope: !638)
!654 = !DILocation(line: 213, column: 24, scope: !652)
!655 = !DILocation(line: 213, column: 58, scope: !652)
!656 = !DILocation(line: 213, column: 6, scope: !638)
!657 = !DILocation(line: 216, column: 45, scope: !658)
!658 = distinct !DILexicalBlock(scope: !638, file: !3, line: 216, column: 6)
!659 = !DILocation(line: 212, column: 17, scope: !638)
!660 = !DILocation(line: 216, column: 24, scope: !658)
!661 = !DILocation(line: 216, column: 58, scope: !658)
!662 = !DILocation(line: 216, column: 6, scope: !638)
!663 = !DILocation(line: 219, column: 19, scope: !638)
!664 = !DILocation(line: 219, column: 33, scope: !638)
!665 = !DILocation(line: 219, column: 24, scope: !638)
!666 = !DILocation(line: 219, column: 21, scope: !638)
!667 = !DILocation(line: 219, column: 10, scope: !638)
!668 = !DILocation(line: 220, column: 32, scope: !638)
!669 = !DILocation(line: 220, column: 41, scope: !638)
!670 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !671)
!671 = distinct !DILocation(line: 220, column: 10, scope: !638)
!672 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !671)
!673 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !671)
!674 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !671)
!675 = !DILocation(line: 220, column: 3, scope: !638)
!676 = !DILocation(line: 222, column: 10, scope: !638)
!677 = !DILocation(line: 222, column: 3, scope: !638)
!678 = !DILocation(line: 0, scope: !638)
!679 = !DILocation(line: 223, column: 1, scope: !638)
!680 = distinct !DISubprogram(name: "asm_1_nif_ff", scope: !3, file: !3, line: 225, type: !37, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !681)
!681 = !{!682, !683, !684, !685, !686, !687}
!682 = !DILocalVariable(name: "env", arg: 1, scope: !680, file: !3, line: 225, type: !44)
!683 = !DILocalVariable(name: "argc", arg: 2, scope: !680, file: !3, line: 225, type: !11)
!684 = !DILocalVariable(name: "argv", arg: 3, scope: !680, file: !3, line: 225, type: !47)
!685 = !DILocalVariable(name: "a", scope: !680, file: !3, line: 227, type: !21)
!686 = !DILocalVariable(name: "b", scope: !680, file: !3, line: 227, type: !21)
!687 = !DILocalVariable(name: "result", scope: !680, file: !3, line: 234, type: !21)
!688 = !DILocation(line: 225, column: 38, scope: !680)
!689 = !DILocation(line: 225, column: 47, scope: !680)
!690 = !DILocation(line: 225, column: 72, scope: !680)
!691 = !DILocation(line: 227, column: 3, scope: !680)
!692 = !DILocation(line: 228, column: 45, scope: !693)
!693 = distinct !DILexicalBlock(scope: !680, file: !3, line: 228, column: 6)
!694 = !DILocation(line: 227, column: 10, scope: !680)
!695 = !DILocation(line: 228, column: 24, scope: !693)
!696 = !DILocation(line: 228, column: 58, scope: !693)
!697 = !DILocation(line: 228, column: 6, scope: !680)
!698 = !DILocation(line: 231, column: 45, scope: !699)
!699 = distinct !DILexicalBlock(scope: !680, file: !3, line: 231, column: 6)
!700 = !DILocation(line: 227, column: 13, scope: !680)
!701 = !DILocation(line: 231, column: 24, scope: !699)
!702 = !DILocation(line: 231, column: 58, scope: !699)
!703 = !DILocation(line: 231, column: 6, scope: !680)
!704 = !DILocation(line: 234, column: 19, scope: !680)
!705 = !DILocation(line: 234, column: 23, scope: !680)
!706 = !DILocation(line: 234, column: 21, scope: !680)
!707 = !DILocation(line: 234, column: 10, scope: !680)
!708 = !DILocation(line: 235, column: 32, scope: !680)
!709 = !DILocation(line: 235, column: 41, scope: !680)
!710 = !DILocation(line: 422, column: 64, scope: !331, inlinedAt: !711)
!711 = distinct !DILocation(line: 235, column: 10, scope: !680)
!712 = !DILocation(line: 423, column: 24, scope: !331, inlinedAt: !711)
!713 = !DILocation(line: 424, column: 24, scope: !331, inlinedAt: !711)
!714 = !DILocation(line: 426, column: 12, scope: !331, inlinedAt: !711)
!715 = !DILocation(line: 235, column: 3, scope: !680)
!716 = !DILocation(line: 237, column: 10, scope: !680)
!717 = !DILocation(line: 237, column: 3, scope: !680)
!718 = !DILocation(line: 0, scope: !680)
!719 = !DILocation(line: 238, column: 1, scope: !680)
!720 = !DILocation(line: 254, column: 1, scope: !54)
