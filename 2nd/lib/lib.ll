; ModuleID = 'lib.ll'
target datalayout = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

; Function Attrs: norecurse nounwind readnone
define float @float_of_int(i32 %x) #0 {
  %1 = sitofp i32 %x to float
  ret float %1
}

; Function Attrs: norecurse nounwind readnone
define i32 @int_of_float(float %y) #0 {
  %1 = fptosi float %y to i32
  ret i32 %1
}

; Function Attrs: norecurse nounwind readnone
define float @floor(float %y) #0 {
  %1 = fptosi float %y to i32
  %2 = sitofp i32 %1 to float
  ret float %2
}

; Function Attrs: nounwind readnone
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: norecurse nounwind readnone
define float @sqrt(float %y) #0 {
  %1 = tail call float @llvm.sqrt.f32(float %y)
  ret float %1
}

; Function Attrs: norecurse nounwind readnone
define float @kernel_cos(float %x) #0 {
  %1 = fmul float %x, 5.000000e-01
  %2 = fmul float %1, %x
  %3 = fmul float %x, 0x3FB55554C0000000
  %4 = fmul float %3, %x
  %5 = fmul float %x, 0x3FA1111000000000
  %6 = fmul float %5, %x
  %7 = fmul float %x, 0x3F924921C0000000
  %8 = fmul float %7, %x
  %9 = fsub float 1.000000e+00, %8
  %10 = fmul float %6, %9
  %11 = fsub float 1.000000e+00, %10
  %12 = fmul float %4, %11
  %13 = fsub float 1.000000e+00, %12
  %14 = fmul float %2, %13
  %15 = fsub float 1.000000e+00, %14
  ret float %15
}

; Function Attrs: norecurse nounwind readnone
define float @kernel_sin(float %x) #0 {
  %1 = fmul float %x, 0x3FC55555A0000000
  %2 = fmul float %1, %x
  %3 = fmul float %x, 0x3FA99999A0000000
  %4 = fmul float %3, %x
  %5 = fmul float %x, 0x3F98618480000000
  %6 = fmul float %5, %x
  %7 = fmul float %x, 0x3F8C71BB20000000
  %8 = fmul float %7, %x
  %9 = fsub float 1.000000e+00, %8
  %10 = fmul float %6, %9
  %11 = fsub float 1.000000e+00, %10
  %12 = fmul float %4, %11
  %13 = fsub float 1.000000e+00, %12
  %14 = fmul float %2, %13
  %15 = fsub float 1.000000e+00, %14
  %16 = fmul float %15, %x
  ret float %16
}

; Function Attrs: norecurse nounwind
define i32* @mymalloc(i32 %x) #2 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %x
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  ret i32* %3
}

; Function Attrs: norecurse nounwind
define i32* @create_tuple(i32 %x) #2 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %x
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  ret i32* %3
}

; Function Attrs: norecurse nounwind
define i32* @create_array(i32 %a, i32 %b) #2 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %a
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  %4 = icmp sgt i32 %a, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %min.iters.check = icmp ult i32 %a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %min.iters.checked

.lr.ph.preheader6:                                ; preds = %middle.block, %min.iters.checked, %.lr.ph.preheader
  %i.01.ph = phi i32 [ 0, %min.iters.checked ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i32 %a, -8
  %cmp.zero = icmp eq i32 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %broadcast.splatinsert2 = insertelement <4 x i32> undef, i32 %b, i32 0
  %broadcast.splat3 = shufflevector <4 x i32> %broadcast.splatinsert2, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds i32, i32* %3, i32 %index
  %6 = bitcast i32* %5 to <4 x i32>*
  store <4 x i32> %broadcast.splat3, <4 x i32>* %6, align 4, !tbaa !1
  %7 = getelementptr i32, i32* %5, i32 4
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> %broadcast.splat3, <4 x i32>* %8, align 4, !tbaa !1
  %index.next = add i32 %index, 8
  %9 = icmp eq i32 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !5

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader6

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %0
  ret i32* %3

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %i.01 = phi i32 [ %11, %.lr.ph ], [ %i.01.ph, %.lr.ph.preheader6 ]
  %10 = getelementptr inbounds i32, i32* %3, i32 %i.01
  store i32 %b, i32* %10, align 4, !tbaa !1
  %11 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %11, %a
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8
}

attributes #0 = { norecurse nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { norecurse nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.vectorize.width", i32 1}
!7 = !{!"llvm.loop.interleave.count", i32 1}
!8 = distinct !{!8, !9, !6, !7}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
