; ModuleID = 'linked.ll'
target datalayout = "e-m:e-p:32:32"

define void @V6287.V2696.rt(i32 %V6291.V2700.size_x, i32 %V6292.V2701.size_y) {
entry:
  store i32 %V6291.V2700.size_x, i32* inttoptr (i32 155 to i32*), align 4
  store i32 %V6292.V2701.size_y, i32* inttoptr (i32 159 to i32*), align 4
  %V6299.V2740.2513 = lshr i32 %V6291.V2700.size_x, 1
  store i32 %V6299.V2740.2513, i32* inttoptr (i32 157 to i32*), align 4
  %V6303.V2737.2516 = lshr i32 %V6292.V2701.size_y, 1
  store i32 %V6303.V2737.2516, i32* inttoptr (i32 161 to i32*), align 4
  %0 = sitofp i32 %V6291.V2700.size_x to float
  %V6308.V2733.2520 = fdiv float 1.280000e+02, %0
  store float %V6308.V2733.2520, float* inttoptr (i32 159 to float*), align 4
  %"9881.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6609.V3021.2319.i = tail call i32* @V6269.V2678.create_pixel() #2
  %"9883.i" = ptrtoint i32* %V6609.V3021.2319.i to i32
  %V6610.V3015.line.i = tail call i32* @create_array(i32 %"9881.i", i32 %"9883.i") #2
  %"9885.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6614.V3016.2323.i = add i32 %"9885.i", -2
  %1 = icmp sgt i32 %V6614.V3016.2323.i, -1
  br i1 %1, label %then.i.i.preheader, label %V6271.V2680.create_pixelline.exit

then.i.i.preheader:                               ; preds = %entry
  br label %then.i.i

then.i.i:                                         ; preds = %then.i.i.preheader, %then.i.i
  %V6616.V3025.n.tr1.i.i = phi i32 [ %V6622.V3028.2315.i.i, %then.i.i ], [ %V6614.V3016.2323.i, %then.i.i.preheader ]
  %V6619.V3030.2313.i.i = tail call i32* @V6269.V2678.create_pixel() #2
  %"9889.i.i" = ptrtoint i32* %V6619.V3030.2313.i.i to i32
  %"9890.i.i" = getelementptr inbounds i32, i32* %V6610.V3015.line.i, i32 %V6616.V3025.n.tr1.i.i
  store i32 %"9889.i.i", i32* %"9890.i.i", align 4
  %V6622.V3028.2315.i.i = add nsw i32 %V6616.V3025.n.tr1.i.i, -1
  %2 = icmp sgt i32 %V6616.V3025.n.tr1.i.i, 0
  br i1 %2, label %then.i.i, label %V6271.V2680.create_pixelline.exit.loopexit

V6271.V2680.create_pixelline.exit.loopexit:       ; preds = %then.i.i
  %"9881.i1.pre" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  br label %V6271.V2680.create_pixelline.exit

V6271.V2680.create_pixelline.exit:                ; preds = %V6271.V2680.create_pixelline.exit.loopexit, %entry
  %"9881.i1" = phi i32 [ %"9881.i1.pre", %V6271.V2680.create_pixelline.exit.loopexit ], [ %"9885.i", %entry ]
  %V6609.V3021.2319.i2 = tail call i32* @V6269.V2678.create_pixel() #2
  %"9883.i3" = ptrtoint i32* %V6609.V3021.2319.i2 to i32
  %V6610.V3015.line.i4 = tail call i32* @create_array(i32 %"9881.i1", i32 %"9883.i3") #2
  %"9885.i5" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6614.V3016.2323.i6 = add i32 %"9885.i5", -2
  %3 = icmp sgt i32 %V6614.V3016.2323.i6, -1
  br i1 %3, label %then.i.i12.preheader, label %V6271.V2680.create_pixelline.exit13

then.i.i12.preheader:                             ; preds = %V6271.V2680.create_pixelline.exit
  br label %then.i.i12

then.i.i12:                                       ; preds = %then.i.i12.preheader, %then.i.i12
  %V6616.V3025.n.tr1.i.i7 = phi i32 [ %V6622.V3028.2315.i.i11, %then.i.i12 ], [ %V6614.V3016.2323.i6, %then.i.i12.preheader ]
  %V6619.V3030.2313.i.i8 = tail call i32* @V6269.V2678.create_pixel() #2
  %"9889.i.i9" = ptrtoint i32* %V6619.V3030.2313.i.i8 to i32
  %"9890.i.i10" = getelementptr inbounds i32, i32* %V6610.V3015.line.i4, i32 %V6616.V3025.n.tr1.i.i7
  store i32 %"9889.i.i9", i32* %"9890.i.i10", align 4
  %V6622.V3028.2315.i.i11 = add nsw i32 %V6616.V3025.n.tr1.i.i7, -1
  %4 = icmp sgt i32 %V6616.V3025.n.tr1.i.i7, 0
  br i1 %4, label %then.i.i12, label %V6271.V2680.create_pixelline.exit13.loopexit

V6271.V2680.create_pixelline.exit13.loopexit:     ; preds = %then.i.i12
  %"9881.i14.pre" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  br label %V6271.V2680.create_pixelline.exit13

V6271.V2680.create_pixelline.exit13:              ; preds = %V6271.V2680.create_pixelline.exit13.loopexit, %V6271.V2680.create_pixelline.exit
  %"9881.i14" = phi i32 [ %"9881.i14.pre", %V6271.V2680.create_pixelline.exit13.loopexit ], [ %"9885.i5", %V6271.V2680.create_pixelline.exit ]
  %V6609.V3021.2319.i15 = tail call i32* @V6269.V2678.create_pixel() #2
  %"9883.i16" = ptrtoint i32* %V6609.V3021.2319.i15 to i32
  %V6610.V3015.line.i17 = tail call i32* @create_array(i32 %"9881.i14", i32 %"9883.i16") #2
  %"9885.i18" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6614.V3016.2323.i19 = add i32 %"9885.i18", -2
  %5 = icmp sgt i32 %V6614.V3016.2323.i19, -1
  br i1 %5, label %then.i.i25.preheader, label %V6271.V2680.create_pixelline.exit26

then.i.i25.preheader:                             ; preds = %V6271.V2680.create_pixelline.exit13
  br label %then.i.i25

then.i.i25:                                       ; preds = %then.i.i25.preheader, %then.i.i25
  %V6616.V3025.n.tr1.i.i20 = phi i32 [ %V6622.V3028.2315.i.i24, %then.i.i25 ], [ %V6614.V3016.2323.i19, %then.i.i25.preheader ]
  %V6619.V3030.2313.i.i21 = tail call i32* @V6269.V2678.create_pixel() #2
  %"9889.i.i22" = ptrtoint i32* %V6619.V3030.2313.i.i21 to i32
  %"9890.i.i23" = getelementptr inbounds i32, i32* %V6610.V3015.line.i17, i32 %V6616.V3025.n.tr1.i.i20
  store i32 %"9889.i.i22", i32* %"9890.i.i23", align 4
  %V6622.V3028.2315.i.i24 = add nsw i32 %V6616.V3025.n.tr1.i.i20, -1
  %6 = icmp sgt i32 %V6616.V3025.n.tr1.i.i20, 0
  br i1 %6, label %then.i.i25, label %V6271.V2680.create_pixelline.exit26.loopexit

V6271.V2680.create_pixelline.exit26.loopexit:     ; preds = %then.i.i25
  br label %V6271.V2680.create_pixelline.exit26

V6271.V2680.create_pixelline.exit26:              ; preds = %V6271.V2680.create_pixelline.exit26.loopexit, %V6271.V2680.create_pixelline.exit13
  tail call void @V6203.V2612.read_parameter()
  tail call void @print_char(i32 80)
  tail call void @print_char(i32 51)
  tail call void @print_char(i32 10)
  %"10073.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  tail call void @print_int(i32 %"10073.i")
  tail call void @print_char(i32 32)
  %"10076.i" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  tail call void @print_int(i32 %"10076.i")
  tail call void @print_char(i32 32)
  tail call void @print_int(i32 255)
  tail call void @print_char(i32 10)
  tail call void @V6282.V2691.init_dirvecs()
  %"116071.i" = load i32*, i32** inttoptr (i32 248 to i32**), align 8
  %"1311511.i" = load i32, i32* inttoptr (i32 79 to i32*), align 4
  store i32 %"1311511.i", i32* %"116071.i", align 4
  %"1312024.i" = load i32, i32* inttoptr (i32 83 to i32*), align 4
  %"13123.i" = getelementptr inbounds i32, i32* %"116071.i", i32 1
  store i32 %"1312024.i", i32* %"13123.i", align 4
  %"1312536.i" = load i32, i32* inttoptr (i32 87 to i32*), align 4
  %"13129.i" = getelementptr inbounds i32, i32* %"116071.i", i32 2
  store i32 %"1312536.i", i32* %"13129.i", align 4
  %"10851.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i = add i32 %"10851.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* nonnull inttoptr (i32 248 to i32*), i32 %V7893.V4299.1437.i) #2
  %"9731" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V6328.V2721.2531 = add i32 %"9731", -1
  tail call void @V6286.V2695.setup_reflections(i32 %V6328.V2721.2531)
  %"9972.i" = load float, float* inttoptr (i32 159 to float*), align 4
  %"9975.i" = load i32, i32* inttoptr (i32 161 to i32*), align 4
  %V6717.V3147.2233.i = sub i32 0, %"9975.i"
  %7 = sitofp i32 %V6717.V3147.2233.i to float
  %V6719.V3122.ydisp.i = fmul float %"9972.i", %7
  %"9978.i" = load float, float* inttoptr (i32 169 to float*), align 4
  %V6722.V3140.2239.i = fmul float %"9978.i", %V6719.V3122.ydisp.i
  %"9981.i" = load float, float* inttoptr (i32 172 to float*), align 4
  %V6725.V3123.lc0.i = fadd float %"9981.i", %V6722.V3140.2239.i
  %"9984.i" = load float, float* inttoptr (i32 173 to float*), align 4
  %V6728.V3135.2244.i = fmul float %V6719.V3122.ydisp.i, %"9984.i"
  %"9987.i" = load float, float* inttoptr (i32 176 to float*), align 16
  %V6731.V3124.lc1.i = fadd float %V6728.V3135.2244.i, %"9987.i"
  %"9990.i" = load float, float* inttoptr (i32 177 to float*), align 4
  %V6734.V3130.2249.i = fmul float %V6719.V3122.ydisp.i, %"9990.i"
  %"9993.i" = load float, float* inttoptr (i32 180 to float*), align 4
  %V6737.V3125.lc2.i = fadd float %V6734.V3130.2249.i, %"9993.i"
  %"9996.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6741.V3126.2254.i = add i32 %"9996.i", -1
  tail call void @V6264.V2673.pretrace_pixels(i32* %V6610.V3015.line.i4, i32 %V6741.V3126.2254.i, i32 0, float %V6725.V3123.lc0.i, float %V6731.V3124.lc1.i, float %V6737.V3125.lc2.i)
  %"99471.i" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %8 = icmp sgt i32 %"99471.i", 0
  br i1 %8, label %then.i.preheader, label %V6267.V2676.scan_line.exit

then.i.preheader:                                 ; preds = %V6271.V2680.create_pixelline.exit26
  br label %then.i

then.i:                                           ; preds = %then.i.preheader, %ifcont.i
  %"99477.i" = phi i32 [ %"9947.i", %ifcont.i ], [ %"99471.i", %then.i.preheader ]
  %V6674.V3083.group_id.tr6.i = phi i32 [ %"13145.i.i", %ifcont.i ], [ 2, %then.i.preheader ]
  %V6673.V3082.next.tr5.i = phi i32* [ %V6671.V3080.prev.tr3.i, %ifcont.i ], [ %V6610.V3015.line.i17, %then.i.preheader ]
  %V6672.V3081.cur.tr4.i = phi i32* [ %V6673.V3082.next.tr5.i, %ifcont.i ], [ %V6610.V3015.line.i4, %then.i.preheader ]
  %V6671.V3080.prev.tr3.i = phi i32* [ %V6672.V3081.cur.tr4.i, %ifcont.i ], [ %V6610.V3015.line.i, %then.i.preheader ]
  %V6670.V3079.y.tr2.i = phi i32 [ %V6689.V3093.2274.i, %ifcont.i ], [ 0, %then.i.preheader ]
  %V6680.V3092.2272.i = add i32 %"99477.i", -1
  %9 = icmp sgt i32 %V6680.V3092.2272.i, %V6670.V3079.y.tr2.i
  %V6689.V3093.2274.i = add i32 %V6670.V3079.y.tr2.i, 1
  br i1 %9, label %then1.i, label %ifcont.i

then1.i:                                          ; preds = %then.i
  %"9972.i.i" = load float, float* inttoptr (i32 159 to float*), align 4
  %"9975.i.i" = load i32, i32* inttoptr (i32 161 to i32*), align 4
  %V6717.V3147.2233.i.i = sub i32 %V6689.V3093.2274.i, %"9975.i.i"
  %10 = sitofp i32 %V6717.V3147.2233.i.i to float
  %V6719.V3122.ydisp.i.i = fmul float %"9972.i.i", %10
  %"9978.i.i" = load float, float* inttoptr (i32 169 to float*), align 4
  %V6722.V3140.2239.i.i = fmul float %"9978.i.i", %V6719.V3122.ydisp.i.i
  %"9981.i.i" = load float, float* inttoptr (i32 172 to float*), align 4
  %V6725.V3123.lc0.i.i = fadd float %"9981.i.i", %V6722.V3140.2239.i.i
  %"9984.i.i" = load float, float* inttoptr (i32 173 to float*), align 4
  %V6728.V3135.2244.i.i = fmul float %V6719.V3122.ydisp.i.i, %"9984.i.i"
  %"9987.i.i" = load float, float* inttoptr (i32 176 to float*), align 16
  %V6731.V3124.lc1.i.i = fadd float %V6728.V3135.2244.i.i, %"9987.i.i"
  %"9990.i.i" = load float, float* inttoptr (i32 177 to float*), align 4
  %V6734.V3130.2249.i.i = fmul float %V6719.V3122.ydisp.i.i, %"9990.i.i"
  %"9993.i.i" = load float, float* inttoptr (i32 180 to float*), align 4
  %V6737.V3125.lc2.i.i = fadd float %V6734.V3130.2249.i.i, %"9993.i.i"
  %"9996.i.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6741.V3126.2254.i.i = add i32 %"9996.i.i", -1
  tail call void @V6264.V2673.pretrace_pixels(i32* %V6673.V3082.next.tr5.i, i32 %V6741.V3126.2254.i.i, i32 %V6674.V3083.group_id.tr6.i, float %V6725.V3123.lc0.i.i, float %V6731.V3124.lc1.i.i, float %V6737.V3125.lc2.i.i)
  br label %ifcont.i

ifcont.i:                                         ; preds = %then1.i, %then.i
  tail call void @V6266.V2675.scan_pixel(i32 0, i32 %V6670.V3079.y.tr2.i, i32* %V6671.V3080.prev.tr3.i, i32* %V6672.V3081.cur.tr4.i, i32* %V6673.V3082.next.tr5.i)
  %V9631.V6040.sum.i.i = add i32 %V6674.V3083.group_id.tr6.i, 2
  %11 = icmp sgt i32 %V9631.V6040.sum.i.i, 4
  %"13146.i.i" = add i32 %V6674.V3083.group_id.tr6.i, -3
  %"13145.i.i" = select i1 %11, i32 %"13146.i.i", i32 %V9631.V6040.sum.i.i
  %"9947.i" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %12 = icmp sgt i32 %"9947.i", %V6689.V3093.2274.i
  br i1 %12, label %then.i, label %V6267.V2676.scan_line.exit.loopexit

V6267.V2676.scan_line.exit.loopexit:              ; preds = %ifcont.i
  br label %V6267.V2676.scan_line.exit

V6267.V2676.scan_line.exit:                       ; preds = %V6267.V2676.scan_line.exit.loopexit, %V6271.V2680.create_pixelline.exit26
  ret void
}

; Function Attrs: norecurse nounwind
define i32* @V6271.V2680.create_pixelline() #0 {
entry:
  %"9881" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6609.V3021.2319 = tail call i32* @V6269.V2678.create_pixel()
  %"9883" = ptrtoint i32* %V6609.V3021.2319 to i32
  %V6610.V3015.line = tail call i32* @create_array(i32 %"9881", i32 %"9883")
  %"9885" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6614.V3016.2323 = add i32 %"9885", -2
  %0 = icmp sgt i32 %V6614.V3016.2323, -1
  br i1 %0, label %then.i.preheader, label %V6270.V2679.init_line_elements.exit

then.i.preheader:                                 ; preds = %entry
  br label %then.i

then.i:                                           ; preds = %then.i.preheader, %then.i
  %V6616.V3025.n.tr1.i = phi i32 [ %V6622.V3028.2315.i, %then.i ], [ %V6614.V3016.2323, %then.i.preheader ]
  %V6619.V3030.2313.i = tail call i32* @V6269.V2678.create_pixel() #2
  %"9889.i" = ptrtoint i32* %V6619.V3030.2313.i to i32
  %"9890.i" = getelementptr inbounds i32, i32* %V6610.V3015.line, i32 %V6616.V3025.n.tr1.i
  store i32 %"9889.i", i32* %"9890.i", align 4
  %V6622.V3028.2315.i = add nsw i32 %V6616.V3025.n.tr1.i, -1
  %1 = icmp sgt i32 %V6616.V3025.n.tr1.i, 0
  br i1 %1, label %then.i, label %V6270.V2679.init_line_elements.exit.loopexit

V6270.V2679.init_line_elements.exit.loopexit:     ; preds = %then.i
  br label %V6270.V2679.init_line_elements.exit

V6270.V2679.init_line_elements.exit:              ; preds = %V6270.V2679.init_line_elements.exit.loopexit, %entry
  ret i32* %V6610.V3015.line
}

define void @V6203.V2612.read_parameter() {
entry:
  tail call void @V6194.V2603.read_screen_settings()
  tail call void @V6195.V2604.read_light()
  br label %then.i.i

then.i.i:                                         ; preds = %else.i.i, %entry
  %V8603.V5012.n.tr2.i.i = phi i32 [ %V8608.V5016.902.i.i, %else.i.i ], [ 0, %entry ]
  %V8605.V5014.904.i.i = tail call i1 @V6197.V2606.read_nth_object(i32 %V8603.V5012.n.tr2.i.i)
  br i1 %V8605.V5014.904.i.i, label %else.i.i, label %then1.i.i

then1.i.i:                                        ; preds = %then.i.i
  %V8603.V5012.n.tr2.i.i.lcssa = phi i32 [ %V8603.V5012.n.tr2.i.i, %then.i.i ]
  store i32 %V8603.V5012.n.tr2.i.i.lcssa, i32* inttoptr (i32 1 to i32*), align 4
  br label %V6199.V2608.read_all_object.exit

else.i.i:                                         ; preds = %then.i.i
  %V8608.V5016.902.i.i = add nuw nsw i32 %V8603.V5012.n.tr2.i.i, 1
  %0 = icmp slt i32 %V8608.V5016.902.i.i, 60
  br i1 %0, label %then.i.i, label %V6199.V2608.read_all_object.exit.loopexit

V6199.V2608.read_all_object.exit.loopexit:        ; preds = %else.i.i
  br label %V6199.V2608.read_all_object.exit

V6199.V2608.read_all_object.exit:                 ; preds = %V6199.V2608.read_all_object.exit.loopexit, %then1.i.i
  %V8571.V4979.net1.i = tail call i32* @V6200.V2609.read_net_item(i32 0)
  %"1130812.i" = load i32, i32* %V8571.V4979.net1.i, align 4
  %1 = icmp eq i32 %"1130812.i", -1
  br i1 %1, label %V6202.V2611.read_and_network.exit, label %else.i.preheader

else.i.preheader:                                 ; preds = %V6199.V2608.read_all_object.exit
  br label %else.i

else.i:                                           ; preds = %else.i.preheader, %else.i
  %V8571.V4979.net4.i = phi i32* [ %V8571.V4979.net.i, %else.i ], [ %V8571.V4979.net1.i, %else.i.preheader ]
  %V8569.V4978.n.tr3.i = phi i32 [ %V8577.V4983.927.i, %else.i ], [ 0, %else.i.preheader ]
  %"11312.i" = ptrtoint i32* %V8571.V4979.net4.i to i32
  %"11313.i" = getelementptr inbounds i32, i32* inttoptr (i32 84 to i32*), i32 %V8569.V4978.n.tr3.i
  store i32 %"11312.i", i32* %"11313.i", align 4
  %V8577.V4983.927.i = add i32 %V8569.V4978.n.tr3.i, 1
  %V8571.V4979.net.i = tail call i32* @V6200.V2609.read_net_item(i32 0)
  %"113081.i" = load i32, i32* %V8571.V4979.net.i, align 4
  %2 = icmp eq i32 %"113081.i", -1
  br i1 %2, label %V6202.V2611.read_and_network.exit.loopexit, label %else.i

V6202.V2611.read_and_network.exit.loopexit:       ; preds = %else.i
  br label %V6202.V2611.read_and_network.exit

V6202.V2611.read_and_network.exit:                ; preds = %V6202.V2611.read_and_network.exit.loopexit, %V6199.V2608.read_all_object.exit
  %V8568.V4972.934 = tail call i32* @V6201.V2610.read_or_network(i32 0)
  %"11305" = ptrtoint i32* %V8568.V4972.934 to i32
  store i32 %"11305", i32* inttoptr (i32 135 to i32*), align 4
  ret void
}

define void @V6260.V2669.write_ppm_header() {
entry:
  tail call void @print_char(i32 80)
  tail call void @print_char(i32 51)
  tail call void @print_char(i32 10)
  %"10073" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  tail call void @print_int(i32 %"10073")
  tail call void @print_char(i32 32)
  %"10076" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  tail call void @print_int(i32 %"10076")
  tail call void @print_char(i32 32)
  tail call void @print_int(i32 255)
  tail call void @print_char(i32 10)
  ret void
}

define void @V6282.V2691.init_dirvecs() {
entry:
  tail call void @V6279.V2688.create_dirvecs(i32 4)
  tail call void @V6276.V2685.calc_dirvec_rows(i32 9, i32 0, i32 0)
  %"98081.i" = load i32*, i32** inttoptr (i32 196 to i32**), align 4
  br label %then.i.i

then.i.i:                                         ; preds = %then.i.i, %entry
  %V6453.V2862.index.tr3.i.i = phi i32 [ %V6458.V2865.2426.i.i, %then.i.i ], [ 119, %entry ]
  %"98142.i.i" = getelementptr inbounds i32, i32* %"98081.i", i32 %V6453.V2862.index.tr3.i.i
  %"9814.i.i" = bitcast i32* %"98142.i.i" to i32**
  %"98141.i.i" = load i32*, i32** %"9814.i.i", align 4
  %"10851.i.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i = add i32 %"10851.i.i.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i.i", i32 %V7893.V4299.1437.i.i.i) #2
  %V6458.V2865.2426.i.i = add nsw i32 %V6453.V2862.index.tr3.i.i, -1
  %0 = icmp sgt i32 %V6453.V2862.index.tr3.i.i, 0
  br i1 %0, label %then.i.i, label %V6280.V2689.init_dirvec_constants.exit.i

V6280.V2689.init_dirvec_constants.exit.i:         ; preds = %then.i.i
  %"98081.i.1" = load i32*, i32** inttoptr (i32 192 to i32**), align 64
  br label %then.i.i.1

then.i.i.1:                                       ; preds = %then.i.i.1, %V6280.V2689.init_dirvec_constants.exit.i
  %V6453.V2862.index.tr3.i.i.1 = phi i32 [ %V6458.V2865.2426.i.i.1, %then.i.i.1 ], [ 119, %V6280.V2689.init_dirvec_constants.exit.i ]
  %"98142.i.i.1" = getelementptr inbounds i32, i32* %"98081.i.1", i32 %V6453.V2862.index.tr3.i.i.1
  %"9814.i.i.1" = bitcast i32* %"98142.i.i.1" to i32**
  %"98141.i.i.1" = load i32*, i32** %"9814.i.i.1", align 4
  %"10851.i.i.i.1" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i.1 = add i32 %"10851.i.i.i.1", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i.i.1", i32 %V7893.V4299.1437.i.i.i.1) #2
  %V6458.V2865.2426.i.i.1 = add nsw i32 %V6453.V2862.index.tr3.i.i.1, -1
  %1 = icmp sgt i32 %V6453.V2862.index.tr3.i.i.1, 0
  br i1 %1, label %then.i.i.1, label %V6280.V2689.init_dirvec_constants.exit.i.1

V6280.V2689.init_dirvec_constants.exit.i.1:       ; preds = %then.i.i.1
  %"98081.i.2" = load i32*, i32** inttoptr (i32 188 to i32**), align 4
  br label %then.i.i.2

then.i.i.2:                                       ; preds = %then.i.i.2, %V6280.V2689.init_dirvec_constants.exit.i.1
  %V6453.V2862.index.tr3.i.i.2 = phi i32 [ %V6458.V2865.2426.i.i.2, %then.i.i.2 ], [ 119, %V6280.V2689.init_dirvec_constants.exit.i.1 ]
  %"98142.i.i.2" = getelementptr inbounds i32, i32* %"98081.i.2", i32 %V6453.V2862.index.tr3.i.i.2
  %"9814.i.i.2" = bitcast i32* %"98142.i.i.2" to i32**
  %"98141.i.i.2" = load i32*, i32** %"9814.i.i.2", align 4
  %"10851.i.i.i.2" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i.2 = add i32 %"10851.i.i.i.2", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i.i.2", i32 %V7893.V4299.1437.i.i.i.2) #2
  %V6458.V2865.2426.i.i.2 = add nsw i32 %V6453.V2862.index.tr3.i.i.2, -1
  %2 = icmp sgt i32 %V6453.V2862.index.tr3.i.i.2, 0
  br i1 %2, label %then.i.i.2, label %V6280.V2689.init_dirvec_constants.exit.i.2

V6280.V2689.init_dirvec_constants.exit.i.2:       ; preds = %then.i.i.2
  %"98081.i.3" = load i32*, i32** inttoptr (i32 184 to i32**), align 8
  br label %then.i.i.3

then.i.i.3:                                       ; preds = %then.i.i.3, %V6280.V2689.init_dirvec_constants.exit.i.2
  %V6453.V2862.index.tr3.i.i.3 = phi i32 [ %V6458.V2865.2426.i.i.3, %then.i.i.3 ], [ 119, %V6280.V2689.init_dirvec_constants.exit.i.2 ]
  %"98142.i.i.3" = getelementptr inbounds i32, i32* %"98081.i.3", i32 %V6453.V2862.index.tr3.i.i.3
  %"9814.i.i.3" = bitcast i32* %"98142.i.i.3" to i32**
  %"98141.i.i.3" = load i32*, i32** %"9814.i.i.3", align 4
  %"10851.i.i.i.3" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i.3 = add i32 %"10851.i.i.i.3", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i.i.3", i32 %V7893.V4299.1437.i.i.i.3) #2
  %V6458.V2865.2426.i.i.3 = add nsw i32 %V6453.V2862.index.tr3.i.i.3, -1
  %3 = icmp sgt i32 %V6453.V2862.index.tr3.i.i.3, 0
  br i1 %3, label %then.i.i.3, label %V6280.V2689.init_dirvec_constants.exit.i.3

V6280.V2689.init_dirvec_constants.exit.i.3:       ; preds = %then.i.i.3
  %"98081.i.4" = load i32*, i32** inttoptr (i32 180 to i32**), align 4
  br label %then.i.i.4

then.i.i.4:                                       ; preds = %then.i.i.4, %V6280.V2689.init_dirvec_constants.exit.i.3
  %V6453.V2862.index.tr3.i.i.4 = phi i32 [ %V6458.V2865.2426.i.i.4, %then.i.i.4 ], [ 119, %V6280.V2689.init_dirvec_constants.exit.i.3 ]
  %"98142.i.i.4" = getelementptr inbounds i32, i32* %"98081.i.4", i32 %V6453.V2862.index.tr3.i.i.4
  %"9814.i.i.4" = bitcast i32* %"98142.i.i.4" to i32**
  %"98141.i.i.4" = load i32*, i32** %"9814.i.i.4", align 4
  %"10851.i.i.i.4" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i.4 = add i32 %"10851.i.i.i.4", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i.i.4", i32 %V7893.V4299.1437.i.i.i.4) #2
  %V6458.V2865.2426.i.i.4 = add nsw i32 %V6453.V2862.index.tr3.i.i.4, -1
  %4 = icmp sgt i32 %V6453.V2862.index.tr3.i.i.4, 0
  br i1 %4, label %then.i.i.4, label %V6280.V2689.init_dirvec_constants.exit.i.4

V6280.V2689.init_dirvec_constants.exit.i.4:       ; preds = %then.i.i.4
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6188.V2597.d_vec(i32* nocapture readonly %V8980.V5389.d) #1 {
entry:
  %"11606" = bitcast i32* %V8980.V5389.d to i32**
  %"116071" = load i32*, i32** %"11606", align 4
  ret i32* %"116071"
}

; Function Attrs: norecurse nounwind
define void @V6147.V2556.veccpy(i32* nocapture %V9598.V6007.dest, i32* nocapture readonly %V9599.V6008.src) #0 {
entry:
  %"1311511" = load i32, i32* %V9599.V6008.src, align 4
  store i32 %"1311511", i32* %V9598.V6007.dest, align 4
  %"131203" = getelementptr inbounds i32, i32* %V9599.V6008.src, i32 1
  %"1312024" = load i32, i32* %"131203", align 4
  %"13123" = getelementptr inbounds i32, i32* %V9598.V6007.dest, i32 1
  store i32 %"1312024", i32* %"13123", align 4
  %"131255" = getelementptr inbounds i32, i32* %V9599.V6008.src, i32 2
  %"1312536" = load i32, i32* %"131255", align 4
  %"13129" = getelementptr inbounds i32, i32* %V9598.V6007.dest, i32 2
  store i32 %"1312536", i32* %"13129", align 4
  ret void
}

; Function Attrs: nounwind
define void @V6222.V2631.setup_dirvec_constants(i32* nocapture readonly %V7889.V4298.dirvec) #2 {
entry:
  %"10851" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437 = add i32 %"10851", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %V7889.V4298.dirvec, i32 %V7893.V4299.1437)
  ret void
}

; Function Attrs: nounwind
define void @V6286.V2695.setup_reflections(i32 %V6335.V2744.obj_id) #2 {
entry:
  %0 = icmp sgt i32 %V6335.V2744.obj_id, -1
  br i1 %0, label %then, label %ifcont13

then:                                             ; preds = %entry
  %"9736" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V6335.V2744.obj_id
  %"97361" = load i32*, i32** %"9736", align 4
  %"12773.i" = getelementptr inbounds i32, i32* %"97361", i32 2
  %"127733.i" = load i32, i32* %"12773.i", align 4
  %1 = icmp eq i32 %"127733.i", 2
  br i1 %1, label %then2, label %ifcont13

then2:                                            ; preds = %then
  %"123201.i" = getelementptr inbounds i32, i32* %"97361", i32 7
  %2 = bitcast i32* %"123201.i" to float**
  %"1232082.i" = load float*, float** %2, align 4
  %"1233312.i" = load float, float* %"1232082.i", align 4
  %3 = fcmp olt float %"1233312.i", 1.000000e+00
  br i1 %3, label %else, label %ifcont13

else:                                             ; preds = %then2
  %"12814.i" = getelementptr inbounds i32, i32* %"97361", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %ifcont13 [
    i32 1, label %then4
    i32 2, label %then6
  ]

then4:                                            ; preds = %else
  tail call void @V6284.V2693.setup_rect_reflection(i32 %V6335.V2744.obj_id, i32* nonnull %"97361")
  br label %ifcont13

then6:                                            ; preds = %else
  %V6350.V2791.2470.i = shl i32 %V6335.V2744.obj_id, 2
  %V6352.V2758.sid.i = or i32 %V6350.V2791.2470.i, 1
  %"9749.i" = load i32, i32* inttoptr (i32 435 to i32*), align 4
  %V6357.V2760.br.i = fsub float 1.000000e+00, %"1233312.i"
  %"125031.i.i" = getelementptr inbounds i32, i32* %"97361", i32 4
  %"12503.i.i" = bitcast i32* %"125031.i.i" to i32**
  %"125035.i.i" = load i32*, i32** %"12503.i.i", align 4
  %"130231.i.i" = load float, float* inttoptr (i32 79 to float*), align 4
  %"13025.i.i" = bitcast i32* %"125035.i.i" to float*
  %"130262.i.i" = load float, float* %"13025.i.i", align 4
  %V9502.V5913.513.i.i = fmul float %"130231.i.i", %"130262.i.i"
  %"130293.i.i" = load float, float* inttoptr (i32 83 to float*), align 4
  %"130322.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 1
  %"13032.i.i" = bitcast i32* %"130322.i.i" to float*
  %"130324.i.i" = load float, float* %"13032.i.i", align 4
  %V9507.V5914.514.i.i = fmul float %"130293.i.i", %"130324.i.i"
  %V9508.V5907.519.i.i = fadd float %V9502.V5913.513.i.i, %V9507.V5914.514.i.i
  %"130355.i.i" = load float, float* inttoptr (i32 87 to float*), align 4
  %"130384.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 2
  %"13038.i.i" = bitcast i32* %"130384.i.i" to float*
  %"130386.i.i" = load float, float* %"13038.i.i", align 4
  %V9513.V5908.520.i.i = fmul float %"130355.i.i", %"130386.i.i"
  %"13040.i.i" = fadd float %V9508.V5907.519.i.i, %V9513.V5908.520.i.i
  %V6362.V2784.2478.i = fmul float %"130262.i.i", 2.000000e+00
  %V6363.V2781.2480.i = fmul float %V6362.V2784.2478.i, %"13040.i.i"
  %V6366.V2766.2494.i = fsub float %V6363.V2781.2480.i, %"130231.i.i"
  %V6369.V2778.2484.i = fmul float %"130324.i.i", 2.000000e+00
  %V6370.V2775.2486.i = fmul float %V6369.V2778.2484.i, %"13040.i.i"
  %V6373.V2767.2495.i = fsub float %V6370.V2775.2486.i, %"130293.i.i"
  %V6376.V2772.2490.i = fmul float %"130386.i.i", 2.000000e+00
  %V6377.V2769.2492.i = fmul float %V6376.V2772.2490.i, %"13040.i.i"
  %V6380.V2768.2496.i = fsub float %V6377.V2769.2492.i, %"130355.i.i"
  %V6482.V2889.v3.i.i.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i.i" = ptrtoint i32* %V6482.V2889.v3.i.i.i to i32
  %V6485.V2890.consts.i.i.i = tail call i32* @create_array(i32 %"9841.i.i.i", i32 %"9843.i.i.i") #2
  %"9832.i.i.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i.i", i32* %"9832.i.i.i", align 4
  %"9846.i.i.i" = ptrtoint i32* %V6485.V2890.consts.i.i.i to i32
  %"9847.i.i.i" = getelementptr inbounds i32, i32* %"9832.i.i.i", i32 1
  store i32 %"9846.i.i.i", i32* %"9847.i.i.i", align 4
  %4 = bitcast i32* %V6482.V2889.v3.i.i.i to float*
  store float %V6366.V2766.2494.i, float* %4, align 4
  %"13141.i.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i.i, i32 1
  %5 = bitcast i32* %"13141.i.i.i" to float*
  store float %V6373.V2767.2495.i, float* %5, align 4
  %"13144.i.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i.i, i32 2
  %6 = bitcast i32* %"13144.i.i.i" to float*
  store float %V6380.V2768.2496.i, float* %6, align 4
  %"10851.i.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i.i = add i32 %"10851.i.i.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i.i.i", i32 %V7893.V4299.1437.i.i.i) #2
  %"9787.i.i" = tail call i32* @create_tuple(i32 3) #2
  store i32 %V6352.V2758.sid.i, i32* %"9787.i.i", align 4
  %"9798.i.i" = ptrtoint i32* %"9832.i.i.i" to i32
  %"9799.i.i" = getelementptr inbounds i32, i32* %"9787.i.i", i32 1
  store i32 %"9798.i.i", i32* %"9799.i.i", align 4
  %"9801.i.i" = getelementptr inbounds i32, i32* %"9787.i.i", i32 2
  %7 = bitcast i32* %"9801.i.i" to float*
  store float %V6357.V2760.br.i, float* %7, align 4
  %"9803.i.i" = ptrtoint i32* %"9787.i.i" to i32
  %"9804.i.i" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %"9749.i"
  store i32 %"9803.i.i", i32* %"9804.i.i", align 4
  %V6384.V2764.2499.i = add i32 %"9749.i", 1
  store i32 %V6384.V2764.2499.i, i32* inttoptr (i32 435 to i32*), align 4
  br label %ifcont13

ifcont13:                                         ; preds = %then2, %entry, %then4, %else, %then6, %then
  ret void
}

define void @V6265.V2674.pretrace_line(i32* nocapture readonly %V6710.V3119.line, i32 %V6711.V3120.y, i32 %V6712.V3121.group_id) {
entry:
  %"9972" = load float, float* inttoptr (i32 159 to float*), align 4
  %"9975" = load i32, i32* inttoptr (i32 161 to i32*), align 4
  %V6717.V3147.2233 = sub i32 %V6711.V3120.y, %"9975"
  %0 = sitofp i32 %V6717.V3147.2233 to float
  %V6719.V3122.ydisp = fmul float %"9972", %0
  %"9978" = load float, float* inttoptr (i32 169 to float*), align 4
  %V6722.V3140.2239 = fmul float %"9978", %V6719.V3122.ydisp
  %"9981" = load float, float* inttoptr (i32 172 to float*), align 4
  %V6725.V3123.lc0 = fadd float %"9981", %V6722.V3140.2239
  %"9984" = load float, float* inttoptr (i32 173 to float*), align 4
  %V6728.V3135.2244 = fmul float %V6719.V3122.ydisp, %"9984"
  %"9987" = load float, float* inttoptr (i32 176 to float*), align 16
  %V6731.V3124.lc1 = fadd float %V6728.V3135.2244, %"9987"
  %"9990" = load float, float* inttoptr (i32 177 to float*), align 4
  %V6734.V3130.2249 = fmul float %V6719.V3122.ydisp, %"9990"
  %"9993" = load float, float* inttoptr (i32 180 to float*), align 4
  %V6737.V3125.lc2 = fadd float %V6734.V3130.2249, %"9993"
  %"9996" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6741.V3126.2254 = add i32 %"9996", -1
  tail call void @V6264.V2673.pretrace_pixels(i32* %V6710.V3119.line, i32 %V6741.V3126.2254, i32 %V6712.V3121.group_id, float %V6725.V3123.lc0, float %V6731.V3124.lc1, float %V6737.V3125.lc2)
  ret void
}

define void @V6267.V2676.scan_line(i32 %V6670.V3079.y, i32* nocapture readonly %V6671.V3080.prev, i32* nocapture readonly %V6672.V3081.cur, i32* nocapture readonly %V6673.V3082.next, i32 %V6674.V3083.group_id) {
entry:
  %"99471" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %0 = icmp sgt i32 %"99471", %V6670.V3079.y
  br i1 %0, label %then.preheader, label %ifcont3

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %ifcont
  %"99477" = phi i32 [ %"9947", %ifcont ], [ %"99471", %then.preheader ]
  %V6674.V3083.group_id.tr6 = phi i32 [ %"13145.i", %ifcont ], [ %V6674.V3083.group_id, %then.preheader ]
  %V6673.V3082.next.tr5 = phi i32* [ %V6671.V3080.prev.tr3, %ifcont ], [ %V6673.V3082.next, %then.preheader ]
  %V6672.V3081.cur.tr4 = phi i32* [ %V6673.V3082.next.tr5, %ifcont ], [ %V6672.V3081.cur, %then.preheader ]
  %V6671.V3080.prev.tr3 = phi i32* [ %V6672.V3081.cur.tr4, %ifcont ], [ %V6671.V3080.prev, %then.preheader ]
  %V6670.V3079.y.tr2 = phi i32 [ %V6689.V3093.2274, %ifcont ], [ %V6670.V3079.y, %then.preheader ]
  %V6680.V3092.2272 = add i32 %"99477", -1
  %1 = icmp sgt i32 %V6680.V3092.2272, %V6670.V3079.y.tr2
  %V6689.V3093.2274 = add i32 %V6670.V3079.y.tr2, 1
  br i1 %1, label %then1, label %ifcont

then1:                                            ; preds = %then
  %"9972.i" = load float, float* inttoptr (i32 159 to float*), align 4
  %"9975.i" = load i32, i32* inttoptr (i32 161 to i32*), align 4
  %V6717.V3147.2233.i = sub i32 %V6689.V3093.2274, %"9975.i"
  %2 = sitofp i32 %V6717.V3147.2233.i to float
  %V6719.V3122.ydisp.i = fmul float %"9972.i", %2
  %"9978.i" = load float, float* inttoptr (i32 169 to float*), align 4
  %V6722.V3140.2239.i = fmul float %"9978.i", %V6719.V3122.ydisp.i
  %"9981.i" = load float, float* inttoptr (i32 172 to float*), align 4
  %V6725.V3123.lc0.i = fadd float %"9981.i", %V6722.V3140.2239.i
  %"9984.i" = load float, float* inttoptr (i32 173 to float*), align 4
  %V6728.V3135.2244.i = fmul float %V6719.V3122.ydisp.i, %"9984.i"
  %"9987.i" = load float, float* inttoptr (i32 176 to float*), align 16
  %V6731.V3124.lc1.i = fadd float %V6728.V3135.2244.i, %"9987.i"
  %"9990.i" = load float, float* inttoptr (i32 177 to float*), align 4
  %V6734.V3130.2249.i = fmul float %V6719.V3122.ydisp.i, %"9990.i"
  %"9993.i" = load float, float* inttoptr (i32 180 to float*), align 4
  %V6737.V3125.lc2.i = fadd float %V6734.V3130.2249.i, %"9993.i"
  %"9996.i" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %V6741.V3126.2254.i = add i32 %"9996.i", -1
  tail call void @V6264.V2673.pretrace_pixels(i32* %V6673.V3082.next.tr5, i32 %V6741.V3126.2254.i, i32 %V6674.V3083.group_id.tr6, float %V6725.V3123.lc0.i, float %V6731.V3124.lc1.i, float %V6737.V3125.lc2.i)
  br label %ifcont

ifcont:                                           ; preds = %then, %then1
  tail call void @V6266.V2675.scan_pixel(i32 0, i32 %V6670.V3079.y.tr2, i32* %V6671.V3080.prev.tr3, i32* %V6672.V3081.cur.tr4, i32* %V6673.V3082.next.tr5)
  %V9631.V6040.sum.i = add i32 %V6674.V3083.group_id.tr6, 2
  %3 = icmp sgt i32 %V9631.V6040.sum.i, 4
  %"13146.i" = add i32 %V6674.V3083.group_id.tr6, -3
  %"13145.i" = select i1 %3, i32 %"13146.i", i32 %V9631.V6040.sum.i
  %"9947" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %4 = icmp sgt i32 %"9947", %V6689.V3093.2274
  br i1 %4, label %then, label %ifcont3.loopexit

ifcont3.loopexit:                                 ; preds = %ifcont
  br label %ifcont3

ifcont3:                                          ; preds = %ifcont3.loopexit, %entry
  ret void
}

define void @V6266.V2675.scan_pixel(i32 %V6690.V3099.x, i32 %V6691.V3100.y, i32* nocapture readonly %V6692.V3101.prev, i32* nocapture readonly %V6693.V3102.cur, i32* nocapture readonly %V6694.V3103.next) {
entry:
  %"99584" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %0 = icmp sgt i32 %"99584", %V6690.V3099.x
  br i1 %0, label %then.lr.ph, label %ifcont5

then.lr.ph:                                       ; preds = %entry
  %V6903.V3311.2128.i = add i32 %V6691.V3100.y, 1
  %1 = icmp sgt i32 %V6691.V3100.y, 0
  br i1 %1, label %then.us.preheader, label %then.preheader

then.preheader:                                   ; preds = %then.lr.ph
  br label %then

then.us.preheader:                                ; preds = %then.lr.ph
  br label %then.us

then.us:                                          ; preds = %then.us.preheader, %ifcont.us
  %V6690.V3099.x.tr5.us = phi i32 [ %V6908.V3314.2133.i.us, %ifcont.us ], [ %V6690.V3099.x, %then.us.preheader ]
  %"99622.us" = getelementptr inbounds i32, i32* %V6693.V3102.cur, i32 %V6690.V3099.x.tr5.us
  %"9962.us" = bitcast i32* %"99622.us" to i32**
  %2 = bitcast i32* %"99622.us" to i32***
  %"996213.us" = load i32**, i32*** %2, align 4
  %"118841.i.us" = load i32*, i32** %"996213.us", align 4
  %"1311511.i.us" = load i32, i32* %"118841.i.us", align 4
  store i32 %"1311511.i.us", i32* inttoptr (i32 152 to i32*), align 8
  %"131203.i.us" = getelementptr inbounds i32, i32* %"118841.i.us", i32 1
  %"1312024.i.us" = load i32, i32* %"131203.i.us", align 4
  store i32 %"1312024.i.us", i32* inttoptr (i32 156 to i32*), align 4
  %"131255.i.us" = getelementptr inbounds i32, i32* %"118841.i.us", i32 2
  %"1312536.i.us" = load i32, i32* %"131255.i.us", align 4
  store i32 %"1312536.i.us", i32* inttoptr (i32 160 to i32*), align 32
  %"10126.i.us" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %3 = icmp slt i32 %V6903.V3311.2128.i, %"10126.i.us"
  %V6908.V3314.2133.i.us = add i32 %V6690.V3099.x.tr5.us, 1
  br i1 %3, label %V6256.V2665.neighbors_exist.exit.us, label %then2.us

V6256.V2665.neighbors_exist.exit.us:              ; preds = %then.us
  %"10131.i.us" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %4 = icmp slt i32 %V6908.V3314.2133.i.us, %"10131.i.us"
  %5 = icmp sgt i32 %V6690.V3099.x.tr5.us, 0
  %"10133.i.us" = and i1 %5, %4
  br i1 %"10133.i.us", label %else.us, label %then2.us

then2.us:                                         ; preds = %then.us, %V6256.V2665.neighbors_exist.exit.us
  %"99653.us" = load i32*, i32** %"9962.us", align 4
  tail call void @V6255.V2664.do_without_neighbors(i32* %"99653.us", i32 0)
  br label %ifcont.us

else.us:                                          ; preds = %V6256.V2665.neighbors_exist.exit.us
  tail call void @V6259.V2668.try_exploit_neighbors(i32 %V6690.V3099.x.tr5.us, i32 %V6691.V3100.y, i32* %V6692.V3101.prev, i32* nonnull %V6693.V3102.cur, i32* %V6694.V3103.next, i32 0)
  br label %ifcont.us

ifcont.us:                                        ; preds = %else.us, %then2.us
  %"10058.i.us" = load float, float* inttoptr (i32 152 to float*), align 8
  %6 = fptosi float %"10058.i.us" to i32
  %7 = icmp sgt i32 %6, 255
  %8 = icmp slt i32 %6, 0
  %.V6832.V3241.ix.i.i.us = select i1 %8, i32 0, i32 %6
  %V6834.V3242.elem.i.i.us = select i1 %7, i32 255, i32 %.V6832.V3241.ix.i.i.us
  tail call void @print_int(i32 %V6834.V3242.elem.i.i.us)
  tail call void @print_char(i32 32)
  %"10061.i.us" = load float, float* inttoptr (i32 156 to float*), align 4
  %9 = fptosi float %"10061.i.us" to i32
  %10 = icmp sgt i32 %9, 255
  %11 = icmp slt i32 %9, 0
  %.V6832.V3241.ix.i1.i.us = select i1 %11, i32 0, i32 %9
  %V6834.V3242.elem.i2.i.us = select i1 %10, i32 255, i32 %.V6832.V3241.ix.i1.i.us
  tail call void @print_int(i32 %V6834.V3242.elem.i2.i.us)
  tail call void @print_char(i32 32)
  %"10064.i.us" = load float, float* inttoptr (i32 160 to float*), align 32
  %12 = fptosi float %"10064.i.us" to i32
  %13 = icmp sgt i32 %12, 255
  %14 = icmp slt i32 %12, 0
  %.V6832.V3241.ix.i3.i.us = select i1 %14, i32 0, i32 %12
  %V6834.V3242.elem.i4.i.us = select i1 %13, i32 255, i32 %.V6832.V3241.ix.i3.i.us
  tail call void @print_int(i32 %V6834.V3242.elem.i4.i.us)
  tail call void @print_char(i32 10)
  %"9958.us" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %15 = icmp sgt i32 %"9958.us", %V6908.V3314.2133.i.us
  br i1 %15, label %then.us, label %ifcont5.loopexit

then:                                             ; preds = %then.preheader, %then
  %V6690.V3099.x.tr5 = phi i32 [ %V6706.V3108.2266, %then ], [ %V6690.V3099.x, %then.preheader ]
  %"99622" = getelementptr inbounds i32, i32* %V6693.V3102.cur, i32 %V6690.V3099.x.tr5
  %"9962" = bitcast i32* %"99622" to i32**
  %16 = bitcast i32* %"99622" to i32***
  %"996213" = load i32**, i32*** %16, align 4
  %"118841.i" = load i32*, i32** %"996213", align 4
  %"1311511.i" = load i32, i32* %"118841.i", align 4
  store i32 %"1311511.i", i32* inttoptr (i32 152 to i32*), align 8
  %"131203.i" = getelementptr inbounds i32, i32* %"118841.i", i32 1
  %"1312024.i" = load i32, i32* %"131203.i", align 4
  store i32 %"1312024.i", i32* inttoptr (i32 156 to i32*), align 4
  %"131255.i" = getelementptr inbounds i32, i32* %"118841.i", i32 2
  %"1312536.i" = load i32, i32* %"131255.i", align 4
  store i32 %"1312536.i", i32* inttoptr (i32 160 to i32*), align 32
  %"99653" = load i32*, i32** %"9962", align 4
  tail call void @V6255.V2664.do_without_neighbors(i32* %"99653", i32 0)
  %"10058.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %17 = fptosi float %"10058.i" to i32
  %18 = icmp sgt i32 %17, 255
  %19 = icmp slt i32 %17, 0
  %.V6832.V3241.ix.i.i = select i1 %19, i32 0, i32 %17
  %V6834.V3242.elem.i.i = select i1 %18, i32 255, i32 %.V6832.V3241.ix.i.i
  tail call void @print_int(i32 %V6834.V3242.elem.i.i)
  tail call void @print_char(i32 32)
  %"10061.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %20 = fptosi float %"10061.i" to i32
  %21 = icmp sgt i32 %20, 255
  %22 = icmp slt i32 %20, 0
  %.V6832.V3241.ix.i1.i = select i1 %22, i32 0, i32 %20
  %V6834.V3242.elem.i2.i = select i1 %21, i32 255, i32 %.V6832.V3241.ix.i1.i
  tail call void @print_int(i32 %V6834.V3242.elem.i2.i)
  tail call void @print_char(i32 32)
  %"10064.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %23 = fptosi float %"10064.i" to i32
  %24 = icmp sgt i32 %23, 255
  %25 = icmp slt i32 %23, 0
  %.V6832.V3241.ix.i3.i = select i1 %25, i32 0, i32 %23
  %V6834.V3242.elem.i4.i = select i1 %24, i32 255, i32 %.V6832.V3241.ix.i3.i
  tail call void @print_int(i32 %V6834.V3242.elem.i4.i)
  tail call void @print_char(i32 10)
  %V6706.V3108.2266 = add i32 %V6690.V3099.x.tr5, 1
  %"9958" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %26 = icmp sgt i32 %"9958", %V6706.V3108.2266
  br i1 %26, label %then, label %ifcont5.loopexit10

ifcont5.loopexit:                                 ; preds = %ifcont.us
  br label %ifcont5

ifcont5.loopexit10:                               ; preds = %then
  br label %ifcont5

ifcont5:                                          ; preds = %ifcont5.loopexit10, %ifcont5.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind readnone
define i32 @V6143.V2552.add_mod5(i32 %V9629.V6038.x, i32 %V9630.V6039.y) #3 {
entry:
  %V9631.V6040.sum = add i32 %V9630.V6039.y, %V9629.V6038.x
  %0 = icmp sgt i32 %V9631.V6040.sum, 4
  %"13146" = add i32 %V9631.V6040.sum, -5
  %"13145" = select i1 %0, i32 %"13146", i32 %V9631.V6040.sum
  ret i32 %"13145"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6179.V2588.p_rgb(i32* nocapture readonly %V9067.V5476.pixel) #1 {
entry:
  %"11883" = bitcast i32* %V9067.V5476.pixel to i32**
  %"118841" = load i32*, i32** %"11883", align 4
  ret i32* %"118841"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6256.V2665.neighbors_exist(i32 %V6899.V3308.x, i32 %V6900.V3309.y, i32* nocapture readnone %V6901.V3310.next) #1 {
entry:
  %V6903.V3311.2128 = add i32 %V6900.V3309.y, 1
  %"10126" = load i32, i32* inttoptr (i32 159 to i32*), align 4
  %0 = icmp slt i32 %V6903.V3311.2128, %"10126"
  %1 = icmp sgt i32 %V6900.V3309.y, 0
  %or.cond = and i1 %1, %0
  br i1 %or.cond, label %then1, label %ifcont9

then1:                                            ; preds = %entry
  %V6908.V3314.2133 = add i32 %V6899.V3308.x, 1
  %"10131" = load i32, i32* inttoptr (i32 155 to i32*), align 4
  %2 = icmp slt i32 %V6908.V3314.2133, %"10131"
  %3 = icmp sgt i32 %V6899.V3308.x, 0
  %"10133" = and i1 %3, %2
  br label %ifcont9

ifcont9:                                          ; preds = %entry, %then1
  %"10128" = phi i1 [ %"10133", %then1 ], [ false, %entry ]
  ret i1 %"10128"
}

define void @V6255.V2664.do_without_neighbors(i32* nocapture readonly %V6912.V3321.pixel, i32 %V6913.V3322.nref) {
entry:
  %"118261.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 2
  %"11826.i" = bitcast i32* %"118261.i" to i32**
  %0 = icmp slt i32 %V6913.V3322.nref, 5
  br i1 %0, label %then.lr.ph, label %ifcont8

then.lr.ph:                                       ; preds = %entry
  %"117971.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 3
  %"11797.i" = bitcast i32* %"117971.i" to i32**
  %"117391.i.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 5
  %"11739.i.i" = bitcast i32* %"117391.i.i" to i32**
  %"116421.i.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 7
  %"11642.i.i" = bitcast i32* %"116421.i.i" to i32**
  %"118551.i.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 1
  %"11855.i.i" = bitcast i32* %"118551.i.i" to i32**
  %"117681.i.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 4
  %"11768.i.i" = bitcast i32* %"117681.i.i" to i32**
  %"117061.i.i" = getelementptr inbounds i32, i32* %V6912.V3321.pixel, i32 6
  %"11706.i.i" = bitcast i32* %"117061.i.i" to i32**
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont
  %V6913.V3322.nref.tr1 = phi i32 [ %V6913.V3322.nref, %then.lr.ph ], [ %V6923.V3329.2126, %ifcont ]
  %"118263.i" = load i32*, i32** %"11826.i", align 4
  %"10142" = getelementptr inbounds i32, i32* %"118263.i", i32 %V6913.V3322.nref.tr1
  %"101421" = load i32, i32* %"10142", align 4
  %1 = icmp sgt i32 %"101421", -1
  br i1 %1, label %then2, label %ifcont8.loopexit

then2:                                            ; preds = %then
  %"117974.i" = load i32*, i32** %"11797.i", align 4
  %"10146" = getelementptr inbounds i32, i32* %"117974.i", i32 %V6913.V3322.nref.tr1
  %"101463" = load i32, i32* %"10146", align 4
  %2 = and i32 %"101463", 1
  %"10147" = icmp eq i32 %2, 0
  br i1 %"10147", label %ifcont, label %else

else:                                             ; preds = %then2
  %"117396.i.i" = load i32*, i32** %"11739.i.i", align 4
  %"116428.i.i" = load i32*, i32** %"11642.i.i", align 4
  %"118552.i.i" = load i32*, i32** %"11855.i.i", align 4
  %"117685.i.i" = load i32*, i32** %"11768.i.i", align 4
  %"101912.i" = getelementptr inbounds i32, i32* %"117396.i.i", i32 %V6913.V3322.nref.tr1
  %"10191.i" = bitcast i32* %"101912.i" to i32**
  %"101911.i" = load i32*, i32** %"10191.i", align 4
  %"1311511.i.i" = load i32, i32* %"101911.i", align 4
  store i32 %"1311511.i.i", i32* inttoptr (i32 149 to i32*), align 4
  %"131203.i.i" = getelementptr inbounds i32, i32* %"101911.i", i32 1
  %"1312024.i.i" = load i32, i32* %"131203.i.i", align 4
  store i32 %"1312024.i.i", i32* inttoptr (i32 153 to i32*), align 4
  %"131255.i.i" = getelementptr inbounds i32, i32* %"101911.i", i32 2
  %"1312536.i.i" = load i32, i32* %"131255.i.i", align 4
  store i32 %"1312536.i.i", i32* inttoptr (i32 157 to i32*), align 4
  %"117067.i.i" = load i32*, i32** %"11706.i.i", align 4
  %"117139.i.i" = load i32, i32* %"117067.i.i", align 4
  %"101943.i" = getelementptr inbounds i32, i32* %"116428.i.i", i32 %V6913.V3322.nref.tr1
  %"10194.i" = bitcast i32* %"101943.i" to i32**
  %"101942.i" = load i32*, i32** %"10194.i", align 4
  %"101974.i" = getelementptr inbounds i32, i32* %"118552.i.i", i32 %V6913.V3322.nref.tr1
  %"10197.i" = bitcast i32* %"101974.i" to i32**
  %"101973.i" = load i32*, i32** %"10197.i", align 4
  tail call void @V6252.V2661.trace_diffuse_ray_80percent(i32 %"117139.i.i", i32* %"101942.i", i32* %"101973.i")
  %"102005.i" = getelementptr inbounds i32, i32* %"117685.i.i", i32 %V6913.V3322.nref.tr1
  %"10200.i" = bitcast i32* %"102005.i" to i32**
  %"102004.i" = load i32*, i32** %"10200.i", align 4
  %"128881.i.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"12890.i.i" = bitcast i32* %"102004.i" to float*
  %"128912.i.i" = load float, float* %"12890.i.i", align 4
  %"128943.i.i" = load float, float* inttoptr (i32 149 to float*), align 4
  %V9374.V5799.606.i.i = fmul float %"128912.i.i", %"128943.i.i"
  %V9375.V5797.608.i.i = fadd float %"128881.i.i", %V9374.V5799.606.i.i
  store float %V9375.V5797.608.i.i, float* inttoptr (i32 152 to float*), align 8
  %"128994.i.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129022.i.i" = getelementptr inbounds i32, i32* %"102004.i", i32 1
  %"12902.i.i" = bitcast i32* %"129022.i.i" to float*
  %"129025.i.i" = load float, float* %"12902.i.i", align 4
  %"129056.i.i" = load float, float* inttoptr (i32 153 to float*), align 4
  %V9384.V5790.615.i.i = fmul float %"129025.i.i", %"129056.i.i"
  %V9385.V5788.617.i.i = fadd float %"128994.i.i", %V9384.V5790.615.i.i
  store float %V9385.V5788.617.i.i, float* inttoptr (i32 156 to float*), align 4
  %"129107.i.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"129135.i.i" = getelementptr inbounds i32, i32* %"102004.i", i32 2
  %"12913.i.i" = bitcast i32* %"129135.i.i" to float*
  %"129138.i.i" = load float, float* %"12913.i.i", align 4
  %"129169.i.i" = load float, float* inttoptr (i32 157 to float*), align 4
  %V9394.V5781.624.i.i = fmul float %"129138.i.i", %"129169.i.i"
  %V9395.V5779.626.i.i = fadd float %"129107.i.i", %V9394.V5781.624.i.i
  store float %V9395.V5779.626.i.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont

ifcont:                                           ; preds = %then2, %else
  %V6923.V3329.2126 = add nsw i32 %V6913.V3322.nref.tr1, 1
  %3 = icmp slt i32 %V6923.V3329.2126, 5
  br i1 %3, label %then, label %ifcont8.loopexit

ifcont8.loopexit:                                 ; preds = %ifcont, %then
  br label %ifcont8

ifcont8:                                          ; preds = %ifcont8.loopexit, %entry
  ret void
}

define void @V6259.V2668.try_exploit_neighbors(i32 %V6858.V3267.x, i32 %V6859.V3268.y, i32* nocapture readonly %V6860.V3269.prev, i32* nocapture readonly %V6861.V3270.cur, i32* nocapture readonly %V6862.V3271.next, i32 %V6863.V3272.nref) {
entry:
  %"100802" = getelementptr inbounds i32, i32* %V6861.V3270.cur, i32 %V6858.V3267.x
  %"10080" = bitcast i32* %"100802" to i32**
  %0 = icmp slt i32 %V6863.V3272.nref, 5
  br i1 %0, label %then.lr.ph, label %ifcont12

then.lr.ph:                                       ; preds = %entry
  %"101013.i" = getelementptr inbounds i32, i32* %V6860.V3269.prev, i32 %V6858.V3267.x
  %"10101.i" = bitcast i32* %"101013.i" to i32**
  %"101054.i" = getelementptr inbounds i32, i32* %V6862.V3271.next, i32 %V6858.V3267.x
  %"10105.i" = bitcast i32* %"101054.i" to i32**
  %V6889.V3300.2143.i = add i32 %V6858.V3267.x, -1
  %"101096.i" = getelementptr inbounds i32, i32* %V6861.V3270.cur, i32 %V6889.V3300.2143.i
  %"10109.i" = bitcast i32* %"101096.i" to i32**
  %V6893.V3297.2147.i = add i32 %V6858.V3267.x, 1
  %"101138.i" = getelementptr inbounds i32, i32* %V6861.V3270.cur, i32 %V6893.V3297.2147.i
  %"10113.i" = bitcast i32* %"101138.i" to i32**
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont
  %V6863.V3272.nref.tr6 = phi i32 [ %V6863.V3272.nref, %then.lr.ph ], [ %V6875.V3281.2156, %ifcont ]
  %"1008017" = load i32*, i32** %"10080", align 4
  %"118261.i.i" = getelementptr inbounds i32, i32* %"1008017", i32 2
  %"11826.i.i" = bitcast i32* %"118261.i.i" to i32**
  %"118263.i.i" = load i32*, i32** %"11826.i.i", align 4
  %"10123.i" = getelementptr inbounds i32, i32* %"118263.i.i", i32 %V6863.V3272.nref.tr6
  %"101231.i" = load i32, i32* %"10123.i", align 4
  %1 = icmp sgt i32 %"101231.i", -1
  br i1 %1, label %then2, label %ifcont12.loopexit

then2:                                            ; preds = %then
  %"101012.i" = load i32*, i32** %"10101.i", align 4
  %"118261.i.i24.i" = getelementptr inbounds i32, i32* %"101012.i", i32 2
  %"11826.i.i25.i" = bitcast i32* %"118261.i.i24.i" to i32**
  %"118263.i.i26.i" = load i32*, i32** %"11826.i.i25.i", align 4
  %"10123.i27.i" = getelementptr inbounds i32, i32* %"118263.i.i26.i", i32 %V6863.V3272.nref.tr6
  %"101231.i28.i" = load i32, i32* %"10123.i27.i", align 4
  %2 = icmp eq i32 %"101231.i28.i", %"101231.i"
  br i1 %2, label %then.i, label %then3

then.i:                                           ; preds = %then2
  %"101053.i" = load i32*, i32** %"10105.i", align 4
  %"118261.i.i19.i" = getelementptr inbounds i32, i32* %"101053.i", i32 2
  %"11826.i.i20.i" = bitcast i32* %"118261.i.i19.i" to i32**
  %"118263.i.i21.i" = load i32*, i32** %"11826.i.i20.i", align 4
  %"10123.i22.i" = getelementptr inbounds i32, i32* %"118263.i.i21.i", i32 %V6863.V3272.nref.tr6
  %"101231.i23.i" = load i32, i32* %"10123.i22.i", align 4
  %3 = icmp eq i32 %"101231.i23.i", %"101231.i"
  br i1 %3, label %then4.i, label %then3

then4.i:                                          ; preds = %then.i
  %"101095.i" = load i32*, i32** %"10109.i", align 4
  %"118261.i.i14.i" = getelementptr inbounds i32, i32* %"101095.i", i32 2
  %"11826.i.i15.i" = bitcast i32* %"118261.i.i14.i" to i32**
  %"118263.i.i16.i" = load i32*, i32** %"11826.i.i15.i", align 4
  %"10123.i17.i" = getelementptr inbounds i32, i32* %"118263.i.i16.i", i32 %V6863.V3272.nref.tr6
  %"101231.i18.i" = load i32, i32* %"10123.i17.i", align 4
  %4 = icmp eq i32 %"101231.i18.i", %"101231.i"
  br i1 %4, label %V6258.V2667.neighbors_are_available.exit, label %then3

V6258.V2667.neighbors_are_available.exit:         ; preds = %then4.i
  %"101137.i" = load i32*, i32** %"10113.i", align 4
  %"118261.i.i9.i" = getelementptr inbounds i32, i32* %"101137.i", i32 2
  %"11826.i.i10.i" = bitcast i32* %"118261.i.i9.i" to i32**
  %"118263.i.i11.i" = load i32*, i32** %"11826.i.i10.i", align 4
  %"10123.i12.i" = getelementptr inbounds i32, i32* %"118263.i.i11.i", i32 %V6863.V3272.nref.tr6
  %"101231.i13.i" = load i32, i32* %"10123.i12.i", align 4
  %5 = icmp eq i32 %"101231.i13.i", %"101231.i"
  br i1 %5, label %else, label %then3

then3:                                            ; preds = %then2, %then.i, %then4.i, %V6258.V2667.neighbors_are_available.exit
  %"1008017.lcssa16" = phi i32* [ %"1008017", %then2 ], [ %"1008017", %then.i ], [ %"1008017", %then4.i ], [ %"1008017", %V6258.V2667.neighbors_are_available.exit ]
  %V6863.V3272.nref.tr6.lcssa15 = phi i32 [ %V6863.V3272.nref.tr6, %then2 ], [ %V6863.V3272.nref.tr6, %then.i ], [ %V6863.V3272.nref.tr6, %then4.i ], [ %V6863.V3272.nref.tr6, %V6258.V2667.neighbors_are_available.exit ]
  tail call void @V6255.V2664.do_without_neighbors(i32* %"1008017.lcssa16", i32 %V6863.V3272.nref.tr6.lcssa15)
  br label %ifcont12

else:                                             ; preds = %V6258.V2667.neighbors_are_available.exit
  %"117971.i" = getelementptr inbounds i32, i32* %"1008017", i32 3
  %"11797.i" = bitcast i32* %"117971.i" to i32**
  %"117974.i" = load i32*, i32** %"11797.i", align 4
  %"10090" = getelementptr inbounds i32, i32* %"117974.i", i32 %V6863.V3272.nref.tr6
  %"100905" = load i32, i32* %"10090", align 4
  %6 = and i32 %"100905", 1
  %"10091" = icmp eq i32 %6, 0
  br i1 %"10091", label %ifcont, label %else7

else7:                                            ; preds = %else
  tail call void @V6254.V2663.calc_diffuse_using_5points(i32 %V6858.V3267.x, i32* nonnull %V6860.V3269.prev, i32* nonnull %V6861.V3270.cur, i32* nonnull %V6862.V3271.next, i32 %V6863.V3272.nref.tr6)
  br label %ifcont

ifcont:                                           ; preds = %else, %else7
  %V6875.V3281.2156 = add nsw i32 %V6863.V3272.nref.tr6, 1
  %7 = icmp slt i32 %V6875.V3281.2156, 5
  br i1 %7, label %then, label %ifcont12.loopexit

ifcont12.loopexit:                                ; preds = %ifcont, %then
  br label %ifcont12

ifcont12:                                         ; preds = %ifcont12.loopexit, %entry, %then3
  ret void
}

define void @V6262.V2671.write_rgb() {
entry:
  %"10058" = load float, float* inttoptr (i32 152 to float*), align 8
  %0 = fptosi float %"10058" to i32
  %1 = icmp sgt i32 %0, 255
  %2 = icmp slt i32 %0, 0
  %.V6832.V3241.ix.i = select i1 %2, i32 0, i32 %0
  %V6834.V3242.elem.i = select i1 %1, i32 255, i32 %.V6832.V3241.ix.i
  tail call void @print_int(i32 %V6834.V3242.elem.i)
  tail call void @print_char(i32 32)
  %"10061" = load float, float* inttoptr (i32 156 to float*), align 4
  %3 = fptosi float %"10061" to i32
  %4 = icmp sgt i32 %3, 255
  %5 = icmp slt i32 %3, 0
  %.V6832.V3241.ix.i1 = select i1 %5, i32 0, i32 %3
  %V6834.V3242.elem.i2 = select i1 %4, i32 255, i32 %.V6832.V3241.ix.i1
  tail call void @print_int(i32 %V6834.V3242.elem.i2)
  tail call void @print_char(i32 32)
  %"10064" = load float, float* inttoptr (i32 160 to float*), align 32
  %6 = fptosi float %"10064" to i32
  %7 = icmp sgt i32 %6, 255
  %8 = icmp slt i32 %6, 0
  %.V6832.V3241.ix.i3 = select i1 %8, i32 0, i32 %6
  %V6834.V3242.elem.i4 = select i1 %7, i32 255, i32 %.V6832.V3241.ix.i3
  tail call void @print_int(i32 %V6834.V3242.elem.i4)
  tail call void @print_char(i32 10)
  ret void
}

define void @V6261.V2670.write_rgb_element(float %V6831.V3240.x) {
entry:
  %0 = fptosi float %V6831.V3240.x to i32
  %1 = icmp sgt i32 %0, 255
  %2 = icmp slt i32 %0, 0
  %.V6832.V3241.ix = select i1 %2, i32 0, i32 %0
  %V6834.V3242.elem = select i1 %1, i32 255, i32 %.V6832.V3241.ix
  tail call void @print_int(i32 %V6834.V3242.elem)
  ret void
}

declare void @print_char(i32)

declare void @print_int(i32)

; Function Attrs: norecurse nounwind readonly
define i32 @V6257.V2666.get_surface_id(i32* nocapture readonly %V6896.V3305.pixel, i32 %V6897.V3306.index) #1 {
entry:
  %"118261.i" = getelementptr inbounds i32, i32* %V6896.V3305.pixel, i32 2
  %"11826.i" = bitcast i32* %"118261.i" to i32**
  %"118263.i" = load i32*, i32** %"11826.i", align 4
  %"10123" = getelementptr inbounds i32, i32* %"118263.i", i32 %V6897.V3306.index
  %"101231" = load i32, i32* %"10123", align 4
  ret i32 %"101231"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6258.V2667.neighbors_are_available(i32 %V6877.V3286.x, i32* nocapture readonly %V6878.V3287.prev, i32* nocapture readonly %V6879.V3288.cur, i32* nocapture readonly %V6880.V3289.next, i32 %V6881.V3290.nref) #1 {
entry:
  %"100982" = getelementptr inbounds i32, i32* %V6879.V3288.cur, i32 %V6877.V3286.x
  %"10098" = bitcast i32* %"100982" to i32**
  %"100981" = load i32*, i32** %"10098", align 4
  %"118261.i.i" = getelementptr inbounds i32, i32* %"100981", i32 2
  %"11826.i.i" = bitcast i32* %"118261.i.i" to i32**
  %"118263.i.i" = load i32*, i32** %"11826.i.i", align 4
  %"10123.i" = getelementptr inbounds i32, i32* %"118263.i.i", i32 %V6881.V3290.nref
  %"101231.i" = load i32, i32* %"10123.i", align 4
  %"101013" = getelementptr inbounds i32, i32* %V6878.V3287.prev, i32 %V6877.V3286.x
  %"10101" = bitcast i32* %"101013" to i32**
  %"101012" = load i32*, i32** %"10101", align 4
  %"118261.i.i24" = getelementptr inbounds i32, i32* %"101012", i32 2
  %"11826.i.i25" = bitcast i32* %"118261.i.i24" to i32**
  %"118263.i.i26" = load i32*, i32** %"11826.i.i25", align 4
  %"10123.i27" = getelementptr inbounds i32, i32* %"118263.i.i26", i32 %V6881.V3290.nref
  %"101231.i28" = load i32, i32* %"10123.i27", align 4
  %0 = icmp eq i32 %"101231.i28", %"101231.i"
  br i1 %0, label %then, label %ifcont14

then:                                             ; preds = %entry
  %"101054" = getelementptr inbounds i32, i32* %V6880.V3289.next, i32 %V6877.V3286.x
  %"10105" = bitcast i32* %"101054" to i32**
  %"101053" = load i32*, i32** %"10105", align 4
  %"118261.i.i19" = getelementptr inbounds i32, i32* %"101053", i32 2
  %"11826.i.i20" = bitcast i32* %"118261.i.i19" to i32**
  %"118263.i.i21" = load i32*, i32** %"11826.i.i20", align 4
  %"10123.i22" = getelementptr inbounds i32, i32* %"118263.i.i21", i32 %V6881.V3290.nref
  %"101231.i23" = load i32, i32* %"10123.i22", align 4
  %1 = icmp eq i32 %"101231.i23", %"101231.i"
  br i1 %1, label %then4, label %ifcont14

then4:                                            ; preds = %then
  %V6889.V3300.2143 = add i32 %V6877.V3286.x, -1
  %"101096" = getelementptr inbounds i32, i32* %V6879.V3288.cur, i32 %V6889.V3300.2143
  %"10109" = bitcast i32* %"101096" to i32**
  %"101095" = load i32*, i32** %"10109", align 4
  %"118261.i.i14" = getelementptr inbounds i32, i32* %"101095", i32 2
  %"11826.i.i15" = bitcast i32* %"118261.i.i14" to i32**
  %"118263.i.i16" = load i32*, i32** %"11826.i.i15", align 4
  %"10123.i17" = getelementptr inbounds i32, i32* %"118263.i.i16", i32 %V6881.V3290.nref
  %"101231.i18" = load i32, i32* %"10123.i17", align 4
  %2 = icmp eq i32 %"101231.i18", %"101231.i"
  br i1 %2, label %then6, label %ifcont14

then6:                                            ; preds = %then4
  %V6893.V3297.2147 = add i32 %V6877.V3286.x, 1
  %"101138" = getelementptr inbounds i32, i32* %V6879.V3288.cur, i32 %V6893.V3297.2147
  %"10113" = bitcast i32* %"101138" to i32**
  %"101137" = load i32*, i32** %"10113", align 4
  %"118261.i.i9" = getelementptr inbounds i32, i32* %"101137", i32 2
  %"11826.i.i10" = bitcast i32* %"118261.i.i9" to i32**
  %"118263.i.i11" = load i32*, i32** %"11826.i.i10", align 4
  %"10123.i12" = getelementptr inbounds i32, i32* %"118263.i.i11", i32 %V6881.V3290.nref
  %"101231.i13" = load i32, i32* %"10123.i12", align 4
  %3 = icmp eq i32 %"101231.i13", %"101231.i"
  br label %ifcont14

ifcont14:                                         ; preds = %entry, %then4, %then6, %then
  %"10103" = phi i1 [ %3, %then6 ], [ false, %then4 ], [ false, %then ], [ false, %entry ]
  ret i1 %"10103"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6182.V2591.p_calc_diffuse(i32* nocapture readonly %V9037.V5446.pixel) #1 {
entry:
  %"117971" = getelementptr inbounds i32, i32* %V9037.V5446.pixel, i32 3
  %"11797" = bitcast i32* %"117971" to i32**
  %"117974" = load i32*, i32** %"11797", align 4
  ret i32* %"117974"
}

; Function Attrs: norecurse nounwind
define void @V6254.V2663.calc_diffuse_using_5points(i32 %V6924.V3333.x, i32* nocapture readonly %V6925.V3334.prev, i32* nocapture readonly %V6926.V3335.cur, i32* nocapture readonly %V6927.V3336.next, i32 %V6928.V3337.nref) #0 {
entry:
  %"101542" = getelementptr inbounds i32, i32* %V6925.V3334.prev, i32 %V6924.V3333.x
  %"10154" = bitcast i32* %"101542" to i32**
  %"101541" = load i32*, i32** %"10154", align 4
  %"117391.i" = getelementptr inbounds i32, i32* %"101541", i32 5
  %"11739.i" = bitcast i32* %"117391.i" to i32**
  %"117396.i" = load i32*, i32** %"11739.i", align 4
  %V6932.V3362.2106 = add i32 %V6924.V3333.x, -1
  %"101573" = getelementptr inbounds i32, i32* %V6926.V3335.cur, i32 %V6932.V3362.2106
  %"10157" = bitcast i32* %"101573" to i32**
  %"101572" = load i32*, i32** %"10157", align 4
  %"117391.i65" = getelementptr inbounds i32, i32* %"101572", i32 5
  %"11739.i66" = bitcast i32* %"117391.i65" to i32**
  %"117396.i67" = load i32*, i32** %"11739.i66", align 4
  %"101604" = getelementptr inbounds i32, i32* %V6926.V3335.cur, i32 %V6924.V3333.x
  %"10160" = bitcast i32* %"101604" to i32**
  %"101603" = load i32*, i32** %"10160", align 4
  %"117391.i62" = getelementptr inbounds i32, i32* %"101603", i32 5
  %"11739.i63" = bitcast i32* %"117391.i62" to i32**
  %"117396.i64" = load i32*, i32** %"11739.i63", align 4
  %V6938.V3358.2110 = add i32 %V6924.V3333.x, 1
  %"101635" = getelementptr inbounds i32, i32* %V6926.V3335.cur, i32 %V6938.V3358.2110
  %"10163" = bitcast i32* %"101635" to i32**
  %"101634" = load i32*, i32** %"10163", align 4
  %"117391.i59" = getelementptr inbounds i32, i32* %"101634", i32 5
  %"11739.i60" = bitcast i32* %"117391.i59" to i32**
  %"117396.i61" = load i32*, i32** %"11739.i60", align 4
  %"101666" = getelementptr inbounds i32, i32* %V6927.V3336.next, i32 %V6924.V3333.x
  %"10166" = bitcast i32* %"101666" to i32**
  %"101665" = load i32*, i32** %"10166", align 4
  %"117391.i56" = getelementptr inbounds i32, i32* %"101665", i32 5
  %"11739.i57" = bitcast i32* %"117391.i56" to i32**
  %"117396.i58" = load i32*, i32** %"11739.i57", align 4
  %"101697" = getelementptr inbounds i32, i32* %"117396.i", i32 %V6928.V3337.nref
  %"10169" = bitcast i32* %"101697" to i32**
  %"101696" = load i32*, i32** %"10169", align 4
  %"1311511.i" = load i32, i32* %"101696", align 4
  store i32 %"1311511.i", i32* inttoptr (i32 149 to i32*), align 4
  %"131203.i" = getelementptr inbounds i32, i32* %"101696", i32 1
  %"1312024.i" = load i32, i32* %"131203.i", align 4
  store i32 %"1312024.i", i32* inttoptr (i32 153 to i32*), align 4
  %"131255.i" = getelementptr inbounds i32, i32* %"101696", i32 2
  %"1312536.i" = load i32, i32* %"131255.i", align 4
  store i32 %"1312536.i", i32* inttoptr (i32 157 to i32*), align 4
  %"101728" = getelementptr inbounds i32, i32* %"117396.i67", i32 %V6928.V3337.nref
  %"10172" = bitcast i32* %"101728" to i32**
  %"101727" = load i32*, i32** %"10172", align 4
  %"129631.i42" = load float, float* inttoptr (i32 149 to float*), align 4
  %"12965.i43" = bitcast i32* %"101727" to float*
  %"129662.i44" = load float, float* %"12965.i43", align 4
  %V9441.V5860.557.i45 = fadd float %"129631.i42", %"129662.i44"
  store float %V9441.V5860.557.i45, float* inttoptr (i32 149 to float*), align 4
  %"129713.i46" = load float, float* inttoptr (i32 153 to float*), align 4
  %"129742.i47" = getelementptr inbounds i32, i32* %"101727", i32 1
  %"12974.i48" = bitcast i32* %"129742.i47" to float*
  %"129744.i49" = load float, float* %"12974.i48", align 4
  %V9448.V5854.563.i50 = fadd float %"129713.i46", %"129744.i49"
  store float %V9448.V5854.563.i50, float* inttoptr (i32 153 to float*), align 4
  %"129795.i51" = load float, float* inttoptr (i32 157 to float*), align 4
  %"129824.i52" = getelementptr inbounds i32, i32* %"101727", i32 2
  %"12982.i53" = bitcast i32* %"129824.i52" to float*
  %"129826.i54" = load float, float* %"12982.i53", align 4
  %V9455.V5848.569.i55 = fadd float %"129795.i51", %"129826.i54"
  store float %V9455.V5848.569.i55, float* inttoptr (i32 157 to float*), align 4
  %"101759" = getelementptr inbounds i32, i32* %"117396.i64", i32 %V6928.V3337.nref
  %"10175" = bitcast i32* %"101759" to i32**
  %"101758" = load i32*, i32** %"10175", align 4
  %"129631.i28" = load float, float* inttoptr (i32 149 to float*), align 4
  %"12965.i29" = bitcast i32* %"101758" to float*
  %"129662.i30" = load float, float* %"12965.i29", align 4
  %V9441.V5860.557.i31 = fadd float %"129631.i28", %"129662.i30"
  store float %V9441.V5860.557.i31, float* inttoptr (i32 149 to float*), align 4
  %"129713.i32" = load float, float* inttoptr (i32 153 to float*), align 4
  %"129742.i33" = getelementptr inbounds i32, i32* %"101758", i32 1
  %"12974.i34" = bitcast i32* %"129742.i33" to float*
  %"129744.i35" = load float, float* %"12974.i34", align 4
  %V9448.V5854.563.i36 = fadd float %"129713.i32", %"129744.i35"
  store float %V9448.V5854.563.i36, float* inttoptr (i32 153 to float*), align 4
  %"129795.i37" = load float, float* inttoptr (i32 157 to float*), align 4
  %"129824.i38" = getelementptr inbounds i32, i32* %"101758", i32 2
  %"12982.i39" = bitcast i32* %"129824.i38" to float*
  %"129826.i40" = load float, float* %"12982.i39", align 4
  %V9455.V5848.569.i41 = fadd float %"129795.i37", %"129826.i40"
  store float %V9455.V5848.569.i41, float* inttoptr (i32 157 to float*), align 4
  %"1017810" = getelementptr inbounds i32, i32* %"117396.i61", i32 %V6928.V3337.nref
  %"10178" = bitcast i32* %"1017810" to i32**
  %"101789" = load i32*, i32** %"10178", align 4
  %"129631.i14" = load float, float* inttoptr (i32 149 to float*), align 4
  %"12965.i15" = bitcast i32* %"101789" to float*
  %"129662.i16" = load float, float* %"12965.i15", align 4
  %V9441.V5860.557.i17 = fadd float %"129631.i14", %"129662.i16"
  store float %V9441.V5860.557.i17, float* inttoptr (i32 149 to float*), align 4
  %"129713.i18" = load float, float* inttoptr (i32 153 to float*), align 4
  %"129742.i19" = getelementptr inbounds i32, i32* %"101789", i32 1
  %"12974.i20" = bitcast i32* %"129742.i19" to float*
  %"129744.i21" = load float, float* %"12974.i20", align 4
  %V9448.V5854.563.i22 = fadd float %"129713.i18", %"129744.i21"
  store float %V9448.V5854.563.i22, float* inttoptr (i32 153 to float*), align 4
  %"129795.i23" = load float, float* inttoptr (i32 157 to float*), align 4
  %"129824.i24" = getelementptr inbounds i32, i32* %"101789", i32 2
  %"12982.i25" = bitcast i32* %"129824.i24" to float*
  %"129826.i26" = load float, float* %"12982.i25", align 4
  %V9455.V5848.569.i27 = fadd float %"129795.i23", %"129826.i26"
  store float %V9455.V5848.569.i27, float* inttoptr (i32 157 to float*), align 4
  %"1018111" = getelementptr inbounds i32, i32* %"117396.i58", i32 %V6928.V3337.nref
  %"10181" = bitcast i32* %"1018111" to i32**
  %"1018110" = load i32*, i32** %"10181", align 4
  %"129631.i" = load float, float* inttoptr (i32 149 to float*), align 4
  %"12965.i" = bitcast i32* %"1018110" to float*
  %"129662.i" = load float, float* %"12965.i", align 4
  %V9441.V5860.557.i = fadd float %"129631.i", %"129662.i"
  store float %V9441.V5860.557.i, float* inttoptr (i32 149 to float*), align 4
  %"129713.i" = load float, float* inttoptr (i32 153 to float*), align 4
  %"129742.i" = getelementptr inbounds i32, i32* %"1018110", i32 1
  %"12974.i" = bitcast i32* %"129742.i" to float*
  %"129744.i" = load float, float* %"12974.i", align 4
  %V9448.V5854.563.i = fadd float %"129713.i", %"129744.i"
  store float %V9448.V5854.563.i, float* inttoptr (i32 153 to float*), align 4
  %"129795.i" = load float, float* inttoptr (i32 157 to float*), align 4
  %"129824.i" = getelementptr inbounds i32, i32* %"1018110", i32 2
  %"12982.i" = bitcast i32* %"129824.i" to float*
  %"129826.i" = load float, float* %"12982.i", align 4
  %V9455.V5848.569.i = fadd float %"129795.i", %"129826.i"
  store float %V9455.V5848.569.i, float* inttoptr (i32 157 to float*), align 4
  %"1018411" = load i32*, i32** %"10160", align 4
  %"117681.i" = getelementptr inbounds i32, i32* %"1018411", i32 4
  %"11768.i" = bitcast i32* %"117681.i" to i32**
  %"117685.i" = load i32*, i32** %"11768.i", align 4
  %"1018713" = getelementptr inbounds i32, i32* %"117685.i", i32 %V6928.V3337.nref
  %"10187" = bitcast i32* %"1018713" to i32**
  %"1018712" = load i32*, i32** %"10187", align 4
  %"128881.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"12890.i" = bitcast i32* %"1018712" to float*
  %"128912.i" = load float, float* %"12890.i", align 4
  %"128943.i" = load float, float* inttoptr (i32 149 to float*), align 4
  %V9374.V5799.606.i = fmul float %"128912.i", %"128943.i"
  %V9375.V5797.608.i = fadd float %"128881.i", %V9374.V5799.606.i
  store float %V9375.V5797.608.i, float* inttoptr (i32 152 to float*), align 8
  %"128994.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129022.i" = getelementptr inbounds i32, i32* %"1018712", i32 1
  %"12902.i" = bitcast i32* %"129022.i" to float*
  %"129025.i" = load float, float* %"12902.i", align 4
  %"129056.i" = load float, float* inttoptr (i32 153 to float*), align 4
  %V9384.V5790.615.i = fmul float %"129025.i", %"129056.i"
  %V9385.V5788.617.i = fadd float %"128994.i", %V9384.V5790.615.i
  store float %V9385.V5788.617.i, float* inttoptr (i32 156 to float*), align 4
  %"129107.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"129135.i" = getelementptr inbounds i32, i32* %"1018712", i32 2
  %"12913.i" = bitcast i32* %"129135.i" to float*
  %"129138.i" = load float, float* %"12913.i", align 4
  %"129169.i" = load float, float* inttoptr (i32 157 to float*), align 4
  %V9394.V5781.624.i = fmul float %"129138.i", %"129169.i"
  %V9395.V5779.626.i = fadd float %"129107.i", %V9394.V5781.624.i
  store float %V9395.V5779.626.i, float* inttoptr (i32 160 to float*), align 32
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6184.V2593.p_received_ray_20percent(i32* nocapture readonly %V9017.V5426.pixel) #1 {
entry:
  %"117391" = getelementptr inbounds i32, i32* %V9017.V5426.pixel, i32 5
  %"11739" = bitcast i32* %"117391" to i32**
  %"117396" = load i32*, i32** %"11739", align 4
  ret i32* %"117396"
}

; Function Attrs: norecurse nounwind
define void @V6154.V2563.vecadd(i32* nocapture %V9434.V5843.dest, i32* nocapture readonly %V9435.V5844.v) #0 {
entry:
  %"12962" = bitcast i32* %V9434.V5843.dest to float*
  %"129631" = load float, float* %"12962", align 4
  %"12965" = bitcast i32* %V9435.V5844.v to float*
  %"129662" = load float, float* %"12965", align 4
  %V9441.V5860.557 = fadd float %"129631", %"129662"
  store float %V9441.V5860.557, float* %"12962", align 4
  %"129711" = getelementptr inbounds i32, i32* %V9434.V5843.dest, i32 1
  %"12971" = bitcast i32* %"129711" to float*
  %"129713" = load float, float* %"12971", align 4
  %"129742" = getelementptr inbounds i32, i32* %V9435.V5844.v, i32 1
  %"12974" = bitcast i32* %"129742" to float*
  %"129744" = load float, float* %"12974", align 4
  %V9448.V5854.563 = fadd float %"129713", %"129744"
  store float %V9448.V5854.563, float* %"12971", align 4
  %"129793" = getelementptr inbounds i32, i32* %V9434.V5843.dest, i32 2
  %"12979" = bitcast i32* %"129793" to float*
  %"129795" = load float, float* %"12979", align 4
  %"129824" = getelementptr inbounds i32, i32* %V9435.V5844.v, i32 2
  %"12982" = bitcast i32* %"129824" to float*
  %"129826" = load float, float* %"12982", align 4
  %V9455.V5848.569 = fadd float %"129795", %"129826"
  store float %V9455.V5848.569, float* %"12979", align 4
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6183.V2592.p_energy(i32* nocapture readonly %V9027.V5436.pixel) #1 {
entry:
  %"117681" = getelementptr inbounds i32, i32* %V9027.V5436.pixel, i32 4
  %"11768" = bitcast i32* %"117681" to i32**
  %"117685" = load i32*, i32** %"11768", align 4
  ret i32* %"117685"
}

; Function Attrs: norecurse nounwind
define void @V6157.V2566.vecaccumv(i32* nocapture %V9364.V5773.dest, i32* nocapture readonly %V9365.V5774.v, i32* nocapture readonly %V9366.V5775.w) #0 {
entry:
  %"12887" = bitcast i32* %V9364.V5773.dest to float*
  %"128881" = load float, float* %"12887", align 4
  %"12890" = bitcast i32* %V9365.V5774.v to float*
  %"128912" = load float, float* %"12890", align 4
  %"12893" = bitcast i32* %V9366.V5775.w to float*
  %"128943" = load float, float* %"12893", align 4
  %V9374.V5799.606 = fmul float %"128912", %"128943"
  %V9375.V5797.608 = fadd float %"128881", %V9374.V5799.606
  store float %V9375.V5797.608, float* %"12887", align 4
  %"128991" = getelementptr inbounds i32, i32* %V9364.V5773.dest, i32 1
  %"12899" = bitcast i32* %"128991" to float*
  %"128994" = load float, float* %"12899", align 4
  %"129022" = getelementptr inbounds i32, i32* %V9365.V5774.v, i32 1
  %"12902" = bitcast i32* %"129022" to float*
  %"129025" = load float, float* %"12902", align 4
  %"129053" = getelementptr inbounds i32, i32* %V9366.V5775.w, i32 1
  %"12905" = bitcast i32* %"129053" to float*
  %"129056" = load float, float* %"12905", align 4
  %V9384.V5790.615 = fmul float %"129025", %"129056"
  %V9385.V5788.617 = fadd float %"128994", %V9384.V5790.615
  store float %V9385.V5788.617, float* %"12899", align 4
  %"129104" = getelementptr inbounds i32, i32* %V9364.V5773.dest, i32 2
  %"12910" = bitcast i32* %"129104" to float*
  %"129107" = load float, float* %"12910", align 4
  %"129135" = getelementptr inbounds i32, i32* %V9365.V5774.v, i32 2
  %"12913" = bitcast i32* %"129135" to float*
  %"129138" = load float, float* %"12913", align 4
  %"129166" = getelementptr inbounds i32, i32* %V9366.V5775.w, i32 2
  %"12916" = bitcast i32* %"129166" to float*
  %"129169" = load float, float* %"12916", align 4
  %V9394.V5781.624 = fmul float %"129138", %"129169"
  %V9395.V5779.626 = fadd float %"129107", %V9394.V5781.624
  store float %V9395.V5779.626, float* %"12910", align 4
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6181.V2590.p_surface_ids(i32* nocapture readonly %V9047.V5456.pixel) #1 {
entry:
  %"118261" = getelementptr inbounds i32, i32* %V9047.V5456.pixel, i32 2
  %"11826" = bitcast i32* %"118261" to i32**
  %"118263" = load i32*, i32** %"11826", align 4
  ret i32* %"118263"
}

define void @V6253.V2662.calc_diffuse_using_1point(i32* nocapture readonly %V6956.V3365.pixel, i32 %V6957.V3366.nref) {
entry:
  %"117391.i" = getelementptr inbounds i32, i32* %V6956.V3365.pixel, i32 5
  %"11739.i" = bitcast i32* %"117391.i" to i32**
  %"117396.i" = load i32*, i32** %"11739.i", align 4
  %"116421.i" = getelementptr inbounds i32, i32* %V6956.V3365.pixel, i32 7
  %"11642.i" = bitcast i32* %"116421.i" to i32**
  %"116428.i" = load i32*, i32** %"11642.i", align 4
  %"118551.i" = getelementptr inbounds i32, i32* %V6956.V3365.pixel, i32 1
  %"11855.i" = bitcast i32* %"118551.i" to i32**
  %"118552.i" = load i32*, i32** %"11855.i", align 4
  %"117681.i" = getelementptr inbounds i32, i32* %V6956.V3365.pixel, i32 4
  %"11768.i" = bitcast i32* %"117681.i" to i32**
  %"117685.i" = load i32*, i32** %"11768.i", align 4
  %"101912" = getelementptr inbounds i32, i32* %"117396.i", i32 %V6957.V3366.nref
  %"10191" = bitcast i32* %"101912" to i32**
  %"101911" = load i32*, i32** %"10191", align 4
  %"1311511.i" = load i32, i32* %"101911", align 4
  store i32 %"1311511.i", i32* inttoptr (i32 149 to i32*), align 4
  %"131203.i" = getelementptr inbounds i32, i32* %"101911", i32 1
  %"1312024.i" = load i32, i32* %"131203.i", align 4
  store i32 %"1312024.i", i32* inttoptr (i32 153 to i32*), align 4
  %"131255.i" = getelementptr inbounds i32, i32* %"101911", i32 2
  %"1312536.i" = load i32, i32* %"131255.i", align 4
  store i32 %"1312536.i", i32* inttoptr (i32 157 to i32*), align 4
  %"117061.i" = getelementptr inbounds i32, i32* %V6956.V3365.pixel, i32 6
  %"11706.i" = bitcast i32* %"117061.i" to i32**
  %"117067.i" = load i32*, i32** %"11706.i", align 4
  %"117139.i" = load i32, i32* %"117067.i", align 4
  %"101943" = getelementptr inbounds i32, i32* %"116428.i", i32 %V6957.V3366.nref
  %"10194" = bitcast i32* %"101943" to i32**
  %"101942" = load i32*, i32** %"10194", align 4
  %"101974" = getelementptr inbounds i32, i32* %"118552.i", i32 %V6957.V3366.nref
  %"10197" = bitcast i32* %"101974" to i32**
  %"101973" = load i32*, i32** %"10197", align 4
  tail call void @V6252.V2661.trace_diffuse_ray_80percent(i32 %"117139.i", i32* %"101942", i32* %"101973")
  %"102005" = getelementptr inbounds i32, i32* %"117685.i", i32 %V6957.V3366.nref
  %"10200" = bitcast i32* %"102005" to i32**
  %"102004" = load i32*, i32** %"10200", align 4
  %"128881.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"12890.i" = bitcast i32* %"102004" to float*
  %"128912.i" = load float, float* %"12890.i", align 4
  %"128943.i" = load float, float* inttoptr (i32 149 to float*), align 4
  %V9374.V5799.606.i = fmul float %"128912.i", %"128943.i"
  %V9375.V5797.608.i = fadd float %"128881.i", %V9374.V5799.606.i
  store float %V9375.V5797.608.i, float* inttoptr (i32 152 to float*), align 8
  %"128994.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129022.i" = getelementptr inbounds i32, i32* %"102004", i32 1
  %"12902.i" = bitcast i32* %"129022.i" to float*
  %"129025.i" = load float, float* %"12902.i", align 4
  %"129056.i" = load float, float* inttoptr (i32 153 to float*), align 4
  %V9384.V5790.615.i = fmul float %"129025.i", %"129056.i"
  %V9385.V5788.617.i = fadd float %"128994.i", %V9384.V5790.615.i
  store float %V9385.V5788.617.i, float* inttoptr (i32 156 to float*), align 4
  %"129107.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"129135.i" = getelementptr inbounds i32, i32* %"102004", i32 2
  %"12913.i" = bitcast i32* %"129135.i" to float*
  %"129138.i" = load float, float* %"12913.i", align 4
  %"129169.i" = load float, float* inttoptr (i32 157 to float*), align 4
  %V9394.V5781.624.i = fmul float %"129138.i", %"129169.i"
  %V9395.V5779.626.i = fadd float %"129107.i", %V9394.V5781.624.i
  store float %V9395.V5779.626.i, float* inttoptr (i32 160 to float*), align 32
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6187.V2596.p_nvectors(i32* nocapture readonly %V8984.V5393.pixel) #1 {
entry:
  %"116421" = getelementptr inbounds i32, i32* %V8984.V5393.pixel, i32 7
  %"11642" = bitcast i32* %"116421" to i32**
  %"116428" = load i32*, i32** %"11642", align 4
  ret i32* %"116428"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6180.V2589.p_intersection_points(i32* nocapture readonly %V9057.V5466.pixel) #1 {
entry:
  %"118551" = getelementptr inbounds i32, i32* %V9057.V5466.pixel, i32 1
  %"11855" = bitcast i32* %"118551" to i32**
  %"118552" = load i32*, i32** %"11855", align 4
  ret i32* %"118552"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6185.V2594.p_group_id(i32* nocapture readonly %V9006.V5415.pixel) #1 {
entry:
  %"117061" = getelementptr inbounds i32, i32* %V9006.V5415.pixel, i32 6
  %"11706" = bitcast i32* %"117061" to i32**
  %"117067" = load i32*, i32** %"11706", align 4
  %"117139" = load i32, i32* %"117067", align 4
  ret i32 %"117139"
}

define void @V6252.V2661.trace_diffuse_ray_80percent(i32 %V6969.V3378.group_id, i32* nocapture readonly %V6970.V3379.nvector, i32* nocapture readonly %V6971.V3380.org) {
entry:
  %cond = icmp eq i32 %V6969.V3378.group_id, 0
  br i1 %cond, label %entry.else8_crit_edge, label %else2

entry.else8_crit_edge:                            ; preds = %entry
  %.pre = getelementptr inbounds i32, i32* %V6971.V3380.org, i32 1
  %.pre192 = getelementptr inbounds i32, i32* %V6971.V3380.org, i32 2
  %.pre193 = bitcast i32* %V6970.V3379.nvector to float*
  %.pre194 = getelementptr inbounds i32, i32* %V6970.V3379.nvector, i32 1
  %.pre195 = bitcast i32* %.pre194 to float*
  %.pre196 = getelementptr inbounds i32, i32* %V6970.V3379.nvector, i32 2
  %.pre197 = bitcast i32* %.pre196 to float*
  br label %else8

else2:                                            ; preds = %entry
  %"10207" = load i32*, i32** inttoptr (i32 180 to i32**), align 4
  %"1311511.i.i.i" = load i32, i32* %V6971.V3380.org, align 4
  store i32 %"1311511.i.i.i", i32* inttoptr (i32 163 to i32*), align 4
  %"131203.i.i.i" = getelementptr inbounds i32, i32* %V6971.V3380.org, i32 1
  %"1312024.i.i.i" = load i32, i32* %"131203.i.i.i", align 4
  store i32 %"1312024.i.i.i", i32* inttoptr (i32 167 to i32*), align 4
  %"131255.i.i.i" = getelementptr inbounds i32, i32* %V6971.V3380.org, i32 2
  %"1312536.i.i.i" = load i32, i32* %"131255.i.i.i", align 4
  store i32 %"1312536.i.i.i", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i = add i32 %"10798.i.i", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V6971.V3380.org, i32 %V7839.V4245.1480.i.i) #2
  %"13025.i.i.i" = bitcast i32* %V6970.V3379.nvector to float*
  %"130322.i.i.i" = getelementptr inbounds i32, i32* %V6970.V3379.nvector, i32 1
  %"13032.i.i.i" = bitcast i32* %"130322.i.i.i" to float*
  %"130384.i.i.i" = getelementptr inbounds i32, i32* %V6970.V3379.nvector, i32 2
  %"13038.i.i.i" = bitcast i32* %"130384.i.i.i" to float*
  br label %then.i.i

then.i.i:                                         ; preds = %ifcont.i.i, %else2
  %V7014.V3423.index.tr4.i.i = phi i32 [ 118, %else2 ], [ %V7023.V3427.2067.i.i, %ifcont.i.i ]
  %"102422.i.i" = getelementptr inbounds i32, i32* %"10207", i32 %V7014.V3423.index.tr4.i.i
  %"10242.i.i" = bitcast i32* %"102422.i.i" to i32**
  %"102421.i.i" = load i32*, i32** %"10242.i.i", align 4
  %"11606.i.i.i" = bitcast i32* %"102421.i.i" to i32**
  %"116071.i.i.i" = load i32*, i32** %"11606.i.i.i", align 4
  %"13022.i.i.i" = bitcast i32* %"116071.i.i.i" to float*
  %"130231.i.i.i" = load float, float* %"13022.i.i.i", align 4
  %"130262.i.i.i" = load float, float* %"13025.i.i.i", align 4
  %V9502.V5913.513.i.i.i = fmul float %"130231.i.i.i", %"130262.i.i.i"
  %"130291.i.i.i" = getelementptr inbounds i32, i32* %"116071.i.i.i", i32 1
  %"13029.i.i.i" = bitcast i32* %"130291.i.i.i" to float*
  %"130293.i.i.i" = load float, float* %"13029.i.i.i", align 4
  %"130324.i.i.i" = load float, float* %"13032.i.i.i", align 4
  %V9507.V5914.514.i.i.i = fmul float %"130293.i.i.i", %"130324.i.i.i"
  %V9508.V5907.519.i.i.i = fadd float %V9502.V5913.513.i.i.i, %V9507.V5914.514.i.i.i
  %"130353.i.i.i" = getelementptr inbounds i32, i32* %"116071.i.i.i", i32 2
  %"13035.i.i.i" = bitcast i32* %"130353.i.i.i" to float*
  %"130355.i.i.i" = load float, float* %"13035.i.i.i", align 4
  %"130386.i.i.i" = load float, float* %"13038.i.i.i", align 4
  %V9513.V5908.520.i.i.i = fmul float %"130355.i.i.i", %"130386.i.i.i"
  %"13040.i.i.i" = fadd float %V9508.V5907.519.i.i.i, %V9513.V5908.520.i.i.i
  %0 = fcmp olt float %"13040.i.i.i", 0.000000e+00
  br i1 %0, label %else.i.i, label %then2.i.i

then2.i.i:                                        ; preds = %then.i.i
  %V7031.V3437.2063.i.i = fdiv float %"13040.i.i.i", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i", float %V7031.V3437.2063.i.i)
  br label %ifcont.i.i

else.i.i:                                         ; preds = %then.i.i
  %V7025.V3434.2057.i.i = or i32 %V7014.V3423.index.tr4.i.i, 1
  %"102493.i.i" = getelementptr inbounds i32, i32* %"10207", i32 %V7025.V3434.2057.i.i
  %"10249.i.i" = bitcast i32* %"102493.i.i" to i32**
  %"102494.i.i" = load i32*, i32** %"10249.i.i", align 4
  %V7028.V3432.2060.i.i = fdiv float %"13040.i.i.i", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i", float %V7028.V3432.2060.i.i)
  br label %ifcont.i.i

ifcont.i.i:                                       ; preds = %else.i.i, %then2.i.i
  %V7023.V3427.2067.i.i = add nsw i32 %V7014.V3423.index.tr4.i.i, -2
  %1 = icmp sgt i32 %V7023.V3427.2067.i.i, -1
  br i1 %1, label %then.i.i, label %V6251.V2660.trace_diffuse_rays.exit

V6251.V2660.trace_diffuse_rays.exit:              ; preds = %ifcont.i.i
  %cond5 = icmp eq i32 %V6969.V3378.group_id, 1
  br i1 %cond5, label %else14, label %else8

else8:                                            ; preds = %entry.else8_crit_edge, %V6251.V2660.trace_diffuse_rays.exit
  %"13038.i.i.i19.pre-phi" = phi float* [ %.pre197, %entry.else8_crit_edge ], [ %"13038.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"13032.i.i.i17.pre-phi" = phi float* [ %.pre195, %entry.else8_crit_edge ], [ %"13032.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"13025.i.i.i15.pre-phi" = phi float* [ %.pre193, %entry.else8_crit_edge ], [ %"13025.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"131255.i.i.i11.pre-phi" = phi i32* [ %.pre192, %entry.else8_crit_edge ], [ %"131255.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"131203.i.i.i9.pre-phi" = phi i32* [ %.pre, %entry.else8_crit_edge ], [ %"131203.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"10214" = load i32*, i32** inttoptr (i32 184 to i32**), align 8
  %"1311511.i.i.i8" = load i32, i32* %V6971.V3380.org, align 4
  store i32 %"1311511.i.i.i8", i32* inttoptr (i32 163 to i32*), align 4
  %"1312024.i.i.i10" = load i32, i32* %"131203.i.i.i9.pre-phi", align 4
  store i32 %"1312024.i.i.i10", i32* inttoptr (i32 167 to i32*), align 4
  %"1312536.i.i.i12" = load i32, i32* %"131255.i.i.i11.pre-phi", align 4
  store i32 %"1312536.i.i.i12", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i13" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i14 = add i32 %"10798.i.i13", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V6971.V3380.org, i32 %V7839.V4245.1480.i.i14) #2
  br label %then.i.i42

then.i.i42:                                       ; preds = %ifcont.i.i52, %else8
  %V7014.V3423.index.tr4.i.i20 = phi i32 [ 118, %else8 ], [ %V7023.V3427.2067.i.i51, %ifcont.i.i52 ]
  %"102422.i.i21" = getelementptr inbounds i32, i32* %"10214", i32 %V7014.V3423.index.tr4.i.i20
  %"10242.i.i22" = bitcast i32* %"102422.i.i21" to i32**
  %"102421.i.i23" = load i32*, i32** %"10242.i.i22", align 4
  %"11606.i.i.i24" = bitcast i32* %"102421.i.i23" to i32**
  %"116071.i.i.i25" = load i32*, i32** %"11606.i.i.i24", align 4
  %"13022.i.i.i26" = bitcast i32* %"116071.i.i.i25" to float*
  %"130231.i.i.i27" = load float, float* %"13022.i.i.i26", align 4
  %"130262.i.i.i28" = load float, float* %"13025.i.i.i15.pre-phi", align 4
  %V9502.V5913.513.i.i.i29 = fmul float %"130231.i.i.i27", %"130262.i.i.i28"
  %"130291.i.i.i30" = getelementptr inbounds i32, i32* %"116071.i.i.i25", i32 1
  %"13029.i.i.i31" = bitcast i32* %"130291.i.i.i30" to float*
  %"130293.i.i.i32" = load float, float* %"13029.i.i.i31", align 4
  %"130324.i.i.i33" = load float, float* %"13032.i.i.i17.pre-phi", align 4
  %V9507.V5914.514.i.i.i34 = fmul float %"130293.i.i.i32", %"130324.i.i.i33"
  %V9508.V5907.519.i.i.i35 = fadd float %V9502.V5913.513.i.i.i29, %V9507.V5914.514.i.i.i34
  %"130353.i.i.i36" = getelementptr inbounds i32, i32* %"116071.i.i.i25", i32 2
  %"13035.i.i.i37" = bitcast i32* %"130353.i.i.i36" to float*
  %"130355.i.i.i38" = load float, float* %"13035.i.i.i37", align 4
  %"130386.i.i.i39" = load float, float* %"13038.i.i.i19.pre-phi", align 4
  %V9513.V5908.520.i.i.i40 = fmul float %"130355.i.i.i38", %"130386.i.i.i39"
  %"13040.i.i.i41" = fadd float %V9508.V5907.519.i.i.i35, %V9513.V5908.520.i.i.i40
  %2 = fcmp olt float %"13040.i.i.i41", 0.000000e+00
  br i1 %2, label %else.i.i50, label %then2.i.i44

then2.i.i44:                                      ; preds = %then.i.i42
  %V7031.V3437.2063.i.i43 = fdiv float %"13040.i.i.i41", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i23", float %V7031.V3437.2063.i.i43)
  br label %ifcont.i.i52

else.i.i50:                                       ; preds = %then.i.i42
  %V7025.V3434.2057.i.i45 = or i32 %V7014.V3423.index.tr4.i.i20, 1
  %"102493.i.i46" = getelementptr inbounds i32, i32* %"10214", i32 %V7025.V3434.2057.i.i45
  %"10249.i.i47" = bitcast i32* %"102493.i.i46" to i32**
  %"102494.i.i48" = load i32*, i32** %"10249.i.i47", align 4
  %V7028.V3432.2060.i.i49 = fdiv float %"13040.i.i.i41", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i48", float %V7028.V3432.2060.i.i49)
  br label %ifcont.i.i52

ifcont.i.i52:                                     ; preds = %else.i.i50, %then2.i.i44
  %V7023.V3427.2067.i.i51 = add nsw i32 %V7014.V3423.index.tr4.i.i20, -2
  %3 = icmp sgt i32 %V7023.V3427.2067.i.i51, -1
  br i1 %3, label %then.i.i42, label %V6251.V2660.trace_diffuse_rays.exit53

V6251.V2660.trace_diffuse_rays.exit53:            ; preds = %ifcont.i.i52
  %cond6 = icmp eq i32 %V6969.V3378.group_id, 2
  br i1 %cond6, label %else20, label %else14

else14:                                           ; preds = %V6251.V2660.trace_diffuse_rays.exit53, %V6251.V2660.trace_diffuse_rays.exit
  %"13038.i.i.i65.pre-phi" = phi float* [ %"13038.i.i.i19.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ], [ %"13038.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"13032.i.i.i63.pre-phi" = phi float* [ %"13032.i.i.i17.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ], [ %"13032.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"13025.i.i.i61.pre-phi" = phi float* [ %"13025.i.i.i15.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ], [ %"13025.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"131255.i.i.i57.pre-phi" = phi i32* [ %"131255.i.i.i11.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ], [ %"131255.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"131203.i.i.i55.pre-phi" = phi i32* [ %"131203.i.i.i9.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ], [ %"131203.i.i.i", %V6251.V2660.trace_diffuse_rays.exit ]
  %"10221" = load i32*, i32** inttoptr (i32 188 to i32**), align 4
  %"1311511.i.i.i54" = load i32, i32* %V6971.V3380.org, align 4
  store i32 %"1311511.i.i.i54", i32* inttoptr (i32 163 to i32*), align 4
  %"1312024.i.i.i56" = load i32, i32* %"131203.i.i.i55.pre-phi", align 4
  store i32 %"1312024.i.i.i56", i32* inttoptr (i32 167 to i32*), align 4
  %"1312536.i.i.i58" = load i32, i32* %"131255.i.i.i57.pre-phi", align 4
  store i32 %"1312536.i.i.i58", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i59" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i60 = add i32 %"10798.i.i59", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V6971.V3380.org, i32 %V7839.V4245.1480.i.i60) #2
  br label %then.i.i88

then.i.i88:                                       ; preds = %ifcont.i.i98, %else14
  %V7014.V3423.index.tr4.i.i66 = phi i32 [ 118, %else14 ], [ %V7023.V3427.2067.i.i97, %ifcont.i.i98 ]
  %"102422.i.i67" = getelementptr inbounds i32, i32* %"10221", i32 %V7014.V3423.index.tr4.i.i66
  %"10242.i.i68" = bitcast i32* %"102422.i.i67" to i32**
  %"102421.i.i69" = load i32*, i32** %"10242.i.i68", align 4
  %"11606.i.i.i70" = bitcast i32* %"102421.i.i69" to i32**
  %"116071.i.i.i71" = load i32*, i32** %"11606.i.i.i70", align 4
  %"13022.i.i.i72" = bitcast i32* %"116071.i.i.i71" to float*
  %"130231.i.i.i73" = load float, float* %"13022.i.i.i72", align 4
  %"130262.i.i.i74" = load float, float* %"13025.i.i.i61.pre-phi", align 4
  %V9502.V5913.513.i.i.i75 = fmul float %"130231.i.i.i73", %"130262.i.i.i74"
  %"130291.i.i.i76" = getelementptr inbounds i32, i32* %"116071.i.i.i71", i32 1
  %"13029.i.i.i77" = bitcast i32* %"130291.i.i.i76" to float*
  %"130293.i.i.i78" = load float, float* %"13029.i.i.i77", align 4
  %"130324.i.i.i79" = load float, float* %"13032.i.i.i63.pre-phi", align 4
  %V9507.V5914.514.i.i.i80 = fmul float %"130293.i.i.i78", %"130324.i.i.i79"
  %V9508.V5907.519.i.i.i81 = fadd float %V9502.V5913.513.i.i.i75, %V9507.V5914.514.i.i.i80
  %"130353.i.i.i82" = getelementptr inbounds i32, i32* %"116071.i.i.i71", i32 2
  %"13035.i.i.i83" = bitcast i32* %"130353.i.i.i82" to float*
  %"130355.i.i.i84" = load float, float* %"13035.i.i.i83", align 4
  %"130386.i.i.i85" = load float, float* %"13038.i.i.i65.pre-phi", align 4
  %V9513.V5908.520.i.i.i86 = fmul float %"130355.i.i.i84", %"130386.i.i.i85"
  %"13040.i.i.i87" = fadd float %V9508.V5907.519.i.i.i81, %V9513.V5908.520.i.i.i86
  %4 = fcmp olt float %"13040.i.i.i87", 0.000000e+00
  br i1 %4, label %else.i.i96, label %then2.i.i90

then2.i.i90:                                      ; preds = %then.i.i88
  %V7031.V3437.2063.i.i89 = fdiv float %"13040.i.i.i87", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i69", float %V7031.V3437.2063.i.i89)
  br label %ifcont.i.i98

else.i.i96:                                       ; preds = %then.i.i88
  %V7025.V3434.2057.i.i91 = or i32 %V7014.V3423.index.tr4.i.i66, 1
  %"102493.i.i92" = getelementptr inbounds i32, i32* %"10221", i32 %V7025.V3434.2057.i.i91
  %"10249.i.i93" = bitcast i32* %"102493.i.i92" to i32**
  %"102494.i.i94" = load i32*, i32** %"10249.i.i93", align 4
  %V7028.V3432.2060.i.i95 = fdiv float %"13040.i.i.i87", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i94", float %V7028.V3432.2060.i.i95)
  br label %ifcont.i.i98

ifcont.i.i98:                                     ; preds = %else.i.i96, %then2.i.i90
  %V7023.V3427.2067.i.i97 = add nsw i32 %V7014.V3423.index.tr4.i.i66, -2
  %5 = icmp sgt i32 %V7023.V3427.2067.i.i97, -1
  br i1 %5, label %then.i.i88, label %V6251.V2660.trace_diffuse_rays.exit99

V6251.V2660.trace_diffuse_rays.exit99:            ; preds = %ifcont.i.i98
  %cond7 = icmp eq i32 %V6969.V3378.group_id, 3
  br i1 %cond7, label %else26, label %else20

else20:                                           ; preds = %V6251.V2660.trace_diffuse_rays.exit99, %V6251.V2660.trace_diffuse_rays.exit53
  %"13038.i.i.i111.pre-phi" = phi float* [ %"13038.i.i.i65.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13038.i.i.i19.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ]
  %"13032.i.i.i109.pre-phi" = phi float* [ %"13032.i.i.i63.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13032.i.i.i17.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ]
  %"13025.i.i.i107.pre-phi" = phi float* [ %"13025.i.i.i61.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13025.i.i.i15.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ]
  %"131255.i.i.i103.pre-phi" = phi i32* [ %"131255.i.i.i57.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"131255.i.i.i11.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ]
  %"131203.i.i.i101.pre-phi" = phi i32* [ %"131203.i.i.i55.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"131203.i.i.i9.pre-phi", %V6251.V2660.trace_diffuse_rays.exit53 ]
  %"10228" = load i32*, i32** inttoptr (i32 192 to i32**), align 64
  %"1311511.i.i.i100" = load i32, i32* %V6971.V3380.org, align 4
  store i32 %"1311511.i.i.i100", i32* inttoptr (i32 163 to i32*), align 4
  %"1312024.i.i.i102" = load i32, i32* %"131203.i.i.i101.pre-phi", align 4
  store i32 %"1312024.i.i.i102", i32* inttoptr (i32 167 to i32*), align 4
  %"1312536.i.i.i104" = load i32, i32* %"131255.i.i.i103.pre-phi", align 4
  store i32 %"1312536.i.i.i104", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i105" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i106 = add i32 %"10798.i.i105", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V6971.V3380.org, i32 %V7839.V4245.1480.i.i106) #2
  br label %then.i.i134

then.i.i134:                                      ; preds = %ifcont.i.i144, %else20
  %V7014.V3423.index.tr4.i.i112 = phi i32 [ 118, %else20 ], [ %V7023.V3427.2067.i.i143, %ifcont.i.i144 ]
  %"102422.i.i113" = getelementptr inbounds i32, i32* %"10228", i32 %V7014.V3423.index.tr4.i.i112
  %"10242.i.i114" = bitcast i32* %"102422.i.i113" to i32**
  %"102421.i.i115" = load i32*, i32** %"10242.i.i114", align 4
  %"11606.i.i.i116" = bitcast i32* %"102421.i.i115" to i32**
  %"116071.i.i.i117" = load i32*, i32** %"11606.i.i.i116", align 4
  %"13022.i.i.i118" = bitcast i32* %"116071.i.i.i117" to float*
  %"130231.i.i.i119" = load float, float* %"13022.i.i.i118", align 4
  %"130262.i.i.i120" = load float, float* %"13025.i.i.i107.pre-phi", align 4
  %V9502.V5913.513.i.i.i121 = fmul float %"130231.i.i.i119", %"130262.i.i.i120"
  %"130291.i.i.i122" = getelementptr inbounds i32, i32* %"116071.i.i.i117", i32 1
  %"13029.i.i.i123" = bitcast i32* %"130291.i.i.i122" to float*
  %"130293.i.i.i124" = load float, float* %"13029.i.i.i123", align 4
  %"130324.i.i.i125" = load float, float* %"13032.i.i.i109.pre-phi", align 4
  %V9507.V5914.514.i.i.i126 = fmul float %"130293.i.i.i124", %"130324.i.i.i125"
  %V9508.V5907.519.i.i.i127 = fadd float %V9502.V5913.513.i.i.i121, %V9507.V5914.514.i.i.i126
  %"130353.i.i.i128" = getelementptr inbounds i32, i32* %"116071.i.i.i117", i32 2
  %"13035.i.i.i129" = bitcast i32* %"130353.i.i.i128" to float*
  %"130355.i.i.i130" = load float, float* %"13035.i.i.i129", align 4
  %"130386.i.i.i131" = load float, float* %"13038.i.i.i111.pre-phi", align 4
  %V9513.V5908.520.i.i.i132 = fmul float %"130355.i.i.i130", %"130386.i.i.i131"
  %"13040.i.i.i133" = fadd float %V9508.V5907.519.i.i.i127, %V9513.V5908.520.i.i.i132
  %6 = fcmp olt float %"13040.i.i.i133", 0.000000e+00
  br i1 %6, label %else.i.i142, label %then2.i.i136

then2.i.i136:                                     ; preds = %then.i.i134
  %V7031.V3437.2063.i.i135 = fdiv float %"13040.i.i.i133", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i115", float %V7031.V3437.2063.i.i135)
  br label %ifcont.i.i144

else.i.i142:                                      ; preds = %then.i.i134
  %V7025.V3434.2057.i.i137 = or i32 %V7014.V3423.index.tr4.i.i112, 1
  %"102493.i.i138" = getelementptr inbounds i32, i32* %"10228", i32 %V7025.V3434.2057.i.i137
  %"10249.i.i139" = bitcast i32* %"102493.i.i138" to i32**
  %"102494.i.i140" = load i32*, i32** %"10249.i.i139", align 4
  %V7028.V3432.2060.i.i141 = fdiv float %"13040.i.i.i133", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i140", float %V7028.V3432.2060.i.i141)
  br label %ifcont.i.i144

ifcont.i.i144:                                    ; preds = %else.i.i142, %then2.i.i136
  %V7023.V3427.2067.i.i143 = add nsw i32 %V7014.V3423.index.tr4.i.i112, -2
  %7 = icmp sgt i32 %V7023.V3427.2067.i.i143, -1
  br i1 %7, label %then.i.i134, label %V6251.V2660.trace_diffuse_rays.exit145

V6251.V2660.trace_diffuse_rays.exit145:           ; preds = %ifcont.i.i144
  %V6994.V3385.2097 = icmp eq i32 %V6969.V3378.group_id, 4
  br i1 %V6994.V3385.2097, label %ifcont27, label %else26

else26:                                           ; preds = %V6251.V2660.trace_diffuse_rays.exit99, %V6251.V2660.trace_diffuse_rays.exit145
  %"13038.i.i.i157.pre-phi" = phi float* [ %"13038.i.i.i65.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13038.i.i.i111.pre-phi", %V6251.V2660.trace_diffuse_rays.exit145 ]
  %"13032.i.i.i155.pre-phi" = phi float* [ %"13032.i.i.i63.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13032.i.i.i109.pre-phi", %V6251.V2660.trace_diffuse_rays.exit145 ]
  %"13025.i.i.i153.pre-phi" = phi float* [ %"13025.i.i.i61.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"13025.i.i.i107.pre-phi", %V6251.V2660.trace_diffuse_rays.exit145 ]
  %"131255.i.i.i149.pre-phi" = phi i32* [ %"131255.i.i.i57.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"131255.i.i.i103.pre-phi", %V6251.V2660.trace_diffuse_rays.exit145 ]
  %"131203.i.i.i147.pre-phi" = phi i32* [ %"131203.i.i.i55.pre-phi", %V6251.V2660.trace_diffuse_rays.exit99 ], [ %"131203.i.i.i101.pre-phi", %V6251.V2660.trace_diffuse_rays.exit145 ]
  %"10236" = load i32*, i32** inttoptr (i32 196 to i32**), align 4
  %"1311511.i.i.i146" = load i32, i32* %V6971.V3380.org, align 4
  store i32 %"1311511.i.i.i146", i32* inttoptr (i32 163 to i32*), align 4
  %"1312024.i.i.i148" = load i32, i32* %"131203.i.i.i147.pre-phi", align 4
  store i32 %"1312024.i.i.i148", i32* inttoptr (i32 167 to i32*), align 4
  %"1312536.i.i.i150" = load i32, i32* %"131255.i.i.i149.pre-phi", align 4
  store i32 %"1312536.i.i.i150", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i151" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i152 = add i32 %"10798.i.i151", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V6971.V3380.org, i32 %V7839.V4245.1480.i.i152) #2
  br label %then.i.i180

then.i.i180:                                      ; preds = %ifcont.i.i190, %else26
  %V7014.V3423.index.tr4.i.i158 = phi i32 [ 118, %else26 ], [ %V7023.V3427.2067.i.i189, %ifcont.i.i190 ]
  %"102422.i.i159" = getelementptr inbounds i32, i32* %"10236", i32 %V7014.V3423.index.tr4.i.i158
  %"10242.i.i160" = bitcast i32* %"102422.i.i159" to i32**
  %"102421.i.i161" = load i32*, i32** %"10242.i.i160", align 4
  %"11606.i.i.i162" = bitcast i32* %"102421.i.i161" to i32**
  %"116071.i.i.i163" = load i32*, i32** %"11606.i.i.i162", align 4
  %"13022.i.i.i164" = bitcast i32* %"116071.i.i.i163" to float*
  %"130231.i.i.i165" = load float, float* %"13022.i.i.i164", align 4
  %"130262.i.i.i166" = load float, float* %"13025.i.i.i153.pre-phi", align 4
  %V9502.V5913.513.i.i.i167 = fmul float %"130231.i.i.i165", %"130262.i.i.i166"
  %"130291.i.i.i168" = getelementptr inbounds i32, i32* %"116071.i.i.i163", i32 1
  %"13029.i.i.i169" = bitcast i32* %"130291.i.i.i168" to float*
  %"130293.i.i.i170" = load float, float* %"13029.i.i.i169", align 4
  %"130324.i.i.i171" = load float, float* %"13032.i.i.i155.pre-phi", align 4
  %V9507.V5914.514.i.i.i172 = fmul float %"130293.i.i.i170", %"130324.i.i.i171"
  %V9508.V5907.519.i.i.i173 = fadd float %V9502.V5913.513.i.i.i167, %V9507.V5914.514.i.i.i172
  %"130353.i.i.i174" = getelementptr inbounds i32, i32* %"116071.i.i.i163", i32 2
  %"13035.i.i.i175" = bitcast i32* %"130353.i.i.i174" to float*
  %"130355.i.i.i176" = load float, float* %"13035.i.i.i175", align 4
  %"130386.i.i.i177" = load float, float* %"13038.i.i.i157.pre-phi", align 4
  %V9513.V5908.520.i.i.i178 = fmul float %"130355.i.i.i176", %"130386.i.i.i177"
  %"13040.i.i.i179" = fadd float %V9508.V5907.519.i.i.i173, %V9513.V5908.520.i.i.i178
  %8 = fcmp olt float %"13040.i.i.i179", 0.000000e+00
  br i1 %8, label %else.i.i188, label %then2.i.i182

then2.i.i182:                                     ; preds = %then.i.i180
  %V7031.V3437.2063.i.i181 = fdiv float %"13040.i.i.i179", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i161", float %V7031.V3437.2063.i.i181)
  br label %ifcont.i.i190

else.i.i188:                                      ; preds = %then.i.i180
  %V7025.V3434.2057.i.i183 = or i32 %V7014.V3423.index.tr4.i.i158, 1
  %"102493.i.i184" = getelementptr inbounds i32, i32* %"10236", i32 %V7025.V3434.2057.i.i183
  %"10249.i.i185" = bitcast i32* %"102493.i.i184" to i32**
  %"102494.i.i186" = load i32*, i32** %"10249.i.i185", align 4
  %V7028.V3432.2060.i.i187 = fdiv float %"13040.i.i.i179", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i186", float %V7028.V3432.2060.i.i187)
  br label %ifcont.i.i190

ifcont.i.i190:                                    ; preds = %else.i.i188, %then2.i.i182
  %V7023.V3427.2067.i.i189 = add nsw i32 %V7014.V3423.index.tr4.i.i158, -2
  %9 = icmp sgt i32 %V7023.V3427.2067.i.i189, -1
  br i1 %9, label %then.i.i180, label %ifcont27.loopexit

ifcont27.loopexit:                                ; preds = %ifcont.i.i190
  br label %ifcont27

ifcont27:                                         ; preds = %ifcont27.loopexit, %V6251.V2660.trace_diffuse_rays.exit145
  ret void
}

define void @V6251.V2660.trace_diffuse_rays(i32* nocapture readonly %V7006.V3415.dirvec_group, i32* nocapture readonly %V7007.V3416.nvector, i32* nocapture readonly %V7008.V3417.org) {
entry:
  %"1311511.i.i" = load i32, i32* %V7008.V3417.org, align 4
  store i32 %"1311511.i.i", i32* inttoptr (i32 163 to i32*), align 4
  %"131203.i.i" = getelementptr inbounds i32, i32* %V7008.V3417.org, i32 1
  %"1312024.i.i" = load i32, i32* %"131203.i.i", align 4
  store i32 %"1312024.i.i", i32* inttoptr (i32 167 to i32*), align 4
  %"131255.i.i" = getelementptr inbounds i32, i32* %V7008.V3417.org, i32 2
  %"1312536.i.i" = load i32, i32* %"131255.i.i", align 4
  store i32 %"1312536.i.i", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i = add i32 %"10798.i", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V7008.V3417.org, i32 %V7839.V4245.1480.i) #2
  %"13025.i.i" = bitcast i32* %V7007.V3416.nvector to float*
  %"130322.i.i" = getelementptr inbounds i32, i32* %V7007.V3416.nvector, i32 1
  %"13032.i.i" = bitcast i32* %"130322.i.i" to float*
  %"130384.i.i" = getelementptr inbounds i32, i32* %V7007.V3416.nvector, i32 2
  %"13038.i.i" = bitcast i32* %"130384.i.i" to float*
  br label %then.i

then.i:                                           ; preds = %ifcont.i, %entry
  %V7014.V3423.index.tr4.i = phi i32 [ 118, %entry ], [ %V7023.V3427.2067.i, %ifcont.i ]
  %"102422.i" = getelementptr inbounds i32, i32* %V7006.V3415.dirvec_group, i32 %V7014.V3423.index.tr4.i
  %"10242.i" = bitcast i32* %"102422.i" to i32**
  %"102421.i" = load i32*, i32** %"10242.i", align 4
  %"11606.i.i" = bitcast i32* %"102421.i" to i32**
  %"116071.i.i" = load i32*, i32** %"11606.i.i", align 4
  %"13022.i.i" = bitcast i32* %"116071.i.i" to float*
  %"130231.i.i" = load float, float* %"13022.i.i", align 4
  %"130262.i.i" = load float, float* %"13025.i.i", align 4
  %V9502.V5913.513.i.i = fmul float %"130231.i.i", %"130262.i.i"
  %"130291.i.i" = getelementptr inbounds i32, i32* %"116071.i.i", i32 1
  %"13029.i.i" = bitcast i32* %"130291.i.i" to float*
  %"130293.i.i" = load float, float* %"13029.i.i", align 4
  %"130324.i.i" = load float, float* %"13032.i.i", align 4
  %V9507.V5914.514.i.i = fmul float %"130293.i.i", %"130324.i.i"
  %V9508.V5907.519.i.i = fadd float %V9502.V5913.513.i.i, %V9507.V5914.514.i.i
  %"130353.i.i" = getelementptr inbounds i32, i32* %"116071.i.i", i32 2
  %"13035.i.i" = bitcast i32* %"130353.i.i" to float*
  %"130355.i.i" = load float, float* %"13035.i.i", align 4
  %"130386.i.i" = load float, float* %"13038.i.i", align 4
  %V9513.V5908.520.i.i = fmul float %"130355.i.i", %"130386.i.i"
  %"13040.i.i" = fadd float %V9508.V5907.519.i.i, %V9513.V5908.520.i.i
  %0 = fcmp olt float %"13040.i.i", 0.000000e+00
  br i1 %0, label %else.i, label %then2.i

then2.i:                                          ; preds = %then.i
  %V7031.V3437.2063.i = fdiv float %"13040.i.i", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i", float %V7031.V3437.2063.i)
  br label %ifcont.i

else.i:                                           ; preds = %then.i
  %V7025.V3434.2057.i = or i32 %V7014.V3423.index.tr4.i, 1
  %"102493.i" = getelementptr inbounds i32, i32* %V7006.V3415.dirvec_group, i32 %V7025.V3434.2057.i
  %"10249.i" = bitcast i32* %"102493.i" to i32**
  %"102494.i" = load i32*, i32** %"10249.i", align 4
  %V7028.V3432.2060.i = fdiv float %"13040.i.i", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i", float %V7028.V3432.2060.i)
  br label %ifcont.i

ifcont.i:                                         ; preds = %else.i, %then2.i
  %V7023.V3427.2067.i = add nsw i32 %V7014.V3423.index.tr4.i, -2
  %1 = icmp sgt i32 %V7023.V3427.2067.i, -1
  br i1 %1, label %then.i, label %V6250.V2659.iter_trace_diffuse_rays.exit

V6250.V2659.iter_trace_diffuse_rays.exit:         ; preds = %ifcont.i
  ret void
}

; Function Attrs: nounwind
define void @V6224.V2633.setup_startp(i32* nocapture readonly %V7834.V4243.p) #2 {
entry:
  %"1311511.i" = load i32, i32* %V7834.V4243.p, align 4
  store i32 %"1311511.i", i32* inttoptr (i32 163 to i32*), align 4
  %"131203.i" = getelementptr inbounds i32, i32* %V7834.V4243.p, i32 1
  %"1312024.i" = load i32, i32* %"131203.i", align 4
  store i32 %"1312024.i", i32* inttoptr (i32 167 to i32*), align 4
  %"131255.i" = getelementptr inbounds i32, i32* %V7834.V4243.p, i32 2
  %"1312536.i" = load i32, i32* %"131255.i", align 4
  store i32 %"1312536.i", i32* inttoptr (i32 171 to i32*), align 4
  %"10798" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480 = add i32 %"10798", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %V7834.V4243.p, i32 %V7839.V4245.1480)
  ret void
}

define void @V6250.V2659.iter_trace_diffuse_rays(i32* nocapture readonly %V7011.V3420.dirvec_group, i32* nocapture readonly %V7012.V3421.nvector, i32* nocapture readnone %V7013.V3422.org, i32 %V7014.V3423.index) {
entry:
  %0 = icmp sgt i32 %V7014.V3423.index, -1
  br i1 %0, label %then.lr.ph, label %ifcont6

then.lr.ph:                                       ; preds = %entry
  %"13025.i" = bitcast i32* %V7012.V3421.nvector to float*
  %"130322.i" = getelementptr inbounds i32, i32* %V7012.V3421.nvector, i32 1
  %"13032.i" = bitcast i32* %"130322.i" to float*
  %"130384.i" = getelementptr inbounds i32, i32* %V7012.V3421.nvector, i32 2
  %"13038.i" = bitcast i32* %"130384.i" to float*
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont
  %V7014.V3423.index.tr4 = phi i32 [ %V7014.V3423.index, %then.lr.ph ], [ %V7023.V3427.2067, %ifcont ]
  %"102422" = getelementptr inbounds i32, i32* %V7011.V3420.dirvec_group, i32 %V7014.V3423.index.tr4
  %"10242" = bitcast i32* %"102422" to i32**
  %"102421" = load i32*, i32** %"10242", align 4
  %"11606.i" = bitcast i32* %"102421" to i32**
  %"116071.i" = load i32*, i32** %"11606.i", align 4
  %"13022.i" = bitcast i32* %"116071.i" to float*
  %"130231.i" = load float, float* %"13022.i", align 4
  %"130262.i" = load float, float* %"13025.i", align 4
  %V9502.V5913.513.i = fmul float %"130231.i", %"130262.i"
  %"130291.i" = getelementptr inbounds i32, i32* %"116071.i", i32 1
  %"13029.i" = bitcast i32* %"130291.i" to float*
  %"130293.i" = load float, float* %"13029.i", align 4
  %"130324.i" = load float, float* %"13032.i", align 4
  %V9507.V5914.514.i = fmul float %"130293.i", %"130324.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130353.i" = getelementptr inbounds i32, i32* %"116071.i", i32 2
  %"13035.i" = bitcast i32* %"130353.i" to float*
  %"130355.i" = load float, float* %"13035.i", align 4
  %"130386.i" = load float, float* %"13038.i", align 4
  %V9513.V5908.520.i = fmul float %"130355.i", %"130386.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %1 = fcmp olt float %"13040.i", 0.000000e+00
  br i1 %1, label %else, label %then2

then2:                                            ; preds = %then
  %V7031.V3437.2063 = fdiv float %"13040.i", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421", float %V7031.V3437.2063)
  br label %ifcont

else:                                             ; preds = %then
  %V7025.V3434.2057 = add i32 %V7014.V3423.index.tr4, 1
  %"102493" = getelementptr inbounds i32, i32* %V7011.V3420.dirvec_group, i32 %V7025.V3434.2057
  %"10249" = bitcast i32* %"102493" to i32**
  %"102494" = load i32*, i32** %"10249", align 4
  %V7028.V3432.2060 = fdiv float %"13040.i", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494", float %V7028.V3432.2060)
  br label %ifcont

ifcont:                                           ; preds = %else, %then2
  %V7023.V3427.2067 = add nsw i32 %V7014.V3423.index.tr4, -2
  %2 = icmp sgt i32 %V7023.V3427.2067, -1
  br i1 %2, label %then, label %ifcont6.loopexit

ifcont6.loopexit:                                 ; preds = %ifcont
  br label %ifcont6

ifcont6:                                          ; preds = %ifcont6.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind readonly
define float @V6151.V2560.veciprod(i32* nocapture readonly %V9496.V5905.v, i32* nocapture readonly %V9497.V5906.w) #1 {
entry:
  %"13022" = bitcast i32* %V9496.V5905.v to float*
  %"130231" = load float, float* %"13022", align 4
  %"13025" = bitcast i32* %V9497.V5906.w to float*
  %"130262" = load float, float* %"13025", align 4
  %V9502.V5913.513 = fmul float %"130231", %"130262"
  %"130291" = getelementptr inbounds i32, i32* %V9496.V5905.v, i32 1
  %"13029" = bitcast i32* %"130291" to float*
  %"130293" = load float, float* %"13029", align 4
  %"130322" = getelementptr inbounds i32, i32* %V9497.V5906.w, i32 1
  %"13032" = bitcast i32* %"130322" to float*
  %"130324" = load float, float* %"13032", align 4
  %V9507.V5914.514 = fmul float %"130293", %"130324"
  %V9508.V5907.519 = fadd float %V9502.V5913.513, %V9507.V5914.514
  %"130353" = getelementptr inbounds i32, i32* %V9496.V5905.v, i32 2
  %"13035" = bitcast i32* %"130353" to float*
  %"130355" = load float, float* %"13035", align 4
  %"130384" = getelementptr inbounds i32, i32* %V9497.V5906.w, i32 2
  %"13038" = bitcast i32* %"130384" to float*
  %"130386" = load float, float* %"13038", align 4
  %V9513.V5908.520 = fmul float %"130355", %"130386"
  %"13040" = fadd float %V9508.V5907.519, %V9513.V5908.520
  ret float %"13040"
}

; Function Attrs: norecurse nounwind readnone
define i1 @V6133.V2542.fisneg(float %V9710.V6119.x) #3 {
entry:
  %0 = fcmp olt float %V9710.V6119.x, 0.000000e+00
  ret i1 %0
}

define void @V6249.V2658.trace_diffuse_ray(i32* readonly %V7032.V3441.dirvec, float %V7033.V3442.energy) {
entry:
  store i32 1315859240, i32* inttoptr (i32 138 to i32*), align 4
  %"10501.i" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  tail call void @V6239.V2648.trace_or_matrix_fast(i32 0, i32* %"10501.i", i32* %V7032.V3441.dirvec) #2
  %"10504.i" = load float, float* inttoptr (i32 138 to float*), align 4
  %0 = fcmp ogt float %"10504.i", 0xBFB99999A0000000
  %1 = fcmp olt float %"10504.i", 1.000000e+08
  %"10506.i" = and i1 %0, %1
  br i1 %"10506.i", label %else, label %ifcont7

else:                                             ; preds = %entry
  %"10257" = load i32, i32* inttoptr (i32 142 to i32*), align 4
  %"10260" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"10257"
  %"102601" = load i32*, i32** %"10260", align 4
  %"12814.i.i" = getelementptr inbounds i32, i32* %"102601", i32 1
  %"128142.i.i" = load i32, i32* %"12814.i.i", align 4
  switch i32 %"128142.i.i", label %else2.i [
    i32 1, label %then.i
    i32 2, label %then1.i
  ]

then.i:                                           ; preds = %else
  %"11606.i" = bitcast i32* %V7032.V3441.dirvec to i32**
  %"116071.i" = load i32*, i32** %"11606.i", align 4
  %"10490.i.i" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  store float 0.000000e+00, float* inttoptr (i32 143 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 147 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 151 to float*), align 4
  %V7466.V3873.1736.i.i = add i32 %"10490.i.i", -1
  %"104932.i.i" = getelementptr inbounds i32, i32* %"116071.i", i32 %V7466.V3873.1736.i.i
  %"10493.i.i" = bitcast i32* %"104932.i.i" to float*
  %"104931.i.i" = load float, float* %"10493.i.i", align 4
  %2 = fcmp oeq float %"104931.i.i", 0.000000e+00
  %3 = fcmp ogt float %"104931.i.i", 0.000000e+00
  %..i.op.i.i = select i1 %3, float -1.000000e+00, float 1.000000e+00
  %"13209.i.i.i" = select i1 %2, float 0.000000e+00, float %..i.op.i.i
  %"10497.i.i" = getelementptr inbounds i32, i32* inttoptr (i32 143 to i32*), i32 %V7466.V3873.1736.i.i
  %4 = bitcast i32* %"10497.i.i" to float*
  store float %"13209.i.i.i", float* %4, align 4
  br label %V6244.V2653.get_nvector.exit

then1.i:                                          ; preds = %else
  %"126431.i.i.i" = getelementptr inbounds i32, i32* %"102601", i32 4
  %5 = bitcast i32* %"126431.i.i.i" to float**
  %"1264352.i.i.i" = load float*, float** %5, align 4
  %"1266512.i.i.i" = load float, float* %"1264352.i.i.i", align 4
  %"13209.i2.i.i" = fsub float 0.000000e+00, %"1266512.i.i.i"
  store float %"13209.i2.i.i", float* inttoptr (i32 143 to float*), align 4
  %"1259552.i.i.i" = load float*, float** %5, align 4
  %"12617.i.i.i" = getelementptr inbounds float, float* %"1259552.i.i.i", i32 1
  %"1261712.i.i.i" = load float, float* %"12617.i.i.i", align 4
  %"13209.i1.i.i" = fsub float 0.000000e+00, %"1261712.i.i.i"
  store float %"13209.i1.i.i", float* inttoptr (i32 147 to float*), align 4
  %"1254752.i.i.i" = load float*, float** %5, align 4
  %"12569.i.i.i" = getelementptr inbounds float, float* %"1254752.i.i.i", i32 2
  %"1256912.i.i.i" = load float, float* %"12569.i.i.i", align 4
  %"13209.i.i1.i" = fsub float 0.000000e+00, %"1256912.i.i.i"
  store float %"13209.i.i1.i", float* inttoptr (i32 151 to float*), align 4
  br label %V6244.V2653.get_nvector.exit

else2.i:                                          ; preds = %else
  tail call void @V6243.V2652.get_nvector_second(i32* nonnull %"102601") #2
  br label %V6244.V2653.get_nvector.exit

V6244.V2653.get_nvector.exit:                     ; preds = %then.i, %then1.i, %else2.i
  tail call void @V6245.V2654.utexture(i32* %"102601", i32* nonnull inttoptr (i32 139 to i32*))
  %"10263" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  %V7045.V3458.2042 = tail call i1 @V6232.V2641.shadow_check_one_or_matrix(i32 0, i32* %"10263")
  br i1 %V7045.V3458.2042, label %ifcont7, label %else3

else3:                                            ; preds = %V6244.V2653.get_nvector.exit
  %"130231.i" = load float, float* inttoptr (i32 143 to float*), align 4
  %"130262.i" = load float, float* inttoptr (i32 79 to float*), align 4
  %V9502.V5913.513.i = fmul float %"130231.i", %"130262.i"
  %"130293.i" = load float, float* inttoptr (i32 147 to float*), align 4
  %"130324.i" = load float, float* inttoptr (i32 83 to float*), align 4
  %V9507.V5914.514.i = fmul float %"130293.i", %"130324.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130355.i" = load float, float* inttoptr (i32 151 to float*), align 4
  %"130386.i" = load float, float* inttoptr (i32 87 to float*), align 4
  %V9513.V5908.520.i = fmul float %"130355.i", %"130386.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %"13209.i" = fsub float 0.000000e+00, %"13040.i"
  %6 = fcmp ogt float %"13209.i", 0.000000e+00
  %.V7049.V3450.br = select i1 %6, float %"13209.i", float 0.000000e+00
  %V7053.V3453.2046 = fmul float %.V7049.V3450.br, %V7033.V3442.energy
  %"123201.i" = getelementptr inbounds i32, i32* %"102601", i32 7
  %7 = bitcast i32* %"123201.i" to float**
  %"1232082.i" = load float*, float** %7, align 4
  %"1233312.i" = load float, float* %"1232082.i", align 4
  %V7055.V3452.2048 = fmul float %"1233312.i", %V7053.V3453.2046
  %"129881.i" = load float, float* inttoptr (i32 149 to float*), align 4
  %"129912.i" = load float, float* inttoptr (i32 146 to float*), align 4
  %V9464.V5887.535.i = fmul float %"129912.i", %V7055.V3452.2048
  %V9465.V5885.537.i = fadd float %"129881.i", %V9464.V5887.535.i
  store float %V9465.V5885.537.i, float* inttoptr (i32 149 to float*), align 4
  %"129963.i" = load float, float* inttoptr (i32 153 to float*), align 4
  %"129994.i" = load float, float* inttoptr (i32 150 to float*), align 4
  %V9472.V5880.542.i = fmul float %"129994.i", %V7055.V3452.2048
  %V9473.V5878.544.i = fadd float %"129963.i", %V9472.V5880.542.i
  store float %V9473.V5878.544.i, float* inttoptr (i32 153 to float*), align 4
  %"130045.i" = load float, float* inttoptr (i32 157 to float*), align 4
  %"130076.i" = load float, float* inttoptr (i32 154 to float*), align 4
  %V9480.V5873.549.i = fmul float %V7055.V3452.2048, %"130076.i"
  %V9481.V5871.551.i = fadd float %"130045.i", %V9480.V5873.549.i
  store float %V9481.V5871.551.i, float* inttoptr (i32 157 to float*), align 4
  br label %ifcont7

ifcont7:                                          ; preds = %entry, %else3, %V6244.V2653.get_nvector.exit
  ret void
}

; Function Attrs: nounwind
define i1 @V6240.V2649.judge_intersection_fast(i32* readonly %V7472.V3881.dirvec) #2 {
entry:
  store i32 1315859240, i32* inttoptr (i32 138 to i32*), align 4
  %"10501" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  tail call void @V6239.V2648.trace_or_matrix_fast(i32 0, i32* %"10501", i32* %V7472.V3881.dirvec)
  %"10504" = load float, float* inttoptr (i32 138 to float*), align 4
  %0 = fcmp ogt float %"10504", 0xBFB99999A0000000
  %1 = fcmp olt float %"10504", 1.000000e+08
  %"10506" = and i1 %0, %1
  ret i1 %"10506"
}

; Function Attrs: norecurse nounwind
define void @V6244.V2653.get_nvector(i32* nocapture readonly %V7390.V3799.m, i32* nocapture readonly %V7391.V3800.dirvec) #0 {
entry:
  %"12814.i" = getelementptr inbounds i32, i32* %V7390.V3799.m, i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else2 [
    i32 1, label %then
    i32 2, label %then1
  ]

then:                                             ; preds = %entry
  %"10490.i" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  store float 0.000000e+00, float* inttoptr (i32 143 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 147 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 151 to float*), align 4
  %V7466.V3873.1736.i = add i32 %"10490.i", -1
  %"104932.i" = getelementptr inbounds i32, i32* %V7391.V3800.dirvec, i32 %V7466.V3873.1736.i
  %"10493.i" = bitcast i32* %"104932.i" to float*
  %"104931.i" = load float, float* %"10493.i", align 4
  %0 = fcmp oeq float %"104931.i", 0.000000e+00
  %1 = fcmp ogt float %"104931.i", 0.000000e+00
  %..i.op.i = select i1 %1, float -1.000000e+00, float 1.000000e+00
  %"13209.i.i" = select i1 %0, float 0.000000e+00, float %..i.op.i
  %"10497.i" = getelementptr inbounds i32, i32* inttoptr (i32 143 to i32*), i32 %V7466.V3873.1736.i
  %2 = bitcast i32* %"10497.i" to float*
  store float %"13209.i.i", float* %2, align 4
  br label %ifcont3

then1:                                            ; preds = %entry
  %"126431.i.i" = getelementptr inbounds i32, i32* %V7390.V3799.m, i32 4
  %3 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %3, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %"13209.i2.i" = fsub float 0.000000e+00, %"1266512.i.i"
  store float %"13209.i2.i", float* inttoptr (i32 143 to float*), align 4
  %"1259552.i.i" = load float*, float** %3, align 4
  %"12617.i.i" = getelementptr inbounds float, float* %"1259552.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %"13209.i1.i" = fsub float 0.000000e+00, %"1261712.i.i"
  store float %"13209.i1.i", float* inttoptr (i32 147 to float*), align 4
  %"1254752.i.i" = load float*, float** %3, align 4
  %"12569.i.i" = getelementptr inbounds float, float* %"1254752.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %"13209.i.i1" = fsub float 0.000000e+00, %"1256912.i.i"
  store float %"13209.i.i1", float* inttoptr (i32 151 to float*), align 4
  br label %ifcont3

else2:                                            ; preds = %entry
  tail call void @V6243.V2652.get_nvector_second(i32* nonnull %V7390.V3799.m)
  br label %ifcont3

ifcont3:                                          ; preds = %then1, %else2, %then
  ret void
}

define void @V6245.V2654.utexture(i32* nocapture readonly %V7234.V3643.m, i32* nocapture readonly %V7235.V3644.p) {
entry:
  %"128551.i" = load i32, i32* %V7234.V3643.m, align 4
  %"122271.i" = getelementptr inbounds i32, i32* %V7234.V3643.m, i32 8
  %"12227.i" = bitcast i32* %"122271.i" to i32**
  %"122279.i" = load i32*, i32** %"12227.i", align 4
  %"1223712.i" = load i32, i32* %"122279.i", align 4
  store i32 %"1223712.i", i32* inttoptr (i32 146 to i32*), align 4
  %"121799.i" = load i32*, i32** %"12227.i", align 4
  %"12189.i" = getelementptr inbounds i32, i32* %"121799.i", i32 1
  %"1218912.i" = load i32, i32* %"12189.i", align 4
  store i32 %"1218912.i", i32* inttoptr (i32 150 to i32*), align 4
  %"121319.i" = load i32*, i32** %"12227.i", align 4
  %"12141.i" = getelementptr inbounds i32, i32* %"121319.i", i32 2
  %"1214112.i" = load i32, i32* %"12141.i", align 4
  store i32 %"1214112.i", i32* inttoptr (i32 154 to i32*), align 4
  switch i32 %"128551.i", label %ifcont35 [
    i32 1, label %then
    i32 2, label %then11
    i32 3, label %then14
    i32 4, label %then18
  ]

then:                                             ; preds = %entry
  %"10397" = bitcast i32* %V7235.V3644.p to float*
  %"103981" = load float, float* %"10397", align 4
  %"124581.i" = getelementptr inbounds i32, i32* %V7234.V3643.m, i32 5
  %0 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %0, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V7364.V3764.w1 = fsub float %"103981", %"1247712.i"
  %V7366.V3788.1802 = fmul float %V7364.V3764.w1, 0x3FA99999A0000000
  %1 = fptosi float %V7366.V3788.1802 to i32
  %2 = sitofp i32 %1 to float
  %V7369.V3783.d1 = fmul float %2, 2.000000e+01
  %V7370.V3784.1805 = fsub float %V7364.V3764.w1, %V7369.V3783.d1
  %3 = fcmp olt float %V7370.V3784.1805, 1.000000e+01
  %"104016" = getelementptr inbounds i32, i32* %V7235.V3644.p, i32 2
  %"10401" = bitcast i32* %"104016" to float*
  %"104012" = load float, float* %"10401", align 4
  %"12381.i" = getelementptr inbounds float, float* %"1245862.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V7376.V3766.w3 = fsub float %"104012", %"1238112.i"
  %V7378.V3778.1811 = fmul float %V7376.V3766.w3, 0x3FA99999A0000000
  %4 = fptosi float %V7378.V3778.1811 to i32
  %5 = sitofp i32 %4 to float
  %V7381.V3773.d2 = fmul float %5, 2.000000e+01
  %V7382.V3774.1814 = fsub float %V7376.V3766.w3, %V7381.V3773.d2
  %6 = fcmp olt float %V7382.V3774.1814, 1.000000e+01
  %. = select i1 %6, float 0.000000e+00, float 2.550000e+02
  %.1 = select i1 %6, float 2.550000e+02, float 0.000000e+00
  %V7387.V3769.1820 = select i1 %3, float %.1, float %.
  store float %V7387.V3769.1820, float* inttoptr (i32 150 to float*), align 4
  br label %ifcont35

then11:                                           ; preds = %entry
  %"104145" = getelementptr inbounds i32, i32* %V7235.V3644.p, i32 1
  %"10414" = bitcast i32* %"104145" to float*
  %"1041412" = load float, float* %"10414", align 4
  %V7349.V3760.1825 = fmul float %"1041412", 2.500000e-01
  %7 = fcmp oge float %V7349.V3760.1825, 0.000000e+00
  %..i60 = select i1 %7, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i = fmul float %V7349.V3760.1825, %..i60
  %V9693.V6101.x.i = tail call float @reduction(float %V9692.V6100.x.i)
  %8 = fcmp oge float %V9693.V6101.x.i, 0x400921FB00000000
  %"13183.i" = fsub float -0.000000e+00, %..i60
  %V9698.V6105.flag.i = select i1 %8, float %"13183.i", float %..i60
  %"13185.i" = fadd float %V9693.V6101.x.i, 0xC00921FB00000000
  %V9699.V6106.x.i = select i1 %8, float %"13185.i", float %V9693.V6101.x.i
  %9 = fcmp oge float %V9699.V6106.x.i, 0x3FF921FB40000000
  %"13187.i" = fsub float 0x400921FB00000000, %V9699.V6106.x.i
  %V9700.V6107.x.i = select i1 %9, float %"13187.i", float %V9699.V6106.x.i
  %10 = fcmp ugt float %V9700.V6107.x.i, 0x3FE921FB40000000
  br i1 %10, label %else11.i, label %then10.i

then10.i:                                         ; preds = %then11
  %11 = fmul float %V9700.V6107.x.i, 0x3FC55555A0000000
  %12 = fmul float %V9700.V6107.x.i, %11
  %13 = fmul float %V9700.V6107.x.i, 0x3FA99999A0000000
  %14 = fmul float %V9700.V6107.x.i, %13
  %15 = fmul float %V9700.V6107.x.i, 0x3F98618480000000
  %16 = fmul float %V9700.V6107.x.i, %15
  %17 = fmul float %V9700.V6107.x.i, 0x3F8C71BB20000000
  %18 = fmul float %V9700.V6107.x.i, %17
  %19 = fsub float 1.000000e+00, %18
  %20 = fmul float %16, %19
  %21 = fsub float 1.000000e+00, %20
  %22 = fmul float %14, %21
  %23 = fsub float 1.000000e+00, %22
  %24 = fmul float %12, %23
  %25 = fsub float 1.000000e+00, %24
  %26 = fmul float %V9700.V6107.x.i, %25
  br label %V6137.V2546.sin.exit

else11.i:                                         ; preds = %then11
  %V9702.V6109.379.i = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i
  %27 = fmul float %V9702.V6109.379.i, 5.000000e-01
  %28 = fmul float %V9702.V6109.379.i, %27
  %29 = fmul float %V9702.V6109.379.i, 0x3FB55554C0000000
  %30 = fmul float %V9702.V6109.379.i, %29
  %31 = fmul float %V9702.V6109.379.i, 0x3FA1111000000000
  %32 = fmul float %V9702.V6109.379.i, %31
  %33 = fmul float %V9702.V6109.379.i, 0x3F924921C0000000
  %34 = fmul float %V9702.V6109.379.i, %33
  %35 = fsub float 1.000000e+00, %34
  %36 = fmul float %32, %35
  %37 = fsub float 1.000000e+00, %36
  %38 = fmul float %30, %37
  %39 = fsub float 1.000000e+00, %38
  %40 = fmul float %28, %39
  %41 = fsub float 1.000000e+00, %40
  br label %V6137.V2546.sin.exit

V6137.V2546.sin.exit:                             ; preds = %then10.i, %else11.i
  %V9701.V6108.380.i = phi float [ %26, %then10.i ], [ %41, %else11.i ]
  %"13191.i" = fmul float %V9698.V6105.flag.i, %V9701.V6108.380.i
  %"13208.i59" = fmul float %"13191.i", %"13191.i"
  %V7354.V3757.1829 = fmul float %"13208.i59", 2.550000e+02
  store float %V7354.V3757.1829, float* inttoptr (i32 146 to float*), align 4
  %V7359.V3754.1832 = fsub float 1.000000e+00, %"13208.i59"
  %V7360.V3752.1834 = fmul float %V7359.V3754.1832, 2.550000e+02
  store float %V7360.V3752.1834, float* inttoptr (i32 150 to float*), align 4
  br label %ifcont35

then14:                                           ; preds = %entry
  %"10422" = bitcast i32* %V7235.V3644.p to float*
  %"1042315" = load float, float* %"10422", align 4
  %"124581.i56" = getelementptr inbounds i32, i32* %V7234.V3643.m, i32 5
  %42 = bitcast i32* %"124581.i56" to float**
  %"1245862.i57" = load float*, float** %42, align 4
  %"1247712.i58" = load float, float* %"1245862.i57", align 4
  %V7320.V3720.w1 = fsub float %"1042315", %"1247712.i58"
  %"104264" = getelementptr inbounds i32, i32* %V7235.V3644.p, i32 2
  %"10426" = bitcast i32* %"104264" to float*
  %"1042616" = load float, float* %"10426", align 4
  %"12381.i54" = getelementptr inbounds float, float* %"1245862.i57", i32 2
  %"1238112.i55" = load float, float* %"12381.i54", align 4
  %V7324.V3721.w3 = fsub float %"1042616", %"1238112.i55"
  %"13208.i51" = fmul float %V7320.V3720.w1, %V7320.V3720.w1
  %"13208.i50" = fmul float %V7324.V3721.w3, %V7324.V3721.w3
  %V7327.V3740.1844 = fadd float %"13208.i51", %"13208.i50"
  %43 = tail call float @llvm.sqrt.f32(float %V7327.V3740.1844) #2
  %V7330.V3722.w2 = fdiv float %43, 1.000000e+01
  %44 = fptosi float %V7330.V3722.w2 to i32
  %45 = sitofp i32 %44 to float
  %V7332.V3735.1848 = fsub float %V7330.V3722.w2, %45
  %V7334.V3723.w4 = fmul float %V7332.V3735.1848, 0x400921FB60000000
  %46 = fcmp oge float %V7334.V3723.w4, 0.000000e+00
  %"13169.i" = fsub float -0.000000e+00, %V7334.V3723.w4
  %V9674.V6082.x.i = select i1 %46, float %V7334.V3723.w4, float %"13169.i"
  %V9675.V6083.x.i = tail call float @reduction(float %V9674.V6082.x.i)
  %47 = fcmp oge float %V9675.V6083.x.i, 0x400921FB00000000
  %..i49 = select i1 %47, float -1.000000e+00, float 1.000000e+00
  %"13172.i" = fadd float %V9675.V6083.x.i, 0xC00921FB00000000
  %V9681.V6088.x.i = select i1 %47, float %"13172.i", float %V9675.V6083.x.i
  %48 = fcmp oge float %V9681.V6088.x.i, 0x3FF921FB40000000
  %"13174.i" = fsub float -0.000000e+00, %..i49
  %V9682.V6089.flag.i = select i1 %48, float %"13174.i", float %..i49
  %"13176.i" = fsub float 0x400921FB00000000, %V9681.V6088.x.i
  %V9683.V6090.x.i = select i1 %48, float %"13176.i", float %V9681.V6088.x.i
  %49 = fcmp ugt float %V9683.V6090.x.i, 0x3FE921FB40000000
  br i1 %49, label %else14.i, label %then13.i

then13.i:                                         ; preds = %then14
  %50 = fmul float %V9683.V6090.x.i, 5.000000e-01
  %51 = fmul float %V9683.V6090.x.i, %50
  %52 = fmul float %V9683.V6090.x.i, 0x3FB55554C0000000
  %53 = fmul float %V9683.V6090.x.i, %52
  %54 = fmul float %V9683.V6090.x.i, 0x3FA1111000000000
  %55 = fmul float %V9683.V6090.x.i, %54
  %56 = fmul float %V9683.V6090.x.i, 0x3F924921C0000000
  %57 = fmul float %V9683.V6090.x.i, %56
  %58 = fsub float 1.000000e+00, %57
  %59 = fmul float %55, %58
  %60 = fsub float 1.000000e+00, %59
  %61 = fmul float %53, %60
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %51, %62
  %64 = fsub float 1.000000e+00, %63
  br label %V6138.V2547.cos.exit

else14.i:                                         ; preds = %then14
  %V9685.V6092.386.i = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i
  %65 = fmul float %V9685.V6092.386.i, 0x3FC55555A0000000
  %66 = fmul float %V9685.V6092.386.i, %65
  %67 = fmul float %V9685.V6092.386.i, 0x3FA99999A0000000
  %68 = fmul float %V9685.V6092.386.i, %67
  %69 = fmul float %V9685.V6092.386.i, 0x3F98618480000000
  %70 = fmul float %V9685.V6092.386.i, %69
  %71 = fmul float %V9685.V6092.386.i, 0x3F8C71BB20000000
  %72 = fmul float %V9685.V6092.386.i, %71
  %73 = fsub float 1.000000e+00, %72
  %74 = fmul float %70, %73
  %75 = fsub float 1.000000e+00, %74
  %76 = fmul float %68, %75
  %77 = fsub float 1.000000e+00, %76
  %78 = fmul float %66, %77
  %79 = fsub float 1.000000e+00, %78
  %80 = fmul float %V9685.V6092.386.i, %79
  br label %V6138.V2547.cos.exit

V6138.V2547.cos.exit:                             ; preds = %then13.i, %else14.i
  %V9684.V6091.387.i = phi float [ %64, %then13.i ], [ %80, %else14.i ]
  %"13180.i" = fmul float %V9682.V6089.flag.i, %V9684.V6091.387.i
  %"13208.i48" = fmul float %"13180.i", %"13180.i"
  %V7339.V3732.1853 = fmul float %"13208.i48", 2.550000e+02
  store float %V7339.V3732.1853, float* inttoptr (i32 150 to float*), align 4
  %V7343.V3728.1855 = fsub float 1.000000e+00, %"13208.i48"
  %V7345.V3727.1858 = fmul float %V7343.V3728.1855, 2.550000e+02
  store float %V7345.V3727.1858, float* inttoptr (i32 154 to float*), align 4
  br label %ifcont35

then18:                                           ; preds = %entry
  %"10434" = bitcast i32* %V7235.V3644.p to float*
  %"1043519" = load float, float* %"10434", align 4
  %"124581.i45" = getelementptr inbounds i32, i32* %V7234.V3643.m, i32 5
  %81 = bitcast i32* %"124581.i45" to float**
  %"1245862.i46" = load float*, float** %81, align 4
  %"1247712.i47" = load float, float* %"1245862.i46", align 4
  %V7253.V3714.1864 = fsub float %"1043519", %"1247712.i47"
  %"126431.i" = getelementptr inbounds i32, i32* %V7234.V3643.m, i32 4
  %82 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %82, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %83 = tail call float @llvm.sqrt.f32(float %"1266512.i") #2
  %V7256.V3653.w1 = fmul float %V7253.V3714.1864, %83
  %"104382" = getelementptr inbounds i32, i32* %V7235.V3644.p, i32 2
  %"10438" = bitcast i32* %"104382" to float*
  %"1043820" = load float, float* %"10438", align 4
  %"12381.i43" = getelementptr inbounds float, float* %"1245862.i46", i32 2
  %"1238112.i44" = load float, float* %"12381.i43", align 4
  %V7260.V3708.1870 = fsub float %"1043820", %"1238112.i44"
  %"12569.i" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %84 = tail call float @llvm.sqrt.f32(float %"1256912.i") #2
  %V7263.V3654.w3 = fmul float %V7260.V3708.1870, %84
  %"13208.i40" = fmul float %V7256.V3653.w1, %V7256.V3653.w1
  %"13208.i39" = fmul float %V7263.V3654.w3, %V7263.V3654.w3
  %V7266.V3655.w4 = fadd float %"13208.i40", %"13208.i39"
  %85 = fcmp ogt float %V7256.V3653.w1, 0.000000e+00
  %"13207.i37" = fsub float -0.000000e+00, %V7256.V3653.w1
  %"13205.i38" = select i1 %85, float %V7256.V3653.w1, float %"13207.i37"
  %86 = fcmp olt float %"13205.i38", 0x3F1A36E2E0000000
  br i1 %86, label %ifcont23, label %then21

then21:                                           ; preds = %then18
  %V7311.V3703.1876 = fdiv float %V7263.V3654.w3, %V7256.V3653.w1
  %87 = fcmp ogt float %V7311.V3703.1876, 0.000000e+00
  %"13207.i35" = fsub float -0.000000e+00, %V7311.V3703.1876
  %"13205.i36" = select i1 %87, float %V7311.V3703.1876, float %"13207.i35"
  %88 = fcmp oge float %"13205.i36", 0.000000e+00
  %..i10 = select i1 %88, float 1.000000e+00, float -1.000000e+00
  %V9648.V6056.x.i11 = fmul float %"13205.i36", %..i10
  %89 = fcmp ugt float %V9648.V6056.x.i11, 4.375000e-01
  br i1 %89, label %else2.i14, label %then1.i13

then1.i13:                                        ; preds = %then21
  %"13161.i12" = tail call float @kernel_atan(float %V9648.V6056.x.i11)
  br label %V6139.V2548.atan.exit34

else2.i14:                                        ; preds = %then21
  %90 = fcmp ugt float %V9648.V6056.x.i11, 1.000000e+00
  br i1 %90, label %else4.i21, label %then3.i20

then3.i20:                                        ; preds = %else2.i14
  %V9666.V6074.394.i15 = fsub float 1.000000e+00, %V9648.V6056.x.i11
  %V9668.V6075.395.i16 = fadd float %V9648.V6056.x.i11, 1.000000e+00
  %V9669.V6073.396.i17 = fdiv float %V9666.V6074.394.i15, %V9668.V6075.395.i16
  %V9670.V6072.397.i18 = tail call float @kernel_atan(float %V9669.V6073.396.i17)
  %"13163.i19" = fsub float 0x3FE921FB40000000, %V9670.V6072.397.i18
  br label %V6139.V2548.atan.exit34

else4.i21:                                        ; preds = %else2.i14
  %91 = fcmp ugt float %V9648.V6056.x.i11, 0x4003504F40000000
  br i1 %91, label %else6.i31, label %then5.i27

then5.i27:                                        ; preds = %else4.i21
  %V9660.V6068.401.i22 = fadd float %V9648.V6056.x.i11, -1.000000e+00
  %V9662.V6069.402.i23 = fadd float %V9648.V6056.x.i11, 1.000000e+00
  %V9663.V6067.403.i24 = fdiv float %V9660.V6068.401.i22, %V9662.V6069.402.i23
  %V9664.V6066.404.i25 = tail call float @kernel_atan(float %V9663.V6067.403.i24)
  %"13165.i26" = fadd float %V9664.V6066.404.i25, 0x3FE921FB40000000
  br label %V6139.V2548.atan.exit34

else6.i31:                                        ; preds = %else4.i21
  %V9657.V6064.406.i28 = fdiv float 1.000000e+00, %V9648.V6056.x.i11
  %V9658.V6063.407.i29 = tail call float @kernel_atan(float %V9657.V6064.406.i28)
  %"13166.i30" = fsub float 0x3FF921FB40000000, %V9658.V6063.407.i29
  br label %V6139.V2548.atan.exit34

V6139.V2548.atan.exit34:                          ; preds = %then1.i13, %then3.i20, %then5.i27, %else6.i31
  %V9653.V6059.408.i32 = phi float [ %"13161.i12", %then1.i13 ], [ %"13163.i19", %then3.i20 ], [ %"13165.i26", %then5.i27 ], [ %"13166.i30", %else6.i31 ]
  %"13167.i33" = fmul float %..i10, %V9653.V6059.408.i32
  %V7315.V3699.1879 = fmul float %"13167.i33", 3.000000e+01
  %"10440" = fdiv float %V7315.V3699.1879, 0x400921FB60000000
  br label %ifcont23

ifcont23:                                         ; preds = %then18, %V6139.V2548.atan.exit34
  %V7271.V3656.w7 = phi float [ %"10440", %V6139.V2548.atan.exit34 ], [ 1.500000e+01, %then18 ]
  %92 = fptosi float %V7271.V3656.w7 to i32
  %93 = sitofp i32 %92 to float
  %V7273.V3657.w9 = fsub float %V7271.V3656.w7, %93
  %94 = fcmp ogt float %V7266.V3655.w4, 0.000000e+00
  %"13207.i8" = fsub float -0.000000e+00, %V7266.V3655.w4
  %"13205.i9" = select i1 %94, float %V7266.V3655.w4, float %"13207.i8"
  %95 = fcmp olt float %"13205.i9", 0x3F1A36E2E0000000
  br i1 %95, label %ifcont27, label %then25

then25:                                           ; preds = %ifcont23
  %"1259552.i" = load float*, float** %82, align 4
  %"12617.i" = getelementptr inbounds float, float* %"1259552.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %96 = tail call float @llvm.sqrt.f32(float %"1261712.i") #2
  %"1241062.i" = load float*, float** %81, align 4
  %"12429.i" = getelementptr inbounds float, float* %"1241062.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %"104433" = getelementptr inbounds i32, i32* %V7235.V3644.p, i32 1
  %"10443" = bitcast i32* %"104433" to float*
  %"1044324" = load float, float* %"10443", align 4
  %V7277.V3689.1888 = fsub float %"1044324", %"1242912.i"
  %V7280.V3658.w2 = fmul float %96, %V7277.V3689.1888
  %V7305.V3686.1892 = fdiv float %V7280.V3658.w2, %V7266.V3655.w4
  %97 = fcmp ogt float %V7305.V3686.1892, 0.000000e+00
  %"13207.i" = fsub float -0.000000e+00, %V7305.V3686.1892
  %"13205.i" = select i1 %97, float %V7305.V3686.1892, float %"13207.i"
  %98 = fcmp oge float %"13205.i", 0.000000e+00
  %..i = select i1 %98, float 1.000000e+00, float -1.000000e+00
  %V9648.V6056.x.i = fmul float %"13205.i", %..i
  %99 = fcmp ugt float %V9648.V6056.x.i, 4.375000e-01
  br i1 %99, label %else2.i, label %then1.i

then1.i:                                          ; preds = %then25
  %"13161.i" = tail call float @kernel_atan(float %V9648.V6056.x.i)
  br label %V6139.V2548.atan.exit

else2.i:                                          ; preds = %then25
  %100 = fcmp ugt float %V9648.V6056.x.i, 1.000000e+00
  br i1 %100, label %else4.i, label %then3.i

then3.i:                                          ; preds = %else2.i
  %V9666.V6074.394.i = fsub float 1.000000e+00, %V9648.V6056.x.i
  %V9668.V6075.395.i = fadd float %V9648.V6056.x.i, 1.000000e+00
  %V9669.V6073.396.i = fdiv float %V9666.V6074.394.i, %V9668.V6075.395.i
  %V9670.V6072.397.i = tail call float @kernel_atan(float %V9669.V6073.396.i)
  %"13163.i" = fsub float 0x3FE921FB40000000, %V9670.V6072.397.i
  br label %V6139.V2548.atan.exit

else4.i:                                          ; preds = %else2.i
  %101 = fcmp ugt float %V9648.V6056.x.i, 0x4003504F40000000
  br i1 %101, label %else6.i, label %then5.i

then5.i:                                          ; preds = %else4.i
  %V9660.V6068.401.i = fadd float %V9648.V6056.x.i, -1.000000e+00
  %V9662.V6069.402.i = fadd float %V9648.V6056.x.i, 1.000000e+00
  %V9663.V6067.403.i = fdiv float %V9660.V6068.401.i, %V9662.V6069.402.i
  %V9664.V6066.404.i = tail call float @kernel_atan(float %V9663.V6067.403.i)
  %"13165.i" = fadd float %V9664.V6066.404.i, 0x3FE921FB40000000
  br label %V6139.V2548.atan.exit

else6.i:                                          ; preds = %else4.i
  %V9657.V6064.406.i = fdiv float 1.000000e+00, %V9648.V6056.x.i
  %V9658.V6063.407.i = tail call float @kernel_atan(float %V9657.V6064.406.i)
  %"13166.i" = fsub float 0x3FF921FB40000000, %V9658.V6063.407.i
  br label %V6139.V2548.atan.exit

V6139.V2548.atan.exit:                            ; preds = %then1.i, %then3.i, %then5.i, %else6.i
  %V9653.V6059.408.i = phi float [ %"13161.i", %then1.i ], [ %"13163.i", %then3.i ], [ %"13165.i", %then5.i ], [ %"13166.i", %else6.i ]
  %"13167.i" = fmul float %..i, %V9653.V6059.408.i
  %V7309.V3682.1895 = fmul float %"13167.i", 3.000000e+01
  %"10445" = fdiv float %V7309.V3682.1895, 0x400921FB60000000
  br label %ifcont27

ifcont27:                                         ; preds = %ifcont23, %V6139.V2548.atan.exit
  %V7285.V3659.w8 = phi float [ %"10445", %V6139.V2548.atan.exit ], [ 1.500000e+01, %ifcont23 ]
  %102 = fptosi float %V7285.V3659.w8 to i32
  %103 = sitofp i32 %102 to float
  %V7287.V3660.w10 = fsub float %V7285.V3659.w8, %103
  %V7290.V3676.1901 = fsub float 5.000000e-01, %V7273.V3657.w9
  %"13208.i7" = fmul float %V7290.V3676.1901, %V7290.V3676.1901
  %V7292.V3670.1906 = fsub float 0x3FC3333340000000, %"13208.i7"
  %V7294.V3672.1905 = fsub float 5.000000e-01, %V7287.V3660.w10
  %"13208.i" = fmul float %V7294.V3672.1905, %V7294.V3672.1905
  %V7296.V3661.w11 = fsub float %V7292.V3670.1906, %"13208.i"
  %104 = fcmp olt float %V7296.V3661.w11, 0.000000e+00
  %V7296.V3661.w11.op = fmul float %V7296.V3661.w11, 2.550000e+02
  %V7296.V3661.w11.op.op = fdiv float %V7296.V3661.w11.op, 0x3FD3333340000000
  %105 = bitcast float %V7296.V3661.w11.op.op to i32
  %"10450" = select i1 %104, i32 0, i32 %105
  store i32 %"10450", i32* inttoptr (i32 154 to i32*), align 4
  br label %ifcont35

ifcont35:                                         ; preds = %V6137.V2546.sin.exit, %ifcont27, %entry, %V6138.V2547.cos.exit, %then
  ret void
}

; Function Attrs: nounwind
define i1 @V6232.V2641.shadow_check_one_or_matrix(i32 %V7687.V4096.ofs, i32* readonly %V7688.V4097.or_matrix) #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %V7687.V4096.ofs.tr = phi i32 [ %V7687.V4096.ofs, %entry ], [ %V7702.V4108.1577, %tailrecurse.backedge ]
  %"106912" = getelementptr inbounds i32, i32* %V7688.V4097.or_matrix, i32 %V7687.V4096.ofs.tr
  %"10691" = bitcast i32* %"106912" to i32**
  %"106911" = load i32*, i32** %"10691", align 4
  %"106942" = load i32, i32* %"106911", align 4
  switch i32 %"106942", label %else4 [
    i32 -1, label %ifcont23.loopexit29
    i32 99, label %tailrecurse.else18_crit_edge
  ]

tailrecurse.else18_crit_edge:                     ; preds = %tailrecurse
  %.pre = getelementptr inbounds i32, i32* %"106911", i32 1
  br label %else18

else4:                                            ; preds = %tailrecurse
  %"11070.i" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"106942"
  %"110701.i" = load i32*, i32** %"11070.i", align 4
  %"110732.i" = load float, float* inttoptr (i32 139 to float*), align 4
  %"124581.i.i" = getelementptr inbounds i32, i32* %"110701.i", i32 5
  %0 = bitcast i32* %"124581.i.i" to float**
  %"1245862.i.i" = load float*, float** %0, align 4
  %"1247712.i.i" = load float, float* %"1245862.i.i", align 4
  %V8187.V4593.b0.i = fsub float %"110732.i", %"1247712.i.i"
  %"110763.i" = load float, float* inttoptr (i32 143 to float*), align 4
  %"12429.i.i" = getelementptr inbounds float, float* %"1245862.i.i", i32 1
  %"1242912.i.i" = load float, float* %"12429.i.i", align 4
  %V8191.V4594.b1.i = fsub float %"110763.i", %"1242912.i.i"
  %"110794.i" = load float, float* inttoptr (i32 147 to float*), align 4
  %"12381.i.i" = getelementptr inbounds float, float* %"1245862.i.i", i32 2
  %"1238112.i.i" = load float, float* %"12381.i.i", align 4
  %V8195.V4595.b2.i = fsub float %"110794.i", %"1238112.i.i"
  %"116022.i.i" = load i32*, i32** inttoptr (i32 252 to i32**), align 4
  %"110823.i" = getelementptr inbounds i32, i32* %"116022.i.i", i32 %"106942"
  %"11082.i" = bitcast i32* %"110823.i" to i32**
  %"110825.i" = load i32*, i32** %"11082.i", align 4
  %"12814.i.i" = getelementptr inbounds i32, i32* %"110701.i", i32 1
  %"128142.i.i" = load i32, i32* %"12814.i.i", align 4
  switch i32 %"128142.i.i", label %else7.i [
    i32 1, label %then.i
    i32 2, label %then6.i
  ]

then.i:                                           ; preds = %else4
  %"116071.i.i" = load i32*, i32** inttoptr (i32 248 to i32**), align 8
  %"11085.i" = tail call i32 @V6211.V2620.solver_rect_fast(i32* %"110701.i", i32* %"116071.i.i", i32* %"110825.i", float %V8187.V4593.b0.i, float %V8191.V4594.b1.i, float %V8195.V4595.b2.i) #2
  br label %V6214.V2623.solver_fast.exit

then6.i:                                          ; preds = %else4
  %"11120.i.i" = bitcast i32* %"110825.i" to float*
  %"111211.i.i" = load float, float* %"11120.i.i", align 4
  %1 = fcmp olt float %"111211.i.i", 0.000000e+00
  br i1 %1, label %V6214.V2623.solver_fast.exit.thread19, label %tailrecurse.backedge

V6214.V2623.solver_fast.exit.thread19:            ; preds = %then6.i
  %"111261.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 1
  %"11126.i.i" = bitcast i32* %"111261.i.i" to float*
  %"111262.i.i" = load float, float* %"11126.i.i", align 4
  %V8259.V4670.1158.i.i = fmul float %V8187.V4593.b0.i, %"111262.i.i"
  %"111292.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 2
  %"11129.i.i" = bitcast i32* %"111292.i.i" to float*
  %"111293.i.i" = load float, float* %"11129.i.i", align 4
  %V8262.V4671.1159.i.i = fmul float %V8191.V4594.b1.i, %"111293.i.i"
  %V8263.V4666.1162.i.i = fadd float %V8259.V4670.1158.i.i, %V8262.V4671.1159.i.i
  %"111323.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 3
  %"11132.i.i" = bitcast i32* %"111323.i.i" to float*
  %"111324.i.i" = load float, float* %"11132.i.i", align 4
  %V8266.V4667.1163.i.i = fmul float %V8195.V4595.b2.i, %"111324.i.i"
  %V8267.V4665.1165.i.i = fadd float %V8263.V4666.1162.i.i, %V8266.V4667.1163.i.i
  store float %V8267.V4665.1165.i.i, float* inttoptr (i32 136 to float*), align 8
  br label %else8

else7.i:                                          ; preds = %else4
  %"11088.i" = tail call i32 @V6213.V2622.solver_second_fast(i32* %"110701.i", i32* %"110825.i", float %V8187.V4593.b0.i, float %V8191.V4594.b1.i, float %V8195.V4595.b2.i) #2
  br label %V6214.V2623.solver_fast.exit

V6214.V2623.solver_fast.exit:                     ; preds = %then.i, %else7.i
  %"11084.i" = phi i32 [ %"11085.i", %then.i ], [ %"11088.i", %else7.i ]
  %V7706.V4112.1569 = icmp eq i32 %"11084.i", 0
  br i1 %V7706.V4112.1569, label %tailrecurse.backedge, label %else8thread-pre-split

else8thread-pre-split:                            ; preds = %V6214.V2623.solver_fast.exit
  %"10704.pr" = load float, float* inttoptr (i32 136 to float*), align 8
  br label %else8

else8:                                            ; preds = %else8thread-pre-split, %V6214.V2623.solver_fast.exit.thread19
  %"10704" = phi float [ %"10704.pr", %else8thread-pre-split ], [ %V8267.V4665.1165.i.i, %V6214.V2623.solver_fast.exit.thread19 ]
  %2 = fcmp olt float %"10704", 0xBFB99999A0000000
  br i1 %2, label %else10, label %tailrecurse.backedge

else10:                                           ; preds = %else8
  %"107172.i" = getelementptr inbounds i32, i32* %"106911", i32 1
  %"1071713.i" = load i32, i32* %"107172.i", align 4
  %3 = icmp eq i32 %"1071713.i", -1
  br i1 %3, label %tailrecurse.backedge, label %else.i.preheader

else.i.preheader:                                 ; preds = %else10
  br label %else.i

tailrecurse.i:                                    ; preds = %else.i
  %"10717.i" = getelementptr inbounds i32, i32* %"106911", i32 %V7725.V4132.1554.i
  %"107171.i" = load i32, i32* %"10717.i", align 4
  %4 = icmp eq i32 %"107171.i", -1
  br i1 %4, label %tailrecurse.backedge.loopexit28, label %else.i

else.i:                                           ; preds = %else.i.preheader, %tailrecurse.i
  %"1071715.i" = phi i32 [ %"107171.i", %tailrecurse.i ], [ %"1071713.i", %else.i.preheader ]
  %V7716.V4125.ofs.tr4.i = phi i32 [ %V7725.V4132.1554.i, %tailrecurse.i ], [ 1, %else.i.preheader ]
  %"10722.i" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1071715.i"
  %"107222.i" = load i32*, i32** %"10722.i", align 4
  %V7722.V4130.shadow_p.i = tail call i1 @V6230.V2639.shadow_check_and_group(i32 0, i32* %"107222.i") #2
  %V7725.V4132.1554.i = add i32 %V7716.V4125.ofs.tr4.i, 1
  br i1 %V7722.V4130.shadow_p.i, label %else18.loopexit, label %tailrecurse.i

else18.loopexit:                                  ; preds = %else.i
  br label %else18

else18:                                           ; preds = %else18.loopexit, %tailrecurse.else18_crit_edge
  %"107172.i4.pre-phi" = phi i32* [ %.pre, %tailrecurse.else18_crit_edge ], [ %"107172.i", %else18.loopexit ]
  %"1071713.i5" = load i32, i32* %"107172.i4.pre-phi", align 4
  %5 = icmp eq i32 %"1071713.i5", -1
  br i1 %5, label %tailrecurse.backedge, label %else.i15.preheader

else.i15.preheader:                               ; preds = %else18
  br label %else.i15

tailrecurse.i8:                                   ; preds = %else.i15
  %"10717.i6" = getelementptr inbounds i32, i32* %"106911", i32 %V7725.V4132.1554.i14
  %"107171.i7" = load i32, i32* %"10717.i6", align 4
  %6 = icmp eq i32 %"107171.i7", -1
  br i1 %6, label %tailrecurse.backedge.loopexit, label %else.i15

else.i15:                                         ; preds = %else.i15.preheader, %tailrecurse.i8
  %"1071715.i9" = phi i32 [ %"107171.i7", %tailrecurse.i8 ], [ %"1071713.i5", %else.i15.preheader ]
  %V7716.V4125.ofs.tr4.i10 = phi i32 [ %V7725.V4132.1554.i14, %tailrecurse.i8 ], [ 1, %else.i15.preheader ]
  %"10722.i11" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1071715.i9"
  %"107222.i12" = load i32*, i32** %"10722.i11", align 4
  %V7722.V4130.shadow_p.i13 = tail call i1 @V6230.V2639.shadow_check_and_group(i32 0, i32* %"107222.i12") #2
  %V7725.V4132.1554.i14 = add i32 %V7716.V4125.ofs.tr4.i10, 1
  br i1 %V7722.V4130.shadow_p.i13, label %ifcont23.loopexit, label %tailrecurse.i8

tailrecurse.backedge.loopexit:                    ; preds = %tailrecurse.i8
  br label %tailrecurse.backedge

tailrecurse.backedge.loopexit28:                  ; preds = %tailrecurse.i
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.loopexit28, %tailrecurse.backedge.loopexit, %V6214.V2623.solver_fast.exit, %else8, %then6.i, %else10, %else18
  %V7702.V4108.1577 = add i32 %V7687.V4096.ofs.tr, 1
  br label %tailrecurse

ifcont23.loopexit:                                ; preds = %else.i15
  br label %ifcont23

ifcont23.loopexit29:                              ; preds = %tailrecurse
  br label %ifcont23

ifcont23:                                         ; preds = %ifcont23.loopexit29, %ifcont23.loopexit
  %"10696" = phi i1 [ true, %ifcont23.loopexit ], [ false, %ifcont23.loopexit29 ]
  ret i1 %"10696"
}

; Function Attrs: norecurse nounwind readnone
define float @V6129.V2538.fneg(float %V9718.V6127.x) #3 {
entry:
  %"13209" = fsub float 0.000000e+00, %V9718.V6127.x
  ret float %"13209"
}

; Function Attrs: norecurse nounwind readnone
define i1 @V6134.V2543.fispos(float %V9708.V6117.x) #3 {
entry:
  %0 = fcmp ogt float %V9708.V6117.x, 0.000000e+00
  ret i1 %0
}

; Function Attrs: norecurse nounwind readonly
define float @V6170.V2579.o_diffuse(i32* nocapture readonly %V9188.V5597.m) #1 {
entry:
  %"123201" = getelementptr inbounds i32, i32* %V9188.V5597.m, i32 7
  %0 = bitcast i32* %"123201" to float**
  %"1232082" = load float*, float** %0, align 4
  %"1233312" = load float, float* %"1232082", align 4
  ret float %"1233312"
}

; Function Attrs: norecurse nounwind
define void @V6153.V2562.vecaccum(i32* nocapture %V9456.V5865.dest, float %V9457.V5866.scale, i32* nocapture readonly %V9458.V5867.v) #0 {
entry:
  %"12987" = bitcast i32* %V9456.V5865.dest to float*
  %"129881" = load float, float* %"12987", align 4
  %"12990" = bitcast i32* %V9458.V5867.v to float*
  %"129912" = load float, float* %"12990", align 4
  %V9464.V5887.535 = fmul float %"129912", %V9457.V5866.scale
  %V9465.V5885.537 = fadd float %"129881", %V9464.V5887.535
  store float %V9465.V5885.537, float* %"12987", align 4
  %"129961" = getelementptr inbounds i32, i32* %V9456.V5865.dest, i32 1
  %"12996" = bitcast i32* %"129961" to float*
  %"129963" = load float, float* %"12996", align 4
  %"129992" = getelementptr inbounds i32, i32* %V9458.V5867.v, i32 1
  %"12999" = bitcast i32* %"129992" to float*
  %"129994" = load float, float* %"12999", align 4
  %V9472.V5880.542 = fmul float %"129994", %V9457.V5866.scale
  %V9473.V5878.544 = fadd float %"129963", %V9472.V5880.542
  store float %V9473.V5878.544, float* %"12996", align 4
  %"130043" = getelementptr inbounds i32, i32* %V9456.V5865.dest, i32 2
  %"13004" = bitcast i32* %"130043" to float*
  %"130045" = load float, float* %"13004", align 4
  %"130074" = getelementptr inbounds i32, i32* %V9458.V5867.v, i32 2
  %"13007" = bitcast i32* %"130074" to float*
  %"130076" = load float, float* %"13007", align 4
  %V9480.V5873.549 = fmul float %"130076", %V9457.V5866.scale
  %V9481.V5871.551 = fadd float %"130045", %V9480.V5873.549
  store float %V9481.V5871.551, float* %"13004", align 4
  ret void
}

; Function Attrs: norecurse nounwind
define i32 @V6214.V2623.solver_fast(i32 %V8180.V4589.index, i32* nocapture readonly %V8181.V4590.dirvec, i32* nocapture readonly %V8182.V4591.org) #0 {
entry:
  %"11070" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V8180.V4589.index
  %"110701" = load i32*, i32** %"11070", align 4
  %"11072" = bitcast i32* %V8182.V4591.org to float*
  %"110732" = load float, float* %"11072", align 4
  %"124581.i" = getelementptr inbounds i32, i32* %"110701", i32 5
  %0 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %0, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V8187.V4593.b0 = fsub float %"110732", %"1247712.i"
  %"110761" = getelementptr inbounds i32, i32* %V8182.V4591.org, i32 1
  %"11076" = bitcast i32* %"110761" to float*
  %"110763" = load float, float* %"11076", align 4
  %"12429.i" = getelementptr inbounds float, float* %"1245862.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %V8191.V4594.b1 = fsub float %"110763", %"1242912.i"
  %"110792" = getelementptr inbounds i32, i32* %V8182.V4591.org, i32 2
  %"11079" = bitcast i32* %"110792" to float*
  %"110794" = load float, float* %"11079", align 4
  %"12381.i" = getelementptr inbounds float, float* %"1245862.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V8195.V4595.b2 = fsub float %"110794", %"1238112.i"
  %"116021.i" = getelementptr inbounds i32, i32* %V8181.V4590.dirvec, i32 1
  %"11602.i" = bitcast i32* %"116021.i" to i32**
  %"116022.i" = load i32*, i32** %"11602.i", align 4
  %"110823" = getelementptr inbounds i32, i32* %"116022.i", i32 %V8180.V4589.index
  %"11082" = bitcast i32* %"110823" to i32**
  %"110825" = load i32*, i32** %"11082", align 4
  %"12814.i" = getelementptr inbounds i32, i32* %"110701", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else7 [
    i32 1, label %then
    i32 2, label %then6
  ]

then:                                             ; preds = %entry
  %"11606.i" = bitcast i32* %V8181.V4590.dirvec to i32**
  %"116071.i" = load i32*, i32** %"11606.i", align 4
  %"11085" = tail call i32 @V6211.V2620.solver_rect_fast(i32* %"110701", i32* %"116071.i", i32* %"110825", float %V8187.V4593.b0, float %V8191.V4594.b1, float %V8195.V4595.b2)
  br label %ifcont8

then6:                                            ; preds = %entry
  %"11120.i" = bitcast i32* %"110825" to float*
  %"111211.i" = load float, float* %"11120.i", align 4
  %1 = fcmp olt float %"111211.i", 0.000000e+00
  br i1 %1, label %else.i, label %ifcont8

else.i:                                           ; preds = %then6
  %"111261.i" = getelementptr inbounds i32, i32* %"110825", i32 1
  %"11126.i" = bitcast i32* %"111261.i" to float*
  %"111262.i" = load float, float* %"11126.i", align 4
  %V8259.V4670.1158.i = fmul float %V8187.V4593.b0, %"111262.i"
  %"111292.i" = getelementptr inbounds i32, i32* %"110825", i32 2
  %"11129.i" = bitcast i32* %"111292.i" to float*
  %"111293.i" = load float, float* %"11129.i", align 4
  %V8262.V4671.1159.i = fmul float %V8191.V4594.b1, %"111293.i"
  %V8263.V4666.1162.i = fadd float %V8259.V4670.1158.i, %V8262.V4671.1159.i
  %"111323.i" = getelementptr inbounds i32, i32* %"110825", i32 3
  %"11132.i" = bitcast i32* %"111323.i" to float*
  %"111324.i" = load float, float* %"11132.i", align 4
  %V8266.V4667.1163.i = fmul float %V8195.V4595.b2, %"111324.i"
  %V8267.V4665.1165.i = fadd float %V8263.V4666.1162.i, %V8266.V4667.1163.i
  store float %V8267.V4665.1165.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont8

else7:                                            ; preds = %entry
  %"11088" = tail call i32 @V6213.V2622.solver_second_fast(i32* %"110701", i32* %"110825", float %V8187.V4593.b0, float %V8191.V4594.b1, float %V8195.V4595.b2)
  br label %ifcont8

ifcont8:                                          ; preds = %else.i, %then6, %else7, %then
  %"11084" = phi i32 [ %"11085", %then ], [ %"11088", %else7 ], [ 1, %else.i ], [ 0, %then6 ]
  ret i32 %"11084"
}

; Function Attrs: norecurse nounwind readnone
define i1 @V6136.V2545.fless(float %V9704.V6113.x, float %V9705.V6114.y) #3 {
entry:
  %0 = fcmp olt float %V9704.V6113.x, %V9705.V6114.y
  ret i1 %0
}

; Function Attrs: nounwind
define i1 @V6231.V2640.shadow_check_one_or_group(i32 %V7716.V4125.ofs, i32* nocapture readonly %V7717.V4126.or_group) #2 {
entry:
  %"107172" = getelementptr inbounds i32, i32* %V7717.V4126.or_group, i32 %V7716.V4125.ofs
  %"1071713" = load i32, i32* %"107172", align 4
  %0 = icmp eq i32 %"1071713", -1
  br i1 %0, label %ifcont5, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

tailrecurse:                                      ; preds = %else
  %"10717" = getelementptr inbounds i32, i32* %V7717.V4126.or_group, i32 %V7725.V4132.1554
  %"107171" = load i32, i32* %"10717", align 4
  %1 = icmp eq i32 %"107171", -1
  br i1 %1, label %ifcont5.loopexit, label %else

else:                                             ; preds = %else.preheader, %tailrecurse
  %"1071715" = phi i32 [ %"107171", %tailrecurse ], [ %"1071713", %else.preheader ]
  %V7716.V4125.ofs.tr4 = phi i32 [ %V7725.V4132.1554, %tailrecurse ], [ %V7716.V4125.ofs, %else.preheader ]
  %"10722" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1071715"
  %"107222" = load i32*, i32** %"10722", align 4
  %V7722.V4130.shadow_p = tail call i1 @V6230.V2639.shadow_check_and_group(i32 0, i32* %"107222")
  %V7725.V4132.1554 = add i32 %V7716.V4125.ofs.tr4, 1
  br i1 %V7722.V4130.shadow_p, label %ifcont5.loopexit, label %tailrecurse

ifcont5.loopexit:                                 ; preds = %else, %tailrecurse
  %"10719.ph" = phi i1 [ true, %else ], [ false, %tailrecurse ]
  br label %ifcont5

ifcont5:                                          ; preds = %ifcont5.loopexit, %entry
  %"10719" = phi i1 [ false, %entry ], [ %"10719.ph", %ifcont5.loopexit ]
  ret i1 %"10719"
}

; Function Attrs: nounwind
define i1 @V6230.V2639.shadow_check_and_group(i32 %V7726.V4135.iand_ofs, i32* readonly %V7727.V4136.and_group) #2 {
entry:
  %"107288" = getelementptr inbounds i32, i32* %V7727.V4136.and_group, i32 %V7726.V4135.iand_ofs
  %"1072819" = load i32, i32* %"107288", align 4
  %0 = icmp eq i32 %"1072819", -1
  br i1 %0, label %ifcont18, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

else:                                             ; preds = %else.preheader, %tailrecurse.backedge
  %"10728111" = phi i32 [ %"107281", %tailrecurse.backedge ], [ %"1072819", %else.preheader ]
  %V7726.V4135.iand_ofs.tr10 = phi i32 [ %V7769.V4171.1546, %tailrecurse.backedge ], [ %V7726.V4135.iand_ofs, %else.preheader ]
  %"11070.i" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"10728111"
  %"110701.i" = load i32*, i32** %"11070.i", align 4
  %"110732.i" = load float, float* inttoptr (i32 139 to float*), align 4
  %"124581.i.i" = getelementptr inbounds i32, i32* %"110701.i", i32 5
  %1 = bitcast i32* %"124581.i.i" to float**
  %"1245862.i.i" = load float*, float** %1, align 4
  %"1247712.i.i" = load float, float* %"1245862.i.i", align 4
  %V8187.V4593.b0.i = fsub float %"110732.i", %"1247712.i.i"
  %"110763.i" = load float, float* inttoptr (i32 143 to float*), align 4
  %"12429.i.i" = getelementptr inbounds float, float* %"1245862.i.i", i32 1
  %"1242912.i.i" = load float, float* %"12429.i.i", align 4
  %V8191.V4594.b1.i = fsub float %"110763.i", %"1242912.i.i"
  %"110794.i" = load float, float* inttoptr (i32 147 to float*), align 4
  %"12381.i.i" = getelementptr inbounds float, float* %"1245862.i.i", i32 2
  %"1238112.i.i" = load float, float* %"12381.i.i", align 4
  %V8195.V4595.b2.i = fsub float %"110794.i", %"1238112.i.i"
  %"116022.i.i" = load i32*, i32** inttoptr (i32 252 to i32**), align 4
  %"110823.i" = getelementptr inbounds i32, i32* %"116022.i.i", i32 %"10728111"
  %"11082.i" = bitcast i32* %"110823.i" to i32**
  %"110825.i" = load i32*, i32** %"11082.i", align 4
  %"12814.i.i" = getelementptr inbounds i32, i32* %"110701.i", i32 1
  %"128142.i.i" = load i32, i32* %"12814.i.i", align 4
  switch i32 %"128142.i.i", label %else7.i [
    i32 1, label %then.i
    i32 2, label %then6.i
  ]

then.i:                                           ; preds = %else
  %"116071.i.i" = load i32*, i32** inttoptr (i32 248 to i32**), align 8
  %"11085.i" = tail call i32 @V6211.V2620.solver_rect_fast(i32* %"110701.i", i32* %"116071.i.i", i32* %"110825.i", float %V8187.V4593.b0.i, float %V8191.V4594.b1.i, float %V8195.V4595.b2.i) #2
  br label %V6214.V2623.solver_fast.exit

then6.i:                                          ; preds = %else
  %"11120.i.i" = bitcast i32* %"110825.i" to float*
  %"111211.i.i" = load float, float* %"11120.i.i", align 4
  %2 = fcmp olt float %"111211.i.i", 0.000000e+00
  br i1 %2, label %V6214.V2623.solver_fast.exit.thread3, label %then8

V6214.V2623.solver_fast.exit.thread3:             ; preds = %then6.i
  %"111261.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 1
  %"11126.i.i" = bitcast i32* %"111261.i.i" to float*
  %"111262.i.i" = load float, float* %"11126.i.i", align 4
  %V8259.V4670.1158.i.i = fmul float %V8187.V4593.b0.i, %"111262.i.i"
  %"111292.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 2
  %"11129.i.i" = bitcast i32* %"111292.i.i" to float*
  %"111293.i.i" = load float, float* %"11129.i.i", align 4
  %V8262.V4671.1159.i.i = fmul float %V8191.V4594.b1.i, %"111293.i.i"
  %V8263.V4666.1162.i.i = fadd float %V8259.V4670.1158.i.i, %V8262.V4671.1159.i.i
  %"111323.i.i" = getelementptr inbounds i32, i32* %"110825.i", i32 3
  %"11132.i.i" = bitcast i32* %"111323.i.i" to float*
  %"111324.i.i" = load float, float* %"11132.i.i", align 4
  %V8266.V4667.1163.i.i = fmul float %V8195.V4595.b2.i, %"111324.i.i"
  %V8267.V4665.1165.i.i = fadd float %V8263.V4666.1162.i.i, %V8266.V4667.1163.i.i
  store float %V8267.V4665.1165.i.i, float* inttoptr (i32 136 to float*), align 8
  br label %else6

else7.i:                                          ; preds = %else
  %"11088.i" = tail call i32 @V6213.V2622.solver_second_fast(i32* %"110701.i", i32* %"110825.i", float %V8187.V4593.b0.i, float %V8191.V4594.b1.i, float %V8195.V4595.b2.i) #2
  br label %V6214.V2623.solver_fast.exit

V6214.V2623.solver_fast.exit:                     ; preds = %then.i, %else7.i
  %"11084.i" = phi i32 [ %"11085.i", %then.i ], [ %"11088.i", %else7.i ]
  %"10736" = load float, float* inttoptr (i32 136 to float*), align 8
  %V7736.V4174.1521 = icmp eq i32 %"11084.i", 0
  br i1 %V7736.V4174.1521, label %then8, label %else6

else6:                                            ; preds = %V6214.V2623.solver_fast.exit.thread3, %V6214.V2623.solver_fast.exit
  %"107366" = phi float [ %V8267.V4665.1165.i.i, %V6214.V2623.solver_fast.exit.thread3 ], [ %"10736", %V6214.V2623.solver_fast.exit ]
  %3 = fcmp olt float %"107366", 0xBFC99999A0000000
  br i1 %3, label %else13, label %then8

then8:                                            ; preds = %then6.i, %V6214.V2623.solver_fast.exit, %else6
  %"107449" = load i32*, i32** %"11070.i", align 4
  %"12741.i" = getelementptr inbounds i32, i32* %"107449", i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %4 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %4, 0
  br i1 %"12742.i", label %ifcont18.loopexit17, label %tailrecurse.backedge

else13:                                           ; preds = %else6
  %V7741.V4144.t = fadd float %"107366", 0x3F847AE140000000
  %"10750" = load float, float* inttoptr (i32 79 to float*), align 4
  %V7744.V4163.1527 = fmul float %V7741.V4144.t, %"10750"
  %"10753" = load float, float* inttoptr (i32 139 to float*), align 4
  %V7747.V4145.q0 = fadd float %V7744.V4163.1527, %"10753"
  %"10756" = load float, float* inttoptr (i32 83 to float*), align 4
  %V7750.V4158.1532 = fmul float %V7741.V4144.t, %"10756"
  %"10759" = load float, float* inttoptr (i32 143 to float*), align 4
  %V7753.V4146.q1 = fadd float %V7750.V4158.1532, %"10759"
  %"10762" = load float, float* inttoptr (i32 87 to float*), align 4
  %V7756.V4153.1537 = fmul float %V7741.V4144.t, %"10762"
  %"10765" = load float, float* inttoptr (i32 147 to float*), align 4
  %V7759.V4147.q2 = fadd float %V7756.V4153.1537, %"10765"
  %"1077113.i" = load i32, i32* %V7727.V4136.and_group, align 4
  %5 = icmp eq i32 %"1077113.i", -1
  br i1 %5, label %ifcont18.loopexit17, label %else.i.preheader

else.i.preheader:                                 ; preds = %else13
  br label %else.i

tailrecurse.i:                                    ; preds = %else.i
  %"10771.i" = getelementptr inbounds i32, i32* %V7727.V4136.and_group, i32 %V7782.V4189.1512.i
  %"107711.i" = load i32, i32* %"10771.i", align 4
  %6 = icmp eq i32 %"107711.i", -1
  br i1 %6, label %ifcont18.loopexit, label %else.i

else.i:                                           ; preds = %else.i.preheader, %tailrecurse.i
  %"1077115.i" = phi i32 [ %"107711.i", %tailrecurse.i ], [ %"1077113.i", %else.i.preheader ]
  %V7771.V4180.ofs.tr4.i = phi i32 [ %V7782.V4189.1512.i, %tailrecurse.i ], [ 0, %else.i.preheader ]
  %"10776.i" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1077115.i"
  %"107762.i" = load i32*, i32** %"10776.i", align 4
  %V7779.V4187.1513.i = tail call i1 @V6228.V2637.is_outside(i32* %"107762.i", float %V7747.V4145.q0, float %V7753.V4146.q1, float %V7759.V4147.q2) #2
  %V7782.V4189.1512.i = add i32 %V7771.V4180.ofs.tr4.i, 1
  br i1 %V7779.V4187.1513.i, label %tailrecurse.backedge.loopexit, label %tailrecurse.i

tailrecurse.backedge.loopexit:                    ; preds = %else.i
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.loopexit, %then8
  %V7769.V4171.1546 = add i32 %V7726.V4135.iand_ofs.tr10, 1
  %"10728" = getelementptr inbounds i32, i32* %V7727.V4136.and_group, i32 %V7769.V4171.1546
  %"107281" = load i32, i32* %"10728", align 4
  %7 = icmp eq i32 %"107281", -1
  br i1 %7, label %ifcont18.loopexit17, label %else

ifcont18.loopexit:                                ; preds = %tailrecurse.i
  br label %ifcont18

ifcont18.loopexit17:                              ; preds = %then8, %else13, %tailrecurse.backedge
  %"10730.ph" = phi i1 [ false, %tailrecurse.backedge ], [ true, %else13 ], [ false, %then8 ]
  br label %ifcont18

ifcont18:                                         ; preds = %ifcont18.loopexit17, %ifcont18.loopexit, %entry
  %"10730" = phi i1 [ false, %entry ], [ true, %ifcont18.loopexit ], [ %"10730.ph", %ifcont18.loopexit17 ]
  ret i1 %"10730"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6161.V2570.o_isinvert(i32* nocapture readonly %V9312.V5721.m) #1 {
entry:
  %"12741" = getelementptr inbounds i32, i32* %V9312.V5721.m, i32 6
  %"127417" = load i32, i32* %"12741", align 4
  %0 = and i32 %"127417", 1
  %"12742" = icmp ne i32 %0, 0
  ret i1 %"12742"
}

; Function Attrs: nounwind readonly
define i1 @V6229.V2638.check_all_inside(i32 %V7771.V4180.ofs, i32* nocapture readonly %V7772.V4181.iand, float %V7773.V4182.q0, float %V7774.V4183.q1, float %V7775.V4184.q2) #4 {
entry:
  %"107712" = getelementptr inbounds i32, i32* %V7772.V4181.iand, i32 %V7771.V4180.ofs
  %"1077113" = load i32, i32* %"107712", align 4
  %0 = icmp eq i32 %"1077113", -1
  br i1 %0, label %ifcont5, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

tailrecurse:                                      ; preds = %else
  %"10771" = getelementptr inbounds i32, i32* %V7772.V4181.iand, i32 %V7782.V4189.1512
  %"107711" = load i32, i32* %"10771", align 4
  %1 = icmp eq i32 %"107711", -1
  br i1 %1, label %ifcont5.loopexit, label %else

else:                                             ; preds = %else.preheader, %tailrecurse
  %"1077115" = phi i32 [ %"107711", %tailrecurse ], [ %"1077113", %else.preheader ]
  %V7771.V4180.ofs.tr4 = phi i32 [ %V7782.V4189.1512, %tailrecurse ], [ %V7771.V4180.ofs, %else.preheader ]
  %"10776" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1077115"
  %"107762" = load i32*, i32** %"10776", align 4
  %V7779.V4187.1513 = tail call i1 @V6228.V2637.is_outside(i32* %"107762", float %V7773.V4182.q0, float %V7774.V4183.q1, float %V7775.V4184.q2)
  %V7782.V4189.1512 = add i32 %V7771.V4180.ofs.tr4, 1
  br i1 %V7779.V4187.1513, label %ifcont5.loopexit, label %tailrecurse

ifcont5.loopexit:                                 ; preds = %else, %tailrecurse
  %"10773.ph" = phi i1 [ false, %else ], [ true, %tailrecurse ]
  br label %ifcont5

ifcont5:                                          ; preds = %ifcont5.loopexit, %entry
  %"10773" = phi i1 [ true, %entry ], [ %"10773.ph", %ifcont5.loopexit ]
  ret i1 %"10773"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6228.V2637.is_outside(i32* nocapture readonly %V7783.V4192.m, float %V7784.V4193.q0, float %V7785.V4194.q1, float %V7786.V4195.q2) #1 {
entry:
  %"124581.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 5
  %0 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %0, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V7788.V4196.p0 = fsub float %V7784.V4193.q0, %"1247712.i"
  %"12429.i" = getelementptr inbounds float, float* %"1245862.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %V7790.V4197.p1 = fsub float %V7785.V4194.q1, %"1242912.i"
  %"12381.i" = getelementptr inbounds float, float* %"1245862.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V7792.V4198.p2 = fsub float %V7786.V4195.q2, %"1238112.i"
  %"12814.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else2 [
    i32 1, label %then
    i32 2, label %then1
  ]

then:                                             ; preds = %entry
  %1 = fcmp ogt float %V7788.V4196.p0, 0.000000e+00
  %"13207.i.i" = fsub float -0.000000e+00, %V7788.V4196.p0
  %"13205.i.i" = select i1 %1, float %V7788.V4196.p0, float %"13207.i.i"
  %"126431.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 4
  %2 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %2, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %3 = fcmp olt float %"13205.i.i", %"1266512.i.i"
  br i1 %3, label %else.i, label %V6225.V2634.is_rect_outside.exit

else.i:                                           ; preds = %then
  %4 = fcmp ogt float %V7790.V4197.p1, 0.000000e+00
  %"13207.i3.i" = fsub float -0.000000e+00, %V7790.V4197.p1
  %"13205.i4.i" = select i1 %4, float %V7790.V4197.p1, float %"13207.i3.i"
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %5 = fcmp olt float %"13205.i4.i", %"1261712.i.i"
  br i1 %5, label %else2.i, label %V6225.V2634.is_rect_outside.exit

else2.i:                                          ; preds = %else.i
  %6 = fcmp ogt float %V7792.V4198.p2, 0.000000e+00
  %"13207.i1.i" = fsub float -0.000000e+00, %V7792.V4198.p2
  %"13205.i2.i" = select i1 %6, float %V7792.V4198.p2, float %"13207.i1.i"
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %phitmp.i = fcmp uge float %"13205.i2.i", %"1256912.i.i"
  br label %V6225.V2634.is_rect_outside.exit

V6225.V2634.is_rect_outside.exit:                 ; preds = %then, %else.i, %else2.i
  %V7825.V4230.1492.i = phi i1 [ true, %then ], [ %phitmp.i, %else2.i ], [ true, %else.i ]
  %"12741.i.i5" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 6
  %"127417.i.i6" = load i32, i32* %"12741.i.i5", align 4
  %7 = and i32 %"127417.i.i6", 1
  %"12742.i.i7" = icmp ne i32 %7, 0
  %"10795.V7827.V4232.1491.i" = xor i1 %V7825.V4230.1492.i, %"12742.i.i7"
  br label %ifcont3

then1:                                            ; preds = %entry
  %"125031.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 4
  %"12503.i.i" = bitcast i32* %"125031.i.i" to i32**
  %"125035.i.i" = load i32*, i32** %"12503.i.i", align 4
  %"13012.i.i" = bitcast i32* %"125035.i.i" to float*
  %"130131.i.i" = load float, float* %"13012.i.i", align 4
  %V9488.V5899.525.i.i = fmul float %V7788.V4196.p0, %"130131.i.i"
  %"130161.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 1
  %"13016.i.i" = bitcast i32* %"130161.i.i" to float*
  %"130162.i.i" = load float, float* %"13016.i.i", align 4
  %V9491.V5900.526.i.i = fmul float %V7790.V4197.p1, %"130162.i.i"
  %V9492.V5895.529.i.i = fadd float %V9488.V5899.525.i.i, %V9491.V5900.526.i.i
  %"130192.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 2
  %"13019.i.i" = bitcast i32* %"130192.i.i" to float*
  %"130193.i.i" = load float, float* %"13019.i.i", align 4
  %V9495.V5896.530.i.i = fmul float %V7792.V4198.p2, %"130193.i.i"
  %"13021.i.i" = fadd float %V9492.V5895.529.i.i, %V9495.V5896.530.i.i
  %"12741.i.i1" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 6
  %"127417.i.i2" = load i32, i32* %"12741.i.i1", align 4
  %8 = and i32 %"127417.i.i2", 1
  %"12742.i.i3" = icmp ne i32 %8, 0
  %9 = fcmp olt float %"13021.i.i", 0.000000e+00
  %V9643.V6052.y.13158.i.i4 = xor i1 %"12742.i.i3", %9
  %"10789.i" = xor i1 %V9643.V6052.y.13158.i.i4, true
  br label %ifcont3

else2:                                            ; preds = %entry
  %"13208.i.i.i" = fmul float %V7788.V4196.p0, %V7788.V4196.p0
  %"126431.i.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 4
  %10 = bitcast i32* %"126431.i.i.i" to float**
  %"1264352.i.i.i" = load float*, float** %10, align 4
  %"1266512.i.i.i" = load float, float* %"1264352.i.i.i", align 4
  %V8464.V4889.985.i.i = fmul float %"13208.i.i.i", %"1266512.i.i.i"
  %"13208.i2.i.i" = fmul float %V7790.V4197.p1, %V7790.V4197.p1
  %"12617.i.i.i" = getelementptr inbounds float, float* %"1264352.i.i.i", i32 1
  %"1261712.i.i.i" = load float, float* %"12617.i.i.i", align 4
  %V8467.V4890.986.i.i = fmul float %"13208.i2.i.i", %"1261712.i.i.i"
  %V8468.V4885.989.i.i = fadd float %V8464.V4889.985.i.i, %V8467.V4890.986.i.i
  %"13208.i1.i.i" = fmul float %V7792.V4198.p2, %V7792.V4198.p2
  %"12569.i.i.i" = getelementptr inbounds float, float* %"1264352.i.i.i", i32 2
  %"1256912.i.i.i" = load float, float* %"12569.i.i.i", align 4
  %V8471.V4886.990.i.i = fmul float %"13208.i1.i.i", %"1256912.i.i.i"
  %V8472.V4871.diag_part.i.i = fadd float %V8468.V4885.989.i.i, %V8471.V4886.990.i.i
  %"12688.i.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 3
  %"126884.i.i.i" = load i32, i32* %"12688.i.i.i", align 4
  %11 = icmp eq i32 %"126884.i.i.i", 0
  br i1 %11, label %V6227.V2636.is_second_outside.exit, label %else.i.i

else.i.i:                                         ; preds = %else2
  %V8475.V4883.993.i.i = fmul float %V7790.V4197.p1, %V7792.V4198.p2
  %"120861.i.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 9
  %12 = bitcast i32* %"120861.i.i.i" to float**
  %"12086102.i.i.i" = load float*, float** %12, align 4
  %"1209312.i.i.i" = load float, float* %"12086102.i.i.i", align 4
  %V8477.V4882.995.i.i = fmul float %V8475.V4883.993.i.i, %"1209312.i.i.i"
  %V8478.V4878.998.i.i = fadd float %V8472.V4871.diag_part.i.i, %V8477.V4882.995.i.i
  %V8479.V4880.996.i.i = fmul float %V7788.V4196.p0, %V7792.V4198.p2
  %"12045.i.i.i" = getelementptr inbounds float, float* %"12086102.i.i.i", i32 1
  %"1204512.i.i.i" = load float, float* %"12045.i.i.i", align 4
  %V8481.V4879.999.i.i = fmul float %V8479.V4880.996.i.i, %"1204512.i.i.i"
  %V8482.V4874.1002.i.i = fadd float %V8478.V4878.998.i.i, %V8481.V4879.999.i.i
  %V8483.V4876.1000.i.i = fmul float %V7788.V4196.p0, %V7790.V4197.p1
  %"11997.i.i.i" = getelementptr inbounds float, float* %"12086102.i.i.i", i32 2
  %"1199712.i.i.i" = load float, float* %"11997.i.i.i", align 4
  %V8485.V4875.1003.i.i = fmul float %V8483.V4876.1000.i.i, %"1199712.i.i.i"
  %"11258.i.i" = fadd float %V8482.V4874.1002.i.i, %V8485.V4875.1003.i.i
  br label %V6227.V2636.is_second_outside.exit

V6227.V2636.is_second_outside.exit:               ; preds = %else2, %else.i.i
  %"11256.i.i" = phi float [ %"11258.i.i", %else.i.i ], [ %V8472.V4871.diag_part.i.i, %else2 ]
  %13 = icmp eq i32 %"128142.i", 3
  %"10786.i" = fadd float %"11256.i.i", -1.000000e+00
  %V7803.V4210.w2.i = select i1 %13, float %"10786.i", float %"11256.i.i"
  %"12741.i.i" = getelementptr inbounds i32, i32* %V7783.V4192.m, i32 6
  %"127417.i.i" = load i32, i32* %"12741.i.i", align 4
  %14 = and i32 %"127417.i.i", 1
  %"12742.i.i" = icmp ne i32 %14, 0
  %15 = fcmp olt float %V7803.V4210.w2.i, 0.000000e+00
  %V9643.V6052.y.13158.i.i = xor i1 %"12742.i.i", %15
  %"10788.i" = xor i1 %V9643.V6052.y.13158.i.i, true
  br label %ifcont3

ifcont3:                                          ; preds = %then1, %V6227.V2636.is_second_outside.exit, %V6225.V2634.is_rect_outside.exit
  %"10781" = phi i1 [ %"10795.V7827.V4232.1491.i", %V6225.V2634.is_rect_outside.exit ], [ %"10789.i", %then1 ], [ %"10788.i", %V6227.V2636.is_second_outside.exit ]
  ret i1 %"10781"
}

; Function Attrs: norecurse nounwind readonly
define float @V6167.V2576.o_param_x(i32* nocapture readonly %V9230.V5639.m) #1 {
entry:
  %"124581" = getelementptr inbounds i32, i32* %V9230.V5639.m, i32 5
  %0 = bitcast i32* %"124581" to float**
  %"1245862" = load float*, float** %0, align 4
  %"1247712" = load float, float* %"1245862", align 4
  ret float %"1247712"
}

; Function Attrs: norecurse nounwind readonly
define float @V6168.V2577.o_param_y(i32* nocapture readonly %V9216.V5625.m) #1 {
entry:
  %"124101" = getelementptr inbounds i32, i32* %V9216.V5625.m, i32 5
  %0 = bitcast i32* %"124101" to float**
  %"1241062" = load float*, float** %0, align 4
  %"12429" = getelementptr inbounds float, float* %"1241062", i32 1
  %"1242912" = load float, float* %"12429", align 4
  ret float %"1242912"
}

; Function Attrs: norecurse nounwind readonly
define float @V6169.V2578.o_param_z(i32* nocapture readonly %V9202.V5611.m) #1 {
entry:
  %"123621" = getelementptr inbounds i32, i32* %V9202.V5611.m, i32 5
  %0 = bitcast i32* %"123621" to float**
  %"1236262" = load float*, float** %0, align 4
  %"12381" = getelementptr inbounds float, float* %"1236262", i32 2
  %"1238112" = load float, float* %"12381", align 4
  ret float %"1238112"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6159.V2568.o_form(i32* nocapture readonly %V9338.V5747.m) #1 {
entry:
  %"12814" = getelementptr inbounds i32, i32* %V9338.V5747.m, i32 1
  %"128142" = load i32, i32* %"12814", align 4
  ret i32 %"128142"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6225.V2634.is_rect_outside(i32* nocapture readonly %V7817.V4226.m, float %V7818.V4227.p0, float %V7819.V4228.p1, float %V7820.V4229.p2) #1 {
entry:
  %0 = fcmp ogt float %V7818.V4227.p0, 0.000000e+00
  %"13207.i" = fsub float -0.000000e+00, %V7818.V4227.p0
  %"13205.i" = select i1 %0, float %V7818.V4227.p0, float %"13207.i"
  %"126431.i" = getelementptr inbounds i32, i32* %V7817.V4226.m, i32 4
  %1 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %1, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %2 = fcmp olt float %"13205.i", %"1266512.i"
  br i1 %2, label %else, label %ifcont3

else:                                             ; preds = %entry
  %3 = fcmp ogt float %V7819.V4228.p1, 0.000000e+00
  %"13207.i3" = fsub float -0.000000e+00, %V7819.V4228.p1
  %"13205.i4" = select i1 %3, float %V7819.V4228.p1, float %"13207.i3"
  %"12617.i" = getelementptr inbounds float, float* %"1264352.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %4 = fcmp olt float %"13205.i4", %"1261712.i"
  br i1 %4, label %else2, label %ifcont3

else2:                                            ; preds = %else
  %5 = fcmp ogt float %V7820.V4229.p2, 0.000000e+00
  %"13207.i1" = fsub float -0.000000e+00, %V7820.V4229.p2
  %"13205.i2" = select i1 %5, float %V7820.V4229.p2, float %"13207.i1"
  %"12569.i" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %phitmp = fcmp uge float %"13205.i2", %"1256912.i"
  br label %ifcont3

ifcont3:                                          ; preds = %else, %entry, %else2
  %V7825.V4230.1492 = phi i1 [ true, %entry ], [ %phitmp, %else2 ], [ true, %else ]
  %"12741.i" = getelementptr inbounds i32, i32* %V7817.V4226.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %6 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %6, 0
  %"10795.V7827.V4232.1491" = xor i1 %V7825.V4230.1492, %"12742.i"
  ret i1 %"10795.V7827.V4232.1491"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6226.V2635.is_plane_outside(i32* nocapture readonly %V7808.V4217.m, float %V7809.V4218.p0, float %V7810.V4219.p1, float %V7811.V4220.p2) #1 {
entry:
  %"125031.i" = getelementptr inbounds i32, i32* %V7808.V4217.m, i32 4
  %"12503.i" = bitcast i32* %"125031.i" to i32**
  %"125035.i" = load i32*, i32** %"12503.i", align 4
  %"13012.i" = bitcast i32* %"125035.i" to float*
  %"130131.i" = load float, float* %"13012.i", align 4
  %V9488.V5899.525.i = fmul float %"130131.i", %V7809.V4218.p0
  %"130161.i" = getelementptr inbounds i32, i32* %"125035.i", i32 1
  %"13016.i" = bitcast i32* %"130161.i" to float*
  %"130162.i" = load float, float* %"13016.i", align 4
  %V9491.V5900.526.i = fmul float %"130162.i", %V7810.V4219.p1
  %V9492.V5895.529.i = fadd float %V9488.V5899.525.i, %V9491.V5900.526.i
  %"130192.i" = getelementptr inbounds i32, i32* %"125035.i", i32 2
  %"13019.i" = bitcast i32* %"130192.i" to float*
  %"130193.i" = load float, float* %"13019.i", align 4
  %V9495.V5896.530.i = fmul float %"130193.i", %V7811.V4220.p2
  %"13021.i" = fadd float %V9492.V5895.529.i, %V9495.V5896.530.i
  %"12741.i" = getelementptr inbounds i32, i32* %V7808.V4217.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %0 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %0, 0
  %1 = fcmp olt float %"13021.i", 0.000000e+00
  %V9643.V6052.y.13158.i = xor i1 %"12742.i", %1
  %"10789" = xor i1 %V9643.V6052.y.13158.i, true
  ret i1 %"10789"
}

; Function Attrs: norecurse nounwind readonly
define i1 @V6227.V2636.is_second_outside(i32* nocapture readonly %V7796.V4205.m, float %V7797.V4206.p0, float %V7798.V4207.p1, float %V7799.V4208.p2) #1 {
entry:
  %"13208.i.i" = fmul float %V7797.V4206.p0, %V7797.V4206.p0
  %"126431.i.i" = getelementptr inbounds i32, i32* %V7796.V4205.m, i32 4
  %0 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %0, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8464.V4889.985.i = fmul float %"13208.i.i", %"1266512.i.i"
  %"13208.i2.i" = fmul float %V7798.V4207.p1, %V7798.V4207.p1
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8467.V4890.986.i = fmul float %"13208.i2.i", %"1261712.i.i"
  %V8468.V4885.989.i = fadd float %V8464.V4889.985.i, %V8467.V4890.986.i
  %"13208.i1.i" = fmul float %V7799.V4208.p2, %V7799.V4208.p2
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8471.V4886.990.i = fmul float %"13208.i1.i", %"1256912.i.i"
  %V8472.V4871.diag_part.i = fadd float %V8468.V4885.989.i, %V8471.V4886.990.i
  %"12688.i.i" = getelementptr inbounds i32, i32* %V7796.V4205.m, i32 3
  %"126884.i.i" = load i32, i32* %"12688.i.i", align 4
  %1 = icmp eq i32 %"126884.i.i", 0
  br i1 %1, label %V6207.V2616.quadratic.exit, label %else.i

else.i:                                           ; preds = %entry
  %V8475.V4883.993.i = fmul float %V7798.V4207.p1, %V7799.V4208.p2
  %"120861.i.i" = getelementptr inbounds i32, i32* %V7796.V4205.m, i32 9
  %2 = bitcast i32* %"120861.i.i" to float**
  %"12086102.i.i" = load float*, float** %2, align 4
  %"1209312.i.i" = load float, float* %"12086102.i.i", align 4
  %V8477.V4882.995.i = fmul float %V8475.V4883.993.i, %"1209312.i.i"
  %V8478.V4878.998.i = fadd float %V8472.V4871.diag_part.i, %V8477.V4882.995.i
  %V8479.V4880.996.i = fmul float %V7797.V4206.p0, %V7799.V4208.p2
  %"12045.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 1
  %"1204512.i.i" = load float, float* %"12045.i.i", align 4
  %V8481.V4879.999.i = fmul float %V8479.V4880.996.i, %"1204512.i.i"
  %V8482.V4874.1002.i = fadd float %V8478.V4878.998.i, %V8481.V4879.999.i
  %V8483.V4876.1000.i = fmul float %V7797.V4206.p0, %V7798.V4207.p1
  %"11997.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 2
  %"1199712.i.i" = load float, float* %"11997.i.i", align 4
  %V8485.V4875.1003.i = fmul float %V8483.V4876.1000.i, %"1199712.i.i"
  %"11258.i" = fadd float %V8482.V4874.1002.i, %V8485.V4875.1003.i
  br label %V6207.V2616.quadratic.exit

V6207.V2616.quadratic.exit:                       ; preds = %entry, %else.i
  %"11256.i" = phi float [ %"11258.i", %else.i ], [ %V8472.V4871.diag_part.i, %entry ]
  %"12814.i" = getelementptr inbounds i32, i32* %V7796.V4205.m, i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  %3 = icmp eq i32 %"128142.i", 3
  %"10786" = fadd float %"11256.i", -1.000000e+00
  %V7803.V4210.w2 = select i1 %3, float %"10786", float %"11256.i"
  %"12741.i" = getelementptr inbounds i32, i32* %V7796.V4205.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %4 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %4, 0
  %5 = fcmp olt float %V7803.V4210.w2, 0.000000e+00
  %V9643.V6052.y.13158.i = xor i1 %"12742.i", %5
  %"10788" = xor i1 %V9643.V6052.y.13158.i, true
  ret i1 %"10788"
}

; Function Attrs: norecurse nounwind readonly
define float @V6207.V2616.quadratic(i32* nocapture readonly %V8458.V4867.m, float %V8459.V4868.v0, float %V8460.V4869.v1, float %V8461.V4870.v2) #1 {
entry:
  %"13208.i" = fmul float %V8459.V4868.v0, %V8459.V4868.v0
  %"126431.i" = getelementptr inbounds i32, i32* %V8458.V4867.m, i32 4
  %0 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %0, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %V8464.V4889.985 = fmul float %"13208.i", %"1266512.i"
  %"13208.i2" = fmul float %V8460.V4869.v1, %V8460.V4869.v1
  %"12617.i" = getelementptr inbounds float, float* %"1264352.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %V8467.V4890.986 = fmul float %"13208.i2", %"1261712.i"
  %V8468.V4885.989 = fadd float %V8464.V4889.985, %V8467.V4890.986
  %"13208.i1" = fmul float %V8461.V4870.v2, %V8461.V4870.v2
  %"12569.i" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %V8471.V4886.990 = fmul float %"13208.i1", %"1256912.i"
  %V8472.V4871.diag_part = fadd float %V8468.V4885.989, %V8471.V4886.990
  %"12688.i" = getelementptr inbounds i32, i32* %V8458.V4867.m, i32 3
  %"126884.i" = load i32, i32* %"12688.i", align 4
  %1 = icmp eq i32 %"126884.i", 0
  br i1 %1, label %ifcont, label %else

else:                                             ; preds = %entry
  %V8475.V4883.993 = fmul float %V8460.V4869.v1, %V8461.V4870.v2
  %"120861.i" = getelementptr inbounds i32, i32* %V8458.V4867.m, i32 9
  %2 = bitcast i32* %"120861.i" to float**
  %"12086102.i" = load float*, float** %2, align 4
  %"1209312.i" = load float, float* %"12086102.i", align 4
  %V8477.V4882.995 = fmul float %V8475.V4883.993, %"1209312.i"
  %V8478.V4878.998 = fadd float %V8472.V4871.diag_part, %V8477.V4882.995
  %V8479.V4880.996 = fmul float %V8459.V4868.v0, %V8461.V4870.v2
  %"12045.i" = getelementptr inbounds float, float* %"12086102.i", i32 1
  %"1204512.i" = load float, float* %"12045.i", align 4
  %V8481.V4879.999 = fmul float %V8479.V4880.996, %"1204512.i"
  %V8482.V4874.1002 = fadd float %V8478.V4878.998, %V8481.V4879.999
  %V8483.V4876.1000 = fmul float %V8459.V4868.v0, %V8460.V4869.v1
  %"11997.i" = getelementptr inbounds float, float* %"12086102.i", i32 2
  %"1199712.i" = load float, float* %"11997.i", align 4
  %V8485.V4875.1003 = fmul float %V8483.V4876.1000, %"1199712.i"
  %"11258" = fadd float %V8482.V4874.1002, %V8485.V4875.1003
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %"11256" = phi float [ %"11258", %else ], [ %V8472.V4871.diag_part, %entry ]
  ret float %"11256"
}

; Function Attrs: norecurse nounwind readnone
define i1 @V6140.V2549.xor(i1 %V9642.V6051.x, i1 %V9643.V6052.y) #3 {
entry:
  %V9643.V6052.y.13158 = xor i1 %V9642.V6051.x, %V9643.V6052.y
  ret i1 %V9643.V6052.y.13158
}

; Function Attrs: norecurse nounwind readnone
define float @V6130.V2539.fsqr(float %V9717.V6126.x) #3 {
entry:
  %"13208" = fmul float %V9717.V6126.x, %V9717.V6126.x
  ret float %"13208"
}

; Function Attrs: norecurse nounwind readonly
define float @V6163.V2572.o_param_a(i32* nocapture readonly %V9285.V5694.m) #1 {
entry:
  %"126431" = getelementptr inbounds i32, i32* %V9285.V5694.m, i32 4
  %0 = bitcast i32* %"126431" to float**
  %"1264352" = load float*, float** %0, align 4
  %"1266512" = load float, float* %"1264352", align 4
  ret float %"1266512"
}

; Function Attrs: norecurse nounwind readonly
define float @V6164.V2573.o_param_b(i32* nocapture readonly %V9271.V5680.m) #1 {
entry:
  %"125951" = getelementptr inbounds i32, i32* %V9271.V5680.m, i32 4
  %0 = bitcast i32* %"125951" to float**
  %"1259552" = load float*, float** %0, align 4
  %"12617" = getelementptr inbounds float, float* %"1259552", i32 1
  %"1261712" = load float, float* %"12617", align 4
  ret float %"1261712"
}

; Function Attrs: norecurse nounwind readonly
define float @V6165.V2574.o_param_c(i32* nocapture readonly %V9257.V5666.m) #1 {
entry:
  %"125471" = getelementptr inbounds i32, i32* %V9257.V5666.m, i32 4
  %0 = bitcast i32* %"125471" to float**
  %"1254752" = load float*, float** %0, align 4
  %"12569" = getelementptr inbounds float, float* %"1254752", i32 2
  %"1256912" = load float, float* %"12569", align 4
  ret float %"1256912"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6162.V2571.o_isrot(i32* nocapture readonly %V9299.V5708.m) #1 {
entry:
  %"12688" = getelementptr inbounds i32, i32* %V9299.V5708.m, i32 3
  %"126884" = load i32, i32* %"12688", align 4
  ret i32 %"126884"
}

; Function Attrs: norecurse nounwind readonly
define float @V6175.V2584.o_param_r1(i32* nocapture readonly %V9118.V5527.m) #1 {
entry:
  %"120861" = getelementptr inbounds i32, i32* %V9118.V5527.m, i32 9
  %0 = bitcast i32* %"120861" to float**
  %"12086102" = load float*, float** %0, align 4
  %"1209312" = load float, float* %"12086102", align 4
  ret float %"1209312"
}

; Function Attrs: norecurse nounwind readonly
define float @V6176.V2585.o_param_r2(i32* nocapture readonly %V9104.V5513.m) #1 {
entry:
  %"120381" = getelementptr inbounds i32, i32* %V9104.V5513.m, i32 9
  %0 = bitcast i32* %"120381" to float**
  %"12038102" = load float*, float** %0, align 4
  %"12045" = getelementptr inbounds float, float* %"12038102", i32 1
  %"1204512" = load float, float* %"12045", align 4
  ret float %"1204512"
}

; Function Attrs: norecurse nounwind readonly
define float @V6177.V2586.o_param_r3(i32* nocapture readonly %V9090.V5499.m) #1 {
entry:
  %"119901" = getelementptr inbounds i32, i32* %V9090.V5499.m, i32 9
  %0 = bitcast i32* %"119901" to float**
  %"11990102" = load float*, float** %0, align 4
  %"11997" = getelementptr inbounds float, float* %"11990102", i32 2
  %"1199712" = load float, float* %"11997", align 4
  ret float %"1199712"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6166.V2575.o_param_abc(i32* nocapture readonly %V9244.V5653.m) #1 {
entry:
  %"125031" = getelementptr inbounds i32, i32* %V9244.V5653.m, i32 4
  %"12503" = bitcast i32* %"125031" to i32**
  %"125035" = load i32*, i32** %"12503", align 4
  ret i32* %"125035"
}

; Function Attrs: norecurse nounwind readonly
define float @V6152.V2561.veciprod2(i32* nocapture readonly %V9482.V5891.v, float %V9483.V5892.w0, float %V9484.V5893.w1, float %V9485.V5894.w2) #1 {
entry:
  %"13012" = bitcast i32* %V9482.V5891.v to float*
  %"130131" = load float, float* %"13012", align 4
  %V9488.V5899.525 = fmul float %"130131", %V9483.V5892.w0
  %"130161" = getelementptr inbounds i32, i32* %V9482.V5891.v, i32 1
  %"13016" = bitcast i32* %"130161" to float*
  %"130162" = load float, float* %"13016", align 4
  %V9491.V5900.526 = fmul float %"130162", %V9484.V5893.w1
  %V9492.V5895.529 = fadd float %V9488.V5899.525, %V9491.V5900.526
  %"130192" = getelementptr inbounds i32, i32* %V9482.V5891.v, i32 2
  %"13019" = bitcast i32* %"130192" to float*
  %"130193" = load float, float* %"13019", align 4
  %V9495.V5896.530 = fmul float %"130193", %V9485.V5894.w2
  %"13021" = fadd float %V9492.V5895.529, %V9495.V5896.530
  ret float %"13021"
}

; Function Attrs: norecurse nounwind readnone
define float @V6131.V2540.fabs(float %V9714.V6123.x) #3 {
entry:
  %0 = fcmp ogt float %V9714.V6123.x, 0.000000e+00
  %"13207" = fsub float -0.000000e+00, %V9714.V6123.x
  %"13205" = select i1 %0, float %V9714.V6123.x, float %"13207"
  ret float %"13205"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6189.V2598.d_const(i32* nocapture readonly %V8976.V5385.d) #1 {
entry:
  %"116021" = getelementptr inbounds i32, i32* %V8976.V5385.d, i32 1
  %"11602" = bitcast i32* %"116021" to i32**
  %"116022" = load i32*, i32** %"11602", align 4
  ret i32* %"116022"
}

; Function Attrs: norecurse nounwind
define i32 @V6211.V2620.solver_rect_fast(i32* nocapture readonly %V8269.V4678.m, i32* nocapture readonly %V8270.V4679.v, i32* nocapture readonly %V8271.V4680.dconst, float %V8272.V4681.b0, float %V8273.V4682.b1, float %V8274.V4683.b2) #0 {
entry:
  %"11137" = bitcast i32* %V8271.V4680.dconst to float*
  %"111381" = load float, float* %"11137", align 4
  %V8277.V4766.1074 = fsub float %"111381", %V8272.V4681.b0
  %"111411" = getelementptr inbounds i32, i32* %V8271.V4680.dconst, i32 1
  %"11141" = bitcast i32* %"111411" to float*
  %"111412" = load float, float* %"11141", align 4
  %V8280.V4684.d0 = fmul float %V8277.V4766.1074, %"111412"
  %"11143" = bitcast i32* %V8270.V4679.v to float*
  %"111442" = getelementptr inbounds i32, i32* %V8270.V4679.v, i32 1
  %"11144" = bitcast i32* %"111442" to float*
  %"111443" = load float, float* %"11144", align 4
  %V8283.V4763.1078 = fmul float %V8280.V4684.d0, %"111443"
  %V8284.V4762.1079 = fadd float %V8283.V4763.1078, %V8273.V4682.b1
  %0 = fcmp ogt float %V8284.V4762.1079, 0.000000e+00
  %"13207.i" = fsub float -0.000000e+00, %V8284.V4762.1079
  %"13205.i" = select i1 %0, float %V8284.V4762.1079, float %"13207.i"
  %"125951.i29" = getelementptr inbounds i32, i32* %V8269.V4678.m, i32 4
  %1 = bitcast i32* %"125951.i29" to float**
  %"1259552.i30" = load float*, float** %1, align 4
  %"12617.i31" = getelementptr inbounds float, float* %"1259552.i30", i32 1
  %"1261712.i32" = load float, float* %"12617.i31", align 4
  %2 = fcmp olt float %"13205.i", %"1261712.i32"
  br i1 %2, label %else, label %then9

else:                                             ; preds = %entry
  %"111483" = getelementptr inbounds i32, i32* %V8270.V4679.v, i32 2
  %"11148" = bitcast i32* %"111483" to float*
  %"111484" = load float, float* %"11148", align 4
  %V8353.V4757.1084 = fmul float %V8280.V4684.d0, %"111484"
  %V8354.V4756.1085 = fadd float %V8353.V4757.1084, %V8274.V4683.b2
  %3 = fcmp ogt float %V8354.V4756.1085, 0.000000e+00
  %"13207.i27" = fsub float -0.000000e+00, %V8354.V4756.1085
  %"13205.i28" = select i1 %3, float %V8354.V4756.1085, float %"13207.i27"
  %"12569.i25" = getelementptr inbounds float, float* %"1259552.i30", i32 2
  %"1256912.i26" = load float, float* %"12569.i25", align 4
  %4 = fcmp olt float %"13205.i28", %"1256912.i26"
  %"11155" = fcmp une float %"111412", 0.000000e+00
  %or.cond = and i1 %"11155", %4
  br i1 %or.cond, label %else38, label %then9

then9:                                            ; preds = %else, %entry
  %"111584" = getelementptr inbounds i32, i32* %V8271.V4680.dconst, i32 2
  %"11158" = bitcast i32* %"111584" to float*
  %"1115810" = load float, float* %"11158", align 4
  %V8295.V4742.1099 = fsub float %"1115810", %V8273.V4682.b1
  %"111615" = getelementptr inbounds i32, i32* %V8271.V4680.dconst, i32 3
  %"11161" = bitcast i32* %"111615" to float*
  %"1116111" = load float, float* %"11161", align 4
  %V8298.V4689.d1 = fmul float %V8295.V4742.1099, %"1116111"
  %"1116412" = load float, float* %"11143", align 4
  %V8301.V4739.1103 = fmul float %V8298.V4689.d1, %"1116412"
  %V8302.V4738.1104 = fadd float %V8301.V4739.1103, %V8272.V4681.b0
  %5 = fcmp ogt float %V8302.V4738.1104, 0.000000e+00
  %"13207.i21" = fsub float -0.000000e+00, %V8302.V4738.1104
  %"13205.i22" = select i1 %5, float %V8302.V4738.1104, float %"13207.i21"
  %"1266512.i20" = load float, float* %"1259552.i30", align 4
  %6 = fcmp olt float %"13205.i22", %"1266512.i20"
  br i1 %6, label %else14, label %then21

else14:                                           ; preds = %then9
  %"111686" = getelementptr inbounds i32, i32* %V8270.V4679.v, i32 2
  %"11168" = bitcast i32* %"111686" to float*
  %"1116815" = load float, float* %"11168", align 4
  %V8342.V4733.1109 = fmul float %V8298.V4689.d1, %"1116815"
  %V8343.V4732.1110 = fadd float %V8342.V4733.1109, %V8274.V4683.b2
  %7 = fcmp ogt float %V8343.V4732.1110, 0.000000e+00
  %"13207.i16" = fsub float -0.000000e+00, %V8343.V4732.1110
  %"13205.i17" = select i1 %7, float %V8343.V4732.1110, float %"13207.i16"
  %"12569.i" = getelementptr inbounds float, float* %"1259552.i30", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %8 = fcmp olt float %"13205.i17", %"1256912.i"
  %"11175" = fcmp une float %"1116111", 0.000000e+00
  %or.cond33 = and i1 %"11175", %8
  br i1 %or.cond33, label %else36, label %then21

then21:                                           ; preds = %else14, %then9
  %"111787" = getelementptr inbounds i32, i32* %V8271.V4680.dconst, i32 4
  %"11178" = bitcast i32* %"111787" to float*
  %"1117822" = load float, float* %"11178", align 4
  %V8313.V4718.1124 = fsub float %"1117822", %V8274.V4683.b2
  %"111818" = getelementptr inbounds i32, i32* %V8271.V4680.dconst, i32 5
  %"11181" = bitcast i32* %"111818" to float*
  %"1118123" = load float, float* %"11181", align 4
  %V8316.V4694.d2 = fmul float %V8313.V4718.1124, %"1118123"
  %V8319.V4715.1128 = fmul float %V8316.V4694.d2, %"1116412"
  %V8320.V4714.1129 = fadd float %V8319.V4715.1128, %V8272.V4681.b0
  %9 = fcmp ogt float %V8320.V4714.1129, 0.000000e+00
  %"13207.i14" = fsub float -0.000000e+00, %V8320.V4714.1129
  %"13205.i15" = select i1 %9, float %V8320.V4714.1129, float %"13207.i14"
  %10 = fcmp olt float %"13205.i15", %"1266512.i20"
  br i1 %10, label %else26, label %ifcont39

else26:                                           ; preds = %then21
  %V8331.V4709.1134 = fmul float %V8316.V4694.d2, %"111443"
  %V8332.V4708.1135 = fadd float %V8331.V4709.1134, %V8273.V4682.b1
  %11 = fcmp ogt float %V8332.V4708.1135, 0.000000e+00
  %"13207.i12" = fsub float -0.000000e+00, %V8332.V4708.1135
  %"13205.i13" = select i1 %11, float %V8332.V4708.1135, float %"13207.i12"
  %12 = fcmp olt float %"13205.i13", %"1261712.i32"
  %"11195" = fcmp une float %"1118123", 0.000000e+00
  %or.cond34 = and i1 %"11195", %12
  br i1 %or.cond34, label %else34, label %ifcont39

else34:                                           ; preds = %else26
  store float %V8316.V4694.d2, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont39

else36:                                           ; preds = %else14
  store float %V8298.V4689.d1, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont39

else38:                                           ; preds = %else
  store float %V8280.V4684.d0, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont39

ifcont39:                                         ; preds = %else26, %then21, %else36, %else34, %else38
  %"11156" = phi i32 [ 1, %else38 ], [ 2, %else36 ], [ 3, %else34 ], [ 0, %then21 ], [ 0, %else26 ]
  ret i32 %"11156"
}

; Function Attrs: norecurse nounwind
define i32 @V6212.V2621.solver_surface_fast(i32* nocapture readnone %V8247.V4656.m, i32* nocapture readonly %V8248.V4657.dconst, float %V8249.V4658.b0, float %V8250.V4659.b1, float %V8251.V4660.b2) #0 {
entry:
  %"11120" = bitcast i32* %V8248.V4657.dconst to float*
  %"111211" = load float, float* %"11120", align 4
  %0 = fcmp olt float %"111211", 0.000000e+00
  br i1 %0, label %else, label %ifcont

else:                                             ; preds = %entry
  %"111261" = getelementptr inbounds i32, i32* %V8248.V4657.dconst, i32 1
  %"11126" = bitcast i32* %"111261" to float*
  %"111262" = load float, float* %"11126", align 4
  %V8259.V4670.1158 = fmul float %"111262", %V8249.V4658.b0
  %"111292" = getelementptr inbounds i32, i32* %V8248.V4657.dconst, i32 2
  %"11129" = bitcast i32* %"111292" to float*
  %"111293" = load float, float* %"11129", align 4
  %V8262.V4671.1159 = fmul float %"111293", %V8250.V4659.b1
  %V8263.V4666.1162 = fadd float %V8259.V4670.1158, %V8262.V4671.1159
  %"111323" = getelementptr inbounds i32, i32* %V8248.V4657.dconst, i32 3
  %"11132" = bitcast i32* %"111323" to float*
  %"111324" = load float, float* %"11132", align 4
  %V8266.V4667.1163 = fmul float %"111324", %V8251.V4660.b2
  %V8267.V4665.1165 = fadd float %V8263.V4666.1162, %V8266.V4667.1163
  store float %V8267.V4665.1165, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %"11123" = phi i32 [ 1, %else ], [ 0, %entry ]
  ret i32 %"11123"
}

; Function Attrs: norecurse nounwind
define i32 @V6213.V2622.solver_second_fast(i32* nocapture readonly %V8202.V4611.m, i32* nocapture readonly %V8203.V4612.dconst, float %V8204.V4613.b0, float %V8205.V4614.b1, float %V8206.V4615.b2) #0 {
entry:
  %"11089" = bitcast i32* %V8203.V4612.dconst to float*
  %"110901" = load float, float* %"11089", align 4
  %0 = fcmp oeq float %"110901", 0.000000e+00
  br i1 %0, label %ifcont15, label %then

then:                                             ; preds = %entry
  %"110941" = getelementptr inbounds i32, i32* %V8203.V4612.dconst, i32 1
  %"11094" = bitcast i32* %"110941" to float*
  %"110942" = load float, float* %"11094", align 4
  %V8213.V4649.1173 = fmul float %"110942", %V8204.V4613.b0
  %"110972" = getelementptr inbounds i32, i32* %V8203.V4612.dconst, i32 2
  %"11097" = bitcast i32* %"110972" to float*
  %"110973" = load float, float* %"11097", align 4
  %V8216.V4650.1174 = fmul float %"110973", %V8205.V4614.b1
  %V8217.V4645.1177 = fadd float %V8213.V4649.1173, %V8216.V4650.1174
  %"111003" = getelementptr inbounds i32, i32* %V8203.V4612.dconst, i32 3
  %"11100" = bitcast i32* %"111003" to float*
  %"111004" = load float, float* %"11100", align 4
  %V8220.V4646.1178 = fmul float %"111004", %V8206.V4615.b2
  %V8221.V4619.neg_bb = fadd float %V8217.V4645.1177, %V8220.V4646.1178
  %"13208.i.i" = fmul float %V8204.V4613.b0, %V8204.V4613.b0
  %"126431.i.i" = getelementptr inbounds i32, i32* %V8202.V4611.m, i32 4
  %1 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %1, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8464.V4889.985.i = fmul float %"13208.i.i", %"1266512.i.i"
  %"13208.i2.i" = fmul float %V8205.V4614.b1, %V8205.V4614.b1
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8467.V4890.986.i = fmul float %"13208.i2.i", %"1261712.i.i"
  %V8468.V4885.989.i = fadd float %V8464.V4889.985.i, %V8467.V4890.986.i
  %"13208.i1.i" = fmul float %V8206.V4615.b2, %V8206.V4615.b2
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8471.V4886.990.i = fmul float %"13208.i1.i", %"1256912.i.i"
  %V8472.V4871.diag_part.i = fadd float %V8468.V4885.989.i, %V8471.V4886.990.i
  %"12688.i.i" = getelementptr inbounds i32, i32* %V8202.V4611.m, i32 3
  %"126884.i.i" = load i32, i32* %"12688.i.i", align 4
  %2 = icmp eq i32 %"126884.i.i", 0
  br i1 %2, label %V6207.V2616.quadratic.exit, label %else.i

else.i:                                           ; preds = %then
  %V8475.V4883.993.i = fmul float %V8205.V4614.b1, %V8206.V4615.b2
  %"120861.i.i" = getelementptr inbounds i32, i32* %V8202.V4611.m, i32 9
  %3 = bitcast i32* %"120861.i.i" to float**
  %"12086102.i.i" = load float*, float** %3, align 4
  %"1209312.i.i" = load float, float* %"12086102.i.i", align 4
  %V8477.V4882.995.i = fmul float %V8475.V4883.993.i, %"1209312.i.i"
  %V8478.V4878.998.i = fadd float %V8472.V4871.diag_part.i, %V8477.V4882.995.i
  %V8479.V4880.996.i = fmul float %V8204.V4613.b0, %V8206.V4615.b2
  %"12045.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 1
  %"1204512.i.i" = load float, float* %"12045.i.i", align 4
  %V8481.V4879.999.i = fmul float %V8479.V4880.996.i, %"1204512.i.i"
  %V8482.V4874.1002.i = fadd float %V8478.V4878.998.i, %V8481.V4879.999.i
  %V8483.V4876.1000.i = fmul float %V8204.V4613.b0, %V8205.V4614.b1
  %"11997.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 2
  %"1199712.i.i" = load float, float* %"11997.i.i", align 4
  %V8485.V4875.1003.i = fmul float %V8483.V4876.1000.i, %"1199712.i.i"
  %"11258.i" = fadd float %V8482.V4874.1002.i, %V8485.V4875.1003.i
  br label %V6207.V2616.quadratic.exit

V6207.V2616.quadratic.exit:                       ; preds = %then, %else.i
  %"11256.i" = phi float [ %"11258.i", %else.i ], [ %V8472.V4871.diag_part.i, %then ]
  %"12814.i" = getelementptr inbounds i32, i32* %V8202.V4611.m, i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  %4 = icmp eq i32 %"128142.i", 3
  %"11102" = fadd float %"11256.i", -1.000000e+00
  %V8225.V4621.cc = select i1 %4, float %"11102", float %"11256.i"
  %"13208.i" = fmul float %V8221.V4619.neg_bb, %V8221.V4619.neg_bb
  %V8227.V4641.1183 = fmul float %"110901", %V8225.V4621.cc
  %V8228.V4622.d = fsub float %"13208.i", %V8227.V4641.1183
  %5 = fcmp ogt float %V8228.V4622.d, 0.000000e+00
  br i1 %5, label %else7, label %ifcont15

else7:                                            ; preds = %V6207.V2616.quadratic.exit
  %"12741.i" = getelementptr inbounds i32, i32* %V8202.V4611.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %6 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %6, 0
  %7 = tail call float @llvm.sqrt.f32(float %V8228.V4622.d) #2
  br i1 %"12742.i", label %then8, label %else10

then8:                                            ; preds = %else7
  %V8242.V4636.1192 = fsub float %V8221.V4619.neg_bb, %7
  %"111075" = getelementptr inbounds i32, i32* %V8203.V4612.dconst, i32 4
  %"11107" = bitcast i32* %"111075" to float*
  %"111079" = load float, float* %"11107", align 4
  %V8245.V4635.1195 = fmul float %V8242.V4636.1192, %"111079"
  store float %V8245.V4635.1195, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont15

else10:                                           ; preds = %else7
  %V8236.V4630.1186 = fadd float %V8221.V4619.neg_bb, %7
  %"111134" = getelementptr inbounds i32, i32* %V8203.V4612.dconst, i32 4
  %"11113" = bitcast i32* %"111134" to float*
  %"1111311" = load float, float* %"11113", align 4
  %V8239.V4629.1189 = fmul float %V8236.V4630.1186, %"1111311"
  store float %V8239.V4629.1189, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont15

ifcont15:                                         ; preds = %V6207.V2616.quadratic.exit, %entry, %else10, %then8
  %"11092" = phi i32 [ 0, %V6207.V2616.quadratic.exit ], [ 1, %else10 ], [ 1, %then8 ], [ 0, %entry ]
  ret i32 %"11092"
}

; Function Attrs: norecurse nounwind readnone
define i1 @V6135.V2544.fiszero(float %V9706.V6115.x) #3 {
entry:
  %0 = fcmp oeq float %V9706.V6115.x, 0.000000e+00
  ret i1 %0
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6158.V2567.o_texturetype(i32* nocapture readonly %V9351.V5760.m) #1 {
entry:
  %"128551" = load i32, i32* %V9351.V5760.m, align 4
  ret i32 %"128551"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6172.V2581.o_color_red(i32* nocapture readonly %V9160.V5569.m) #1 {
entry:
  %"122271" = getelementptr inbounds i32, i32* %V9160.V5569.m, i32 8
  %"12227" = bitcast i32* %"122271" to i32**
  %"122279" = load i32*, i32** %"12227", align 4
  %"1223712" = load i32, i32* %"122279", align 4
  ret i32 %"1223712"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6173.V2582.o_color_green(i32* nocapture readonly %V9146.V5555.m) #1 {
entry:
  %"121791" = getelementptr inbounds i32, i32* %V9146.V5555.m, i32 8
  %"12179" = bitcast i32* %"121791" to i32**
  %"121799" = load i32*, i32** %"12179", align 4
  %"12189" = getelementptr inbounds i32, i32* %"121799", i32 1
  %"1218912" = load i32, i32* %"12189", align 4
  ret i32 %"1218912"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6174.V2583.o_color_blue(i32* nocapture readonly %V9132.V5541.m) #1 {
entry:
  %"121311" = getelementptr inbounds i32, i32* %V9132.V5541.m, i32 8
  %"12131" = bitcast i32* %"121311" to i32**
  %"121319" = load i32*, i32** %"12131", align 4
  %"12141" = getelementptr inbounds i32, i32* %"121319", i32 2
  %"1214112" = load i32, i32* %"12141", align 4
  ret i32 %"1214112"
}

define float @V6137.V2546.sin(float %V9689.V6098.x) {
entry:
  %0 = fcmp oge float %V9689.V6098.x, 0.000000e+00
  %. = select i1 %0, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x = fmul float %., %V9689.V6098.x
  %V9693.V6101.x = tail call float @reduction(float %V9692.V6100.x)
  %1 = fcmp oge float %V9693.V6101.x, 0x400921FB00000000
  %"13183" = fsub float -0.000000e+00, %.
  %V9698.V6105.flag = select i1 %1, float %"13183", float %.
  %"13185" = fadd float %V9693.V6101.x, 0xC00921FB00000000
  %V9699.V6106.x = select i1 %1, float %"13185", float %V9693.V6101.x
  %2 = fcmp oge float %V9699.V6106.x, 0x3FF921FB40000000
  %"13187" = fsub float 0x400921FB00000000, %V9699.V6106.x
  %V9700.V6107.x = select i1 %2, float %"13187", float %V9699.V6106.x
  %3 = fcmp ugt float %V9700.V6107.x, 0x3FE921FB40000000
  br i1 %3, label %else11, label %then10

then10:                                           ; preds = %entry
  %4 = fmul float %V9700.V6107.x, 0x3FC55555A0000000
  %5 = fmul float %V9700.V6107.x, %4
  %6 = fmul float %V9700.V6107.x, 0x3FA99999A0000000
  %7 = fmul float %V9700.V6107.x, %6
  %8 = fmul float %V9700.V6107.x, 0x3F98618480000000
  %9 = fmul float %V9700.V6107.x, %8
  %10 = fmul float %V9700.V6107.x, 0x3F8C71BB20000000
  %11 = fmul float %V9700.V6107.x, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %V9700.V6107.x, %18
  br label %ifcont12

else11:                                           ; preds = %entry
  %V9702.V6109.379 = fsub float 0x3FF921FB40000000, %V9700.V6107.x
  %20 = fmul float %V9702.V6109.379, 5.000000e-01
  %21 = fmul float %V9702.V6109.379, %20
  %22 = fmul float %V9702.V6109.379, 0x3FB55554C0000000
  %23 = fmul float %V9702.V6109.379, %22
  %24 = fmul float %V9702.V6109.379, 0x3FA1111000000000
  %25 = fmul float %V9702.V6109.379, %24
  %26 = fmul float %V9702.V6109.379, 0x3F924921C0000000
  %27 = fmul float %V9702.V6109.379, %26
  %28 = fsub float 1.000000e+00, %27
  %29 = fmul float %25, %28
  %30 = fsub float 1.000000e+00, %29
  %31 = fmul float %23, %30
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %21, %32
  %34 = fsub float 1.000000e+00, %33
  br label %ifcont12

ifcont12:                                         ; preds = %else11, %then10
  %V9701.V6108.380 = phi float [ %19, %then10 ], [ %34, %else11 ]
  %"13191" = fmul float %V9698.V6105.flag, %V9701.V6108.380
  ret float %"13191"
}

define float @V6138.V2547.cos(float %V9671.V6080.x) {
entry:
  %0 = fcmp oge float %V9671.V6080.x, 0.000000e+00
  %"13169" = fsub float -0.000000e+00, %V9671.V6080.x
  %V9674.V6082.x = select i1 %0, float %V9671.V6080.x, float %"13169"
  %V9675.V6083.x = tail call float @reduction(float %V9674.V6082.x)
  %1 = fcmp oge float %V9675.V6083.x, 0x400921FB00000000
  %. = select i1 %1, float -1.000000e+00, float 1.000000e+00
  %"13172" = fadd float %V9675.V6083.x, 0xC00921FB00000000
  %V9681.V6088.x = select i1 %1, float %"13172", float %V9675.V6083.x
  %2 = fcmp oge float %V9681.V6088.x, 0x3FF921FB40000000
  %"13174" = fsub float -0.000000e+00, %.
  %V9682.V6089.flag = select i1 %2, float %"13174", float %.
  %"13176" = fsub float 0x400921FB00000000, %V9681.V6088.x
  %V9683.V6090.x = select i1 %2, float %"13176", float %V9681.V6088.x
  %3 = fcmp ugt float %V9683.V6090.x, 0x3FE921FB40000000
  br i1 %3, label %else14, label %then13

then13:                                           ; preds = %entry
  %4 = fmul float %V9683.V6090.x, 5.000000e-01
  %5 = fmul float %V9683.V6090.x, %4
  %6 = fmul float %V9683.V6090.x, 0x3FB55554C0000000
  %7 = fmul float %V9683.V6090.x, %6
  %8 = fmul float %V9683.V6090.x, 0x3FA1111000000000
  %9 = fmul float %V9683.V6090.x, %8
  %10 = fmul float %V9683.V6090.x, 0x3F924921C0000000
  %11 = fmul float %V9683.V6090.x, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  br label %ifcont15

else14:                                           ; preds = %entry
  %V9685.V6092.386 = fsub float 0x3FF921FB40000000, %V9683.V6090.x
  %19 = fmul float %V9685.V6092.386, 0x3FC55555A0000000
  %20 = fmul float %V9685.V6092.386, %19
  %21 = fmul float %V9685.V6092.386, 0x3FA99999A0000000
  %22 = fmul float %V9685.V6092.386, %21
  %23 = fmul float %V9685.V6092.386, 0x3F98618480000000
  %24 = fmul float %V9685.V6092.386, %23
  %25 = fmul float %V9685.V6092.386, 0x3F8C71BB20000000
  %26 = fmul float %V9685.V6092.386, %25
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %24, %27
  %29 = fsub float 1.000000e+00, %28
  %30 = fmul float %22, %29
  %31 = fsub float 1.000000e+00, %30
  %32 = fmul float %20, %31
  %33 = fsub float 1.000000e+00, %32
  %34 = fmul float %V9685.V6092.386, %33
  br label %ifcont15

ifcont15:                                         ; preds = %else14, %then13
  %V9684.V6091.387 = phi float [ %18, %then13 ], [ %34, %else14 ]
  %"13180" = fmul float %V9682.V6089.flag, %V9684.V6091.387
  ret float %"13180"
}

define float @V6139.V2548.atan(float %V9645.V6054.x) {
entry:
  %0 = fcmp oge float %V9645.V6054.x, 0.000000e+00
  %. = select i1 %0, float 1.000000e+00, float -1.000000e+00
  %V9648.V6056.x = fmul float %., %V9645.V6054.x
  %1 = fcmp ugt float %V9648.V6056.x, 4.375000e-01
  br i1 %1, label %else2, label %then1

then1:                                            ; preds = %entry
  %"13161" = tail call float @kernel_atan(float %V9648.V6056.x)
  br label %ifcont9

else2:                                            ; preds = %entry
  %2 = fcmp ugt float %V9648.V6056.x, 1.000000e+00
  br i1 %2, label %else4, label %then3

then3:                                            ; preds = %else2
  %V9666.V6074.394 = fsub float 1.000000e+00, %V9648.V6056.x
  %V9668.V6075.395 = fadd float %V9648.V6056.x, 1.000000e+00
  %V9669.V6073.396 = fdiv float %V9666.V6074.394, %V9668.V6075.395
  %V9670.V6072.397 = tail call float @kernel_atan(float %V9669.V6073.396)
  %"13163" = fsub float 0x3FE921FB40000000, %V9670.V6072.397
  br label %ifcont9

else4:                                            ; preds = %else2
  %3 = fcmp ugt float %V9648.V6056.x, 0x4003504F40000000
  br i1 %3, label %else6, label %then5

then5:                                            ; preds = %else4
  %V9660.V6068.401 = fadd float %V9648.V6056.x, -1.000000e+00
  %V9662.V6069.402 = fadd float %V9648.V6056.x, 1.000000e+00
  %V9663.V6067.403 = fdiv float %V9660.V6068.401, %V9662.V6069.402
  %V9664.V6066.404 = tail call float @kernel_atan(float %V9663.V6067.403)
  %"13165" = fadd float %V9664.V6066.404, 0x3FE921FB40000000
  br label %ifcont9

else6:                                            ; preds = %else4
  %V9657.V6064.406 = fdiv float 1.000000e+00, %V9648.V6056.x
  %V9658.V6063.407 = tail call float @kernel_atan(float %V9657.V6064.406)
  %"13166" = fsub float 0x3FF921FB40000000, %V9658.V6063.407
  br label %ifcont9

ifcont9:                                          ; preds = %then3, %else6, %then5, %then1
  %V9653.V6059.408 = phi float [ %"13161", %then1 ], [ %"13163", %then3 ], [ %"13165", %then5 ], [ %"13166", %else6 ]
  %"13167" = fmul float %., %V9653.V6059.408
  ret float %"13167"
}

declare float @kernel_atan(float)

declare float @reduction(float)

; Function Attrs: norecurse nounwind
define void @V6241.V2650.get_nvector_rect(i32* nocapture readonly %V7461.V3870.dirvec) #0 {
entry:
  %"10490" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  store float 0.000000e+00, float* inttoptr (i32 143 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 147 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 151 to float*), align 4
  %V7466.V3873.1736 = add i32 %"10490", -1
  %"104932" = getelementptr inbounds i32, i32* %V7461.V3870.dirvec, i32 %V7466.V3873.1736
  %"10493" = bitcast i32* %"104932" to float*
  %"104931" = load float, float* %"10493", align 4
  %0 = fcmp oeq float %"104931", 0.000000e+00
  %1 = fcmp ogt float %"104931", 0.000000e+00
  %..i.op = select i1 %1, float -1.000000e+00, float 1.000000e+00
  %"13209.i" = select i1 %0, float 0.000000e+00, float %..i.op
  %"10497" = getelementptr inbounds i32, i32* inttoptr (i32 143 to i32*), i32 %V7466.V3873.1736
  %2 = bitcast i32* %"10497" to float*
  store float %"13209.i", float* %2, align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6242.V2651.get_nvector_plane(i32* nocapture readonly %V7449.V3858.m) #0 {
entry:
  %"126431.i" = getelementptr inbounds i32, i32* %V7449.V3858.m, i32 4
  %0 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %0, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %"13209.i2" = fsub float 0.000000e+00, %"1266512.i"
  store float %"13209.i2", float* inttoptr (i32 143 to float*), align 4
  %"1259552.i" = load float*, float** %0, align 4
  %"12617.i" = getelementptr inbounds float, float* %"1259552.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %"13209.i1" = fsub float 0.000000e+00, %"1261712.i"
  store float %"13209.i1", float* inttoptr (i32 147 to float*), align 4
  %"1254752.i" = load float*, float** %0, align 4
  %"12569.i" = getelementptr inbounds float, float* %"1254752.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %"13209.i" = fsub float 0.000000e+00, %"1256912.i"
  store float %"13209.i", float* inttoptr (i32 151 to float*), align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6243.V2652.get_nvector_second(i32* nocapture readonly %V7395.V3804.m) #0 {
entry:
  %"10459" = load float, float* inttoptr (i32 139 to float*), align 4
  %"124581.i" = getelementptr inbounds i32, i32* %V7395.V3804.m, i32 5
  %0 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %0, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V7399.V3805.p0 = fsub float %"10459", %"1247712.i"
  %"10462" = load float, float* inttoptr (i32 143 to float*), align 4
  %"12429.i" = getelementptr inbounds float, float* %"1245862.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %V7403.V3806.p1 = fsub float %"10462", %"1242912.i"
  %"10465" = load float, float* inttoptr (i32 147 to float*), align 4
  %"12381.i" = getelementptr inbounds float, float* %"1245862.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V7407.V3807.p2 = fsub float %"10465", %"1238112.i"
  %"126431.i" = getelementptr inbounds i32, i32* %V7395.V3804.m, i32 4
  %1 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %1, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %V7409.V3808.d0 = fmul float %V7399.V3805.p0, %"1266512.i"
  %"12617.i" = getelementptr inbounds float, float* %"1264352.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %V7411.V3809.d1 = fmul float %V7403.V3806.p1, %"1261712.i"
  %"12569.i" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %V7413.V3810.d2 = fmul float %V7407.V3807.p2, %"1256912.i"
  %"12688.i" = getelementptr inbounds i32, i32* %V7395.V3804.m, i32 3
  %"126884.i" = load i32, i32* %"12688.i", align 4
  %2 = icmp eq i32 %"126884.i", 0
  br i1 %2, label %then, label %else

then:                                             ; preds = %entry
  store float %V7409.V3808.d0, float* inttoptr (i32 143 to float*), align 4
  store float %V7411.V3809.d1, float* inttoptr (i32 147 to float*), align 4
  br label %ifcont

else:                                             ; preds = %entry
  %"119901.i10" = getelementptr inbounds i32, i32* %V7395.V3804.m, i32 9
  %3 = bitcast i32* %"119901.i10" to float**
  %"11990102.i11" = load float*, float** %3, align 4
  %"11997.i12" = getelementptr inbounds float, float* %"11990102.i11", i32 2
  %"1199712.i13" = load float, float* %"11997.i12", align 4
  %V7420.V3837.1766 = fmul float %V7403.V3806.p1, %"1199712.i13"
  %"12045.i8" = getelementptr inbounds float, float* %"11990102.i11", i32 1
  %"1204512.i9" = load float, float* %"12045.i8", align 4
  %V7422.V3838.1767 = fmul float %V7407.V3807.p2, %"1204512.i9"
  %V7423.V3836.1768 = fadd float %V7420.V3837.1766, %V7422.V3838.1767
  %"13204.i5" = fmul float %V7423.V3836.1768, 5.000000e-01
  %V7425.V3834.1771 = fadd float %V7409.V3808.d0, %"13204.i5"
  store float %V7425.V3834.1771, float* inttoptr (i32 143 to float*), align 4
  %"11990102.i" = load float*, float** %3, align 4
  %"11997.i" = getelementptr inbounds float, float* %"11990102.i", i32 2
  %"1199712.i" = load float, float* %"11997.i", align 4
  %V7429.V3829.1774 = fmul float %V7399.V3805.p0, %"1199712.i"
  %"1209312.i4" = load float, float* %"11990102.i", align 4
  %V7431.V3830.1775 = fmul float %V7407.V3807.p2, %"1209312.i4"
  %V7432.V3828.1776 = fadd float %V7429.V3829.1774, %V7431.V3830.1775
  %"13204.i1" = fmul float %V7432.V3828.1776, 5.000000e-01
  %V7434.V3826.1779 = fadd float %V7411.V3809.d1, %"13204.i1"
  store float %V7434.V3826.1779, float* inttoptr (i32 147 to float*), align 4
  %"12038102.i" = load float*, float** %3, align 4
  %"12045.i" = getelementptr inbounds float, float* %"12038102.i", i32 1
  %"1204512.i" = load float, float* %"12045.i", align 4
  %V7438.V3821.1782 = fmul float %V7399.V3805.p0, %"1204512.i"
  %"1209312.i" = load float, float* %"12038102.i", align 4
  %V7440.V3822.1783 = fmul float %V7403.V3806.p1, %"1209312.i"
  %V7441.V3820.1784 = fadd float %V7438.V3821.1782, %V7440.V3822.1783
  %"13204.i" = fmul float %V7441.V3820.1784, 5.000000e-01
  %V7443.V3818.1787 = fadd float %V7413.V3810.d2, %"13204.i"
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %storemerge = phi float [ %V7413.V3810.d2, %then ], [ %V7443.V3818.1787, %else ]
  store float %storemerge, float* inttoptr (i32 151 to float*), align 4
  %"130421.i" = load float, float* inttoptr (i32 143 to float*), align 4
  %"13208.i.i" = fmul float %"130421.i", %"130421.i"
  %"130452.i" = load float, float* inttoptr (i32 147 to float*), align 4
  %"13208.i4.i" = fmul float %"130452.i", %"130452.i"
  %V9522.V5947.485.i = fadd float %"13208.i.i", %"13208.i4.i"
  %"13208.i3.i" = fmul float %storemerge, %storemerge
  %V9526.V5946.487.i = fadd float %"13208.i3.i", %V9522.V5947.485.i
  %4 = tail call float @llvm.sqrt.f32(float %V9526.V5946.487.i) #2
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %V6150.V2559.vecunit_sgn.exit, label %then.i

then.i:                                           ; preds = %ifcont
  %"12741.i" = getelementptr inbounds i32, i32* %V7395.V3804.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %6 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %6, 0
  br i1 %"12742.i", label %then4.i, label %else.i

then4.i:                                          ; preds = %then.i
  %"13051.i" = fdiv float 1.000000e+00, %4
  br label %V6150.V2559.vecunit_sgn.exit

else.i:                                           ; preds = %then.i
  %"13052.i" = fdiv float -1.000000e+00, %4
  br label %V6150.V2559.vecunit_sgn.exit

V6150.V2559.vecunit_sgn.exit:                     ; preds = %ifcont, %then4.i, %else.i
  %V9530.V5926.il.i = phi float [ %"13051.i", %then4.i ], [ %"13052.i", %else.i ], [ 1.000000e+00, %ifcont ]
  %V9534.V5938.496.i = fmul float %"130421.i", %V9530.V5926.il.i
  store float %V9534.V5938.496.i, float* inttoptr (i32 143 to float*), align 4
  %V9539.V5934.500.i = fmul float %"130452.i", %V9530.V5926.il.i
  store float %V9539.V5934.500.i, float* inttoptr (i32 147 to float*), align 4
  %V9544.V5930.504.i = fmul float %storemerge, %V9530.V5926.il.i
  store float %V9544.V5930.504.i, float* inttoptr (i32 151 to float*), align 4
  ret void
}

; Function Attrs: norecurse nounwind readnone
define float @V6132.V2541.fhalf(float %V9712.V6121.x) #3 {
entry:
  %"13204" = fmul float %V9712.V6121.x, 5.000000e-01
  ret float %"13204"
}

; Function Attrs: norecurse nounwind
define void @V6150.V2559.vecunit_sgn(i32* nocapture %V9514.V5923.v, i1 %V9515.V5924.inv) #0 {
entry:
  %"13041" = bitcast i32* %V9514.V5923.v to float*
  %"130421" = load float, float* %"13041", align 4
  %"13208.i" = fmul float %"130421", %"130421"
  %"130451" = getelementptr inbounds i32, i32* %V9514.V5923.v, i32 1
  %"13045" = bitcast i32* %"130451" to float*
  %"130452" = load float, float* %"13045", align 4
  %"13208.i4" = fmul float %"130452", %"130452"
  %V9522.V5947.485 = fadd float %"13208.i", %"13208.i4"
  %"130482" = getelementptr inbounds i32, i32* %V9514.V5923.v, i32 2
  %"13048" = bitcast i32* %"130482" to float*
  %"130483" = load float, float* %"13048", align 4
  %"13208.i3" = fmul float %"130483", %"130483"
  %V9526.V5946.487 = fadd float %V9522.V5947.485, %"13208.i3"
  %0 = tail call float @llvm.sqrt.f32(float %V9526.V5946.487) #2
  %1 = fcmp oeq float %0, 0.000000e+00
  br i1 %1, label %ifcont6, label %then

then:                                             ; preds = %entry
  br i1 %V9515.V5924.inv, label %else, label %then4

then4:                                            ; preds = %then
  %"13051" = fdiv float 1.000000e+00, %0
  br label %ifcont6

else:                                             ; preds = %then
  %"13052" = fdiv float -1.000000e+00, %0
  br label %ifcont6

ifcont6:                                          ; preds = %entry, %then4, %else
  %V9530.V5926.il = phi float [ %"13051", %then4 ], [ %"13052", %else ], [ 1.000000e+00, %entry ]
  %V9534.V5938.496 = fmul float %V9530.V5926.il, %"130421"
  store float %V9534.V5938.496, float* %"13041", align 4
  %V9539.V5934.500 = fmul float %V9530.V5926.il, %"130452"
  store float %V9539.V5934.500, float* %"13045", align 4
  %V9544.V5930.504 = fmul float %V9530.V5926.il, %"130483"
  store float %V9544.V5930.504, float* %"13048", align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6146.V2555.vecbzero(i32* nocapture %V9611.V6020.v) #0 {
entry:
  %0 = bitcast i32* %V9611.V6020.v to float*
  store float 0.000000e+00, float* %0, align 4
  %"13134.i" = getelementptr inbounds i32, i32* %V9611.V6020.v, i32 1
  %1 = bitcast i32* %"13134.i" to float*
  store float 0.000000e+00, float* %1, align 4
  %"13137.i" = getelementptr inbounds i32, i32* %V9611.V6020.v, i32 2
  %2 = bitcast i32* %"13137.i" to float*
  store float 0.000000e+00, float* %2, align 4
  ret void
}

; Function Attrs: norecurse nounwind readnone
define float @V6141.V2550.sgn(float %V9637.V6046.x) #3 {
entry:
  %0 = fcmp oeq float %V9637.V6046.x, 0.000000e+00
  %1 = fcmp ogt float %V9637.V6046.x, 0.000000e+00
  %. = select i1 %1, float 1.000000e+00, float -1.000000e+00
  %"13151" = select i1 %0, float 0.000000e+00, float %.
  ret float %"13151"
}

; Function Attrs: norecurse nounwind
define void @V6145.V2554.vecfill(i32* nocapture %V9613.V6022.v, float %V9614.V6023.elem) #0 {
entry:
  %0 = bitcast i32* %V9613.V6022.v to float*
  store float %V9614.V6023.elem, float* %0, align 4
  %"13134" = getelementptr inbounds i32, i32* %V9613.V6022.v, i32 1
  %1 = bitcast i32* %"13134" to float*
  store float %V9614.V6023.elem, float* %1, align 4
  %"13137" = getelementptr inbounds i32, i32* %V9613.V6022.v, i32 2
  %2 = bitcast i32* %"13137" to float*
  store float %V9614.V6023.elem, float* %2, align 4
  ret void
}

; Function Attrs: nounwind
define void @V6239.V2648.trace_or_matrix_fast(i32 %V7486.V3895.ofs, i32* nocapture readonly %V7487.V3896.or_network, i32* readonly %V7488.V3897.dirvec) #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %ifcont13, %entry
  %V7486.V3895.ofs.tr = phi i32 [ %V7486.V3895.ofs, %entry ], [ %V7496.V3902.1719, %ifcont13 ]
  %"105102" = getelementptr inbounds i32, i32* %V7487.V3896.or_network, i32 %V7486.V3895.ofs.tr
  %"10510" = bitcast i32* %"105102" to i32**
  %"105101" = load i32*, i32** %"10510", align 4
  %"105132" = load i32, i32* %"105101", align 4
  switch i32 %"105132", label %else4 [
    i32 -1, label %ifcont14
    i32 99, label %then3
  ]

then3:                                            ; preds = %tailrecurse
  %"105332.i" = getelementptr inbounds i32, i32* %"105101", i32 1
  %"1053313.i" = load i32, i32* %"105332.i", align 4
  %V7516.V3923.17024.i = icmp eq i32 %"1053313.i", -1
  br i1 %V7516.V3923.17024.i, label %ifcont13, label %else3.i.preheader

else3.i.preheader:                                ; preds = %then3
  br label %else3.i

else3.i:                                          ; preds = %else3.i.preheader, %else3.i
  %"1053316.i" = phi i32 [ %"105331.i", %else3.i ], [ %"1053313.i", %else3.i.preheader ]
  %V7510.V3919.ofs.tr5.i = phi i32 [ %V7522.V3927.1701.i, %else3.i ], [ 1, %else3.i.preheader ]
  %"10540.i" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1053316.i"
  %"105404.i" = load i32*, i32** %"10540.i", align 4
  tail call void @V6237.V2646.solve_each_element_fast(i32 0, i32* %"105404.i", i32* %V7488.V3897.dirvec) #2
  %V7522.V3927.1701.i = add i32 %V7510.V3919.ofs.tr5.i, 1
  %"10533.i" = getelementptr inbounds i32, i32* %"105101", i32 %V7522.V3927.1701.i
  %"105331.i" = load i32, i32* %"10533.i", align 4
  %V7516.V3923.1702.i = icmp eq i32 %"105331.i", -1
  br i1 %V7516.V3923.1702.i, label %ifcont13.loopexit20, label %else3.i

else4:                                            ; preds = %tailrecurse
  %V7497.V3905.t = tail call i32 @V6217.V2626.solver_fast2(i32 %"105132", i32* %V7488.V3897.dirvec)
  %V7500.V3906.1716 = icmp eq i32 %V7497.V3905.t, 0
  br i1 %V7500.V3906.1716, label %ifcont13, label %else8

else8:                                            ; preds = %else4
  %"10523" = load float, float* inttoptr (i32 136 to float*), align 8
  %"10526" = load float, float* inttoptr (i32 138 to float*), align 4
  %0 = fcmp olt float %"10523", %"10526"
  br i1 %0, label %else10, label %ifcont13

else10:                                           ; preds = %else8
  %"105332.i3" = getelementptr inbounds i32, i32* %"105101", i32 1
  %"1053313.i4" = load i32, i32* %"105332.i3", align 4
  %V7516.V3923.17024.i5 = icmp eq i32 %"1053313.i4", -1
  br i1 %V7516.V3923.17024.i5, label %ifcont13, label %else3.i14.preheader

else3.i14.preheader:                              ; preds = %else10
  br label %else3.i14

else3.i14:                                        ; preds = %else3.i14.preheader, %else3.i14
  %"1053316.i6" = phi i32 [ %"105331.i12", %else3.i14 ], [ %"1053313.i4", %else3.i14.preheader ]
  %V7510.V3919.ofs.tr5.i7 = phi i32 [ %V7522.V3927.1701.i10, %else3.i14 ], [ 1, %else3.i14.preheader ]
  %"10540.i8" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1053316.i6"
  %"105404.i9" = load i32*, i32** %"10540.i8", align 4
  tail call void @V6237.V2646.solve_each_element_fast(i32 0, i32* %"105404.i9", i32* %V7488.V3897.dirvec) #2
  %V7522.V3927.1701.i10 = add i32 %V7510.V3919.ofs.tr5.i7, 1
  %"10533.i11" = getelementptr inbounds i32, i32* %"105101", i32 %V7522.V3927.1701.i10
  %"105331.i12" = load i32, i32* %"10533.i11", align 4
  %V7516.V3923.1702.i13 = icmp eq i32 %"105331.i12", -1
  br i1 %V7516.V3923.1702.i13, label %ifcont13.loopexit, label %else3.i14

ifcont13.loopexit:                                ; preds = %else3.i14
  br label %ifcont13

ifcont13.loopexit20:                              ; preds = %else3.i
  br label %ifcont13

ifcont13:                                         ; preds = %ifcont13.loopexit20, %ifcont13.loopexit, %else10, %then3, %else4, %else8
  %V7496.V3902.1719 = add i32 %V7486.V3895.ofs.tr, 1
  br label %tailrecurse

ifcont14:                                         ; preds = %tailrecurse
  ret void
}

; Function Attrs: nounwind
define void @V6238.V2647.solve_one_or_network_fast(i32 %V7510.V3919.ofs, i32* nocapture readonly %V7511.V3920.or_group, i32* readonly %V7512.V3921.dirvec) #2 {
entry:
  %"105332" = getelementptr inbounds i32, i32* %V7511.V3920.or_group, i32 %V7510.V3919.ofs
  %"1053313" = load i32, i32* %"105332", align 4
  %V7516.V3923.17024 = icmp eq i32 %"1053313", -1
  br i1 %V7516.V3923.17024, label %ifcont5, label %else3.preheader

else3.preheader:                                  ; preds = %entry
  br label %else3

else3:                                            ; preds = %else3.preheader, %else3
  %"1053316" = phi i32 [ %"105331", %else3 ], [ %"1053313", %else3.preheader ]
  %V7510.V3919.ofs.tr5 = phi i32 [ %V7522.V3927.1701, %else3 ], [ %V7510.V3919.ofs, %else3.preheader ]
  %"10540" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1053316"
  %"105404" = load i32*, i32** %"10540", align 4
  tail call void @V6237.V2646.solve_each_element_fast(i32 0, i32* %"105404", i32* %V7512.V3921.dirvec)
  %V7522.V3927.1701 = add i32 %V7510.V3919.ofs.tr5, 1
  %"10533" = getelementptr inbounds i32, i32* %V7511.V3920.or_group, i32 %V7522.V3927.1701
  %"105331" = load i32, i32* %"10533", align 4
  %V7516.V3923.1702 = icmp eq i32 %"105331", -1
  br i1 %V7516.V3923.1702, label %ifcont5.loopexit, label %else3

ifcont5.loopexit:                                 ; preds = %else3
  br label %ifcont5

ifcont5:                                          ; preds = %ifcont5.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind
define i32 @V6217.V2626.solver_fast2(i32 %V8104.V4513.index, i32* nocapture readonly %V8105.V4514.dirvec) #0 {
entry:
  %"11004" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V8104.V4513.index
  %"110041" = load i32*, i32** %"11004", align 4
  %"119491.i" = getelementptr inbounds i32, i32* %"110041", i32 10
  %"11949.i" = bitcast i32* %"119491.i" to i32**
  %"1194911.i" = load i32*, i32** %"11949.i", align 4
  %"11006" = bitcast i32* %"1194911.i" to float*
  %"110072" = load float, float* %"11006", align 4
  %"110101" = getelementptr inbounds i32, i32* %"1194911.i", i32 1
  %"11010" = bitcast i32* %"110101" to float*
  %"110103" = load float, float* %"11010", align 4
  %"110132" = getelementptr inbounds i32, i32* %"1194911.i", i32 2
  %"11013" = bitcast i32* %"110132" to float*
  %"110134" = load float, float* %"11013", align 4
  %"116021.i" = getelementptr inbounds i32, i32* %V8105.V4514.dirvec, i32 1
  %"11602.i" = bitcast i32* %"116021.i" to i32**
  %"116022.i" = load i32*, i32** %"11602.i", align 4
  %"110163" = getelementptr inbounds i32, i32* %"116022.i", i32 %V8104.V4513.index
  %"11016" = bitcast i32* %"110163" to i32**
  %"110165" = load i32*, i32** %"11016", align 4
  %"12814.i" = getelementptr inbounds i32, i32* %"110041", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else7 [
    i32 1, label %then
    i32 2, label %then6
  ]

then:                                             ; preds = %entry
  %"11606.i" = bitcast i32* %V8105.V4514.dirvec to i32**
  %"116071.i" = load i32*, i32** %"11606.i", align 4
  %"11019" = tail call i32 @V6211.V2620.solver_rect_fast(i32* %"110041", i32* %"116071.i", i32* %"110165", float %"110072", float %"110103", float %"110134")
  br label %ifcont8

then6:                                            ; preds = %entry
  %"11055.i" = bitcast i32* %"110165" to float*
  %"110561.i" = load float, float* %"11055.i", align 4
  %0 = fcmp olt float %"110561.i", 0.000000e+00
  br i1 %0, label %else.i4, label %ifcont8

else.i4:                                          ; preds = %then6
  %"110641.i" = getelementptr inbounds i32, i32* %"1194911.i", i32 3
  %"11064.i" = bitcast i32* %"110641.i" to float*
  %"110643.i" = load float, float* %"11064.i", align 4
  %V8178.V4582.1221.i = fmul float %"110561.i", %"110643.i"
  store float %V8178.V4582.1221.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont8

else7:                                            ; preds = %entry
  %"11023.i" = bitcast i32* %"110165" to float*
  %"110241.i" = load float, float* %"11023.i", align 4
  %1 = fcmp oeq float %"110241.i", 0.000000e+00
  br i1 %1, label %ifcont8, label %then.i

then.i:                                           ; preds = %else7
  %"110281.i" = getelementptr inbounds i32, i32* %"110165", i32 1
  %"11028.i" = bitcast i32* %"110281.i" to float*
  %"110282.i" = load float, float* %"11028.i", align 4
  %V8132.V4565.1229.i = fmul float %"110072", %"110282.i"
  %"110312.i" = getelementptr inbounds i32, i32* %"110165", i32 2
  %"11031.i" = bitcast i32* %"110312.i" to float*
  %"110313.i" = load float, float* %"11031.i", align 4
  %V8135.V4566.1230.i = fmul float %"110103", %"110313.i"
  %V8136.V4561.1233.i = fadd float %V8132.V4565.1229.i, %V8135.V4566.1230.i
  %"110343.i" = getelementptr inbounds i32, i32* %"110165", i32 3
  %"11034.i" = bitcast i32* %"110343.i" to float*
  %"110344.i" = load float, float* %"11034.i", align 4
  %V8139.V4562.1234.i = fmul float %"110134", %"110344.i"
  %V8140.V4538.neg_bb.i = fadd float %V8136.V4561.1233.i, %V8139.V4562.1234.i
  %"110374.i" = getelementptr inbounds i32, i32* %"1194911.i", i32 3
  %"11037.i" = bitcast i32* %"110374.i" to float*
  %"110375.i" = load float, float* %"11037.i", align 4
  %"13208.i.i" = fmul float %V8140.V4538.neg_bb.i, %V8140.V4538.neg_bb.i
  %V8144.V4559.1237.i = fmul float %"110241.i", %"110375.i"
  %V8145.V4540.d.i = fsub float %"13208.i.i", %V8144.V4559.1237.i
  %2 = fcmp ogt float %V8145.V4540.d.i, 0.000000e+00
  br i1 %2, label %else.i, label %ifcont8

else.i:                                           ; preds = %then.i
  %"12741.i.i" = getelementptr inbounds i32, i32* %"110041", i32 6
  %"127417.i.i" = load i32, i32* %"12741.i.i", align 4
  %3 = and i32 %"127417.i.i", 1
  %"12742.i.i" = icmp eq i32 %3, 0
  %4 = tail call float @llvm.sqrt.f32(float %V8145.V4540.d.i) #2
  br i1 %"12742.i.i", label %then7.i, label %else9.i

then7.i:                                          ; preds = %else.i
  %V8159.V4554.1246.i = fsub float %V8140.V4538.neg_bb.i, %4
  %"110426.i" = getelementptr inbounds i32, i32* %"110165", i32 4
  %"11042.i" = bitcast i32* %"110426.i" to float*
  %"110428.i" = load float, float* %"11042.i", align 4
  %V8162.V4553.1249.i = fmul float %V8159.V4554.1246.i, %"110428.i"
  store float %V8162.V4553.1249.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont8

else9.i:                                          ; preds = %else.i
  %V8153.V4548.1240.i = fadd float %V8140.V4538.neg_bb.i, %4
  %"110485.i" = getelementptr inbounds i32, i32* %"110165", i32 4
  %"11048.i" = bitcast i32* %"110485.i" to float*
  %"1104810.i" = load float, float* %"11048.i", align 4
  %V8156.V4547.1243.i = fmul float %V8153.V4548.1240.i, %"1104810.i"
  store float %V8156.V4547.1243.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont8

ifcont8:                                          ; preds = %else9.i, %then7.i, %then.i, %else7, %else.i4, %then6, %then
  %"11018" = phi i32 [ %"11019", %then ], [ 1, %else.i4 ], [ 0, %then6 ], [ 0, %then.i ], [ 1, %else9.i ], [ 1, %then7.i ], [ 0, %else7 ]
  ret i32 %"11018"
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6178.V2587.o_param_ctbl(i32* nocapture readonly %V9077.V5486.m) #1 {
entry:
  %"119491" = getelementptr inbounds i32, i32* %V9077.V5486.m, i32 10
  %"11949" = bitcast i32* %"119491" to i32**
  %"1194911" = load i32*, i32** %"11949", align 4
  ret i32* %"1194911"
}

; Function Attrs: norecurse nounwind
define i32 @V6215.V2624.solver_surface_fast2(i32* nocapture readnone %V8163.V4572.m, i32* nocapture readonly %V8164.V4573.dconst, i32* nocapture readonly %V8165.V4574.sconst, float %V8166.V4575.b0, float %V8167.V4576.b1, float %V8168.V4577.b2) #0 {
entry:
  %"11055" = bitcast i32* %V8164.V4573.dconst to float*
  %"110561" = load float, float* %"11055", align 4
  %0 = fcmp olt float %"110561", 0.000000e+00
  br i1 %0, label %else, label %ifcont

else:                                             ; preds = %entry
  %"110641" = getelementptr inbounds i32, i32* %V8165.V4574.sconst, i32 3
  %"11064" = bitcast i32* %"110641" to float*
  %"110643" = load float, float* %"11064", align 4
  %V8178.V4582.1221 = fmul float %"110561", %"110643"
  store float %V8178.V4582.1221, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %"11058" = phi i32 [ 1, %else ], [ 0, %entry ]
  ret i32 %"11058"
}

; Function Attrs: norecurse nounwind
define i32 @V6216.V2625.solver_second_fast2(i32* nocapture readonly %V8120.V4529.m, i32* nocapture readonly %V8121.V4530.dconst, i32* nocapture readonly %V8122.V4531.sconst, float %V8123.V4532.b0, float %V8124.V4533.b1, float %V8125.V4534.b2) #0 {
entry:
  %"11023" = bitcast i32* %V8121.V4530.dconst to float*
  %"110241" = load float, float* %"11023", align 4
  %0 = fcmp oeq float %"110241", 0.000000e+00
  br i1 %0, label %ifcont13, label %then

then:                                             ; preds = %entry
  %"110281" = getelementptr inbounds i32, i32* %V8121.V4530.dconst, i32 1
  %"11028" = bitcast i32* %"110281" to float*
  %"110282" = load float, float* %"11028", align 4
  %V8132.V4565.1229 = fmul float %"110282", %V8123.V4532.b0
  %"110312" = getelementptr inbounds i32, i32* %V8121.V4530.dconst, i32 2
  %"11031" = bitcast i32* %"110312" to float*
  %"110313" = load float, float* %"11031", align 4
  %V8135.V4566.1230 = fmul float %"110313", %V8124.V4533.b1
  %V8136.V4561.1233 = fadd float %V8132.V4565.1229, %V8135.V4566.1230
  %"110343" = getelementptr inbounds i32, i32* %V8121.V4530.dconst, i32 3
  %"11034" = bitcast i32* %"110343" to float*
  %"110344" = load float, float* %"11034", align 4
  %V8139.V4562.1234 = fmul float %"110344", %V8125.V4534.b2
  %V8140.V4538.neg_bb = fadd float %V8136.V4561.1233, %V8139.V4562.1234
  %"110374" = getelementptr inbounds i32, i32* %V8122.V4531.sconst, i32 3
  %"11037" = bitcast i32* %"110374" to float*
  %"110375" = load float, float* %"11037", align 4
  %"13208.i" = fmul float %V8140.V4538.neg_bb, %V8140.V4538.neg_bb
  %V8144.V4559.1237 = fmul float %"110241", %"110375"
  %V8145.V4540.d = fsub float %"13208.i", %V8144.V4559.1237
  %1 = fcmp ogt float %V8145.V4540.d, 0.000000e+00
  br i1 %1, label %else, label %ifcont13

else:                                             ; preds = %then
  %"12741.i" = getelementptr inbounds i32, i32* %V8120.V4529.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %2 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %2, 0
  %3 = tail call float @llvm.sqrt.f32(float %V8145.V4540.d) #2
  br i1 %"12742.i", label %then7, label %else9

then7:                                            ; preds = %else
  %V8159.V4554.1246 = fsub float %V8140.V4538.neg_bb, %3
  %"110426" = getelementptr inbounds i32, i32* %V8121.V4530.dconst, i32 4
  %"11042" = bitcast i32* %"110426" to float*
  %"110428" = load float, float* %"11042", align 4
  %V8162.V4553.1249 = fmul float %V8159.V4554.1246, %"110428"
  store float %V8162.V4553.1249, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont13

else9:                                            ; preds = %else
  %V8153.V4548.1240 = fadd float %V8140.V4538.neg_bb, %3
  %"110485" = getelementptr inbounds i32, i32* %V8121.V4530.dconst, i32 4
  %"11048" = bitcast i32* %"110485" to float*
  %"1104810" = load float, float* %"11048", align 4
  %V8156.V4547.1243 = fmul float %V8153.V4548.1240, %"1104810"
  store float %V8156.V4547.1243, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont13

ifcont13:                                         ; preds = %then, %entry, %else9, %then7
  %"11026" = phi i32 [ 0, %then ], [ 1, %else9 ], [ 1, %then7 ], [ 0, %entry ]
  ret i32 %"11026"
}

; Function Attrs: nounwind
define void @V6237.V2646.solve_each_element_fast(i32 %V7523.V3932.iand_ofs, i32* readonly %V7524.V3933.and_group, i32* readonly %V7525.V3934.dirvec) #2 {
entry:
  %"11606.i" = bitcast i32* %V7525.V3934.dirvec to i32**
  %"105444" = getelementptr inbounds i32, i32* %V7524.V3933.and_group, i32 %V7523.V3932.iand_ofs
  %"1054415" = load i32, i32* %"105444", align 4
  %0 = icmp eq i32 %"1054415", -1
  br i1 %0, label %ifcont23, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

else:                                             ; preds = %else.preheader, %tailrecurse.backedge
  %"1054418" = phi i32 [ %"105441", %tailrecurse.backedge ], [ %"1054415", %else.preheader ]
  %V7523.V3932.iand_ofs.tr6 = phi i32 [ %V7579.V3984.1692, %tailrecurse.backedge ], [ %V7523.V3932.iand_ofs, %else.preheader ]
  %"116071.i7" = load i32*, i32** %"11606.i", align 4
  %V7529.V3938.t0 = tail call i32 @V6217.V2626.solver_fast2(i32 %"1054418", i32* nonnull %V7525.V3934.dirvec)
  %V7532.V3939.1695 = icmp eq i32 %V7529.V3938.t0, 0
  br i1 %V7532.V3939.1695, label %then4, label %else9

then4:                                            ; preds = %else
  %"10552" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1054418"
  %"105525" = load i32*, i32** %"10552", align 4
  %"12741.i" = getelementptr inbounds i32, i32* %"105525", i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %1 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %1, 0
  br i1 %"12742.i", label %ifcont23.loopexit, label %tailrecurse.backedge

tailrecurse.backedge.loopexit:                    ; preds = %else.i
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.loopexit, %then4, %else18, %else9, %else11
  %V7579.V3984.1692 = add i32 %V7523.V3932.iand_ofs.tr6, 1
  %"10544" = getelementptr inbounds i32, i32* %V7524.V3933.and_group, i32 %V7579.V3984.1692
  %"105441" = load i32, i32* %"10544", align 4
  %2 = icmp eq i32 %"105441", -1
  br i1 %2, label %ifcont23.loopexit, label %else

else9:                                            ; preds = %else
  %"10558" = load float, float* inttoptr (i32 136 to float*), align 8
  %3 = fcmp ogt float %"10558", 0.000000e+00
  br i1 %3, label %else11, label %tailrecurse.backedge

else11:                                           ; preds = %else9
  %"10562" = load float, float* inttoptr (i32 138 to float*), align 4
  %4 = fcmp olt float %"10558", %"10562"
  br i1 %4, label %else13, label %tailrecurse.backedge

else13:                                           ; preds = %else11
  %V7547.V3949.t = fadd float %"10558", 0x3F847AE140000000
  %"10566" = bitcast i32* %"116071.i7" to float*
  %"1056714" = load float, float* %"10566", align 4
  %V7550.V3972.1666 = fmul float %V7547.V3949.t, %"1056714"
  %"10570" = load float, float* inttoptr (i32 163 to float*), align 4
  %V7553.V3950.q0 = fadd float %V7550.V3972.1666, %"10570"
  %"105731" = getelementptr inbounds i32, i32* %"116071.i7", i32 1
  %"10573" = bitcast i32* %"105731" to float*
  %"1057315" = load float, float* %"10573", align 4
  %V7556.V3967.1671 = fmul float %V7547.V3949.t, %"1057315"
  %"10576" = load float, float* inttoptr (i32 167 to float*), align 4
  %V7559.V3951.q1 = fadd float %V7556.V3967.1671, %"10576"
  %"105792" = getelementptr inbounds i32, i32* %"116071.i7", i32 2
  %"10579" = bitcast i32* %"105792" to float*
  %"1057916" = load float, float* %"10579", align 4
  %V7562.V3962.1676 = fmul float %V7547.V3949.t, %"1057916"
  %"10582" = load float, float* inttoptr (i32 171 to float*), align 4
  %V7565.V3952.q2 = fadd float %V7562.V3962.1676, %"10582"
  %"1077113.i" = load i32, i32* %V7524.V3933.and_group, align 4
  %5 = icmp eq i32 %"1077113.i", -1
  br i1 %5, label %else18, label %else.i.preheader

else.i.preheader:                                 ; preds = %else13
  br label %else.i

tailrecurse.i:                                    ; preds = %else.i
  %"10771.i" = getelementptr inbounds i32, i32* %V7524.V3933.and_group, i32 %V7782.V4189.1512.i
  %"107711.i" = load i32, i32* %"10771.i", align 4
  %6 = icmp eq i32 %"107711.i", -1
  br i1 %6, label %else18.loopexit, label %else.i

else.i:                                           ; preds = %else.i.preheader, %tailrecurse.i
  %"1077115.i" = phi i32 [ %"107711.i", %tailrecurse.i ], [ %"1077113.i", %else.i.preheader ]
  %V7771.V4180.ofs.tr4.i = phi i32 [ %V7782.V4189.1512.i, %tailrecurse.i ], [ 0, %else.i.preheader ]
  %"10776.i" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1077115.i"
  %"107762.i" = load i32*, i32** %"10776.i", align 4
  %V7779.V4187.1513.i = tail call i1 @V6228.V2637.is_outside(i32* %"107762.i", float %V7553.V3950.q0, float %V7559.V3951.q1, float %V7565.V3952.q2) #2
  %V7782.V4189.1512.i = add i32 %V7771.V4180.ofs.tr4.i, 1
  br i1 %V7779.V4187.1513.i, label %tailrecurse.backedge.loopexit, label %tailrecurse.i

else18.loopexit:                                  ; preds = %tailrecurse.i
  br label %else18

else18:                                           ; preds = %else18.loopexit, %else13
  store float %V7547.V3949.t, float* inttoptr (i32 138 to float*), align 4
  store float %V7553.V3950.q0, float* inttoptr (i32 139 to float*), align 4
  store float %V7559.V3951.q1, float* inttoptr (i32 143 to float*), align 4
  store float %V7565.V3952.q2, float* inttoptr (i32 147 to float*), align 4
  store i32 %"1054418", i32* inttoptr (i32 142 to i32*), align 4
  store i32 %V7529.V3938.t0, i32* inttoptr (i32 137 to i32*), align 4
  br label %tailrecurse.backedge

ifcont23.loopexit:                                ; preds = %then4, %tailrecurse.backedge
  br label %ifcont23

ifcont23:                                         ; preds = %ifcont23.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6144.V2553.vecset(i32* nocapture %V9620.V6029.v, float %V9621.V6030.x, float %V9622.V6031.y, float %V9623.V6032.z) #0 {
entry:
  %0 = bitcast i32* %V9620.V6029.v to float*
  store float %V9621.V6030.x, float* %0, align 4
  %"13141" = getelementptr inbounds i32, i32* %V9620.V6029.v, i32 1
  %1 = bitcast i32* %"13141" to float*
  store float %V9622.V6031.y, float* %1, align 4
  %"13144" = getelementptr inbounds i32, i32* %V9620.V6029.v, i32 2
  %2 = bitcast i32* %"13144" to float*
  store float %V9623.V6032.z, float* %2, align 4
  ret void
}

; Function Attrs: nounwind
define void @V6223.V2632.setup_startp_constants(i32* nocapture readonly %V7840.V4249.p, i32 %V7841.V4250.index) #2 {
entry:
  %0 = icmp sgt i32 %V7841.V4250.index, -1
  br i1 %0, label %then.lr.ph, label %ifcont19

then.lr.ph:                                       ; preds = %entry
  %"10805" = bitcast i32* %V7840.V4249.p to float*
  %"108111" = getelementptr inbounds i32, i32* %V7840.V4249.p, i32 1
  %"10811" = bitcast i32* %"108111" to float*
  %"108162" = getelementptr inbounds i32, i32* %V7840.V4249.p, i32 2
  %"10816" = bitcast i32* %"108162" to float*
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont17
  %V7841.V4250.index.tr7 = phi i32 [ %V7841.V4250.index, %then.lr.ph ], [ %V7867.V4259.1476, %ifcont17 ]
  %"10803" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V7841.V4250.index.tr7
  %"108031" = load i32*, i32** %"10803", align 4
  %"119491.i" = getelementptr inbounds i32, i32* %"108031", i32 10
  %"11949.i" = bitcast i32* %"119491.i" to i32**
  %"1194911.i" = load i32*, i32** %"11949.i", align 4
  %"12814.i" = getelementptr inbounds i32, i32* %"108031", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  %"108062" = load float, float* %"10805", align 4
  %"124581.i" = getelementptr inbounds i32, i32* %"108031", i32 5
  %1 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %1, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V7850.V4294.1443 = fsub float %"108062", %"1247712.i"
  %2 = bitcast i32* %"1194911.i" to float*
  store float %V7850.V4294.1443, float* %2, align 4
  %"108113" = load float, float* %"10811", align 4
  %"1241062.i" = load float*, float** %1, align 4
  %"12429.i" = getelementptr inbounds float, float* %"1241062.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %V7856.V4289.1448 = fsub float %"108113", %"1242912.i"
  %"10814" = getelementptr inbounds i32, i32* %"1194911.i", i32 1
  %3 = bitcast i32* %"10814" to float*
  store float %V7856.V4289.1448, float* %3, align 4
  %"108164" = load float, float* %"10816", align 4
  %"1236262.i" = load float*, float** %1, align 4
  %"12381.i" = getelementptr inbounds float, float* %"1236262.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V7862.V4284.1453 = fsub float %"108164", %"1238112.i"
  %"10819" = getelementptr inbounds i32, i32* %"1194911.i", i32 2
  %4 = bitcast i32* %"10819" to float*
  store float %V7862.V4284.1453, float* %4, align 4
  %5 = icmp eq i32 %"128142.i", 2
  br i1 %5, label %then5, label %else

then5:                                            ; preds = %then
  %"125031.i" = getelementptr inbounds i32, i32* %"108031", i32 4
  %"12503.i" = bitcast i32* %"125031.i" to i32**
  %"125035.i" = load i32*, i32** %"12503.i", align 4
  %"13012.i" = bitcast i32* %"125035.i" to float*
  %"130131.i" = load float, float* %"13012.i", align 4
  %V9488.V5899.525.i = fmul float %V7850.V4294.1443, %"130131.i"
  %"130161.i" = getelementptr inbounds i32, i32* %"125035.i", i32 1
  %"13016.i" = bitcast i32* %"130161.i" to float*
  %"130162.i" = load float, float* %"13016.i", align 4
  %V9491.V5900.526.i = fmul float %V7856.V4289.1448, %"130162.i"
  %V9492.V5895.529.i = fadd float %V9488.V5899.525.i, %V9491.V5900.526.i
  %"130192.i" = getelementptr inbounds i32, i32* %"125035.i", i32 2
  %"13019.i" = bitcast i32* %"130192.i" to float*
  %"130193.i" = load float, float* %"13019.i", align 4
  %V9495.V5896.530.i = fmul float %V7862.V4284.1453, %"130193.i"
  %"13021.i" = fadd float %V9492.V5895.529.i, %V9495.V5896.530.i
  %"10831" = getelementptr inbounds i32, i32* %"1194911.i", i32 3
  %6 = bitcast i32* %"10831" to float*
  store float %"13021.i", float* %6, align 4
  br label %ifcont17

else:                                             ; preds = %then
  %7 = icmp sgt i32 %"128142.i", 2
  br i1 %7, label %then9, label %ifcont17

then9:                                            ; preds = %else
  %"13208.i.i" = fmul float %V7850.V4294.1443, %V7850.V4294.1443
  %"126431.i.i" = getelementptr inbounds i32, i32* %"108031", i32 4
  %8 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %8, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8464.V4889.985.i = fmul float %"13208.i.i", %"1266512.i.i"
  %"13208.i2.i" = fmul float %V7856.V4289.1448, %V7856.V4289.1448
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8467.V4890.986.i = fmul float %"13208.i2.i", %"1261712.i.i"
  %V8468.V4885.989.i = fadd float %V8464.V4889.985.i, %V8467.V4890.986.i
  %"13208.i1.i" = fmul float %V7862.V4284.1453, %V7862.V4284.1453
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8471.V4886.990.i = fmul float %"13208.i1.i", %"1256912.i.i"
  %V8472.V4871.diag_part.i = fadd float %V8468.V4885.989.i, %V8471.V4886.990.i
  %"12688.i.i" = getelementptr inbounds i32, i32* %"108031", i32 3
  %"126884.i.i" = load i32, i32* %"12688.i.i", align 4
  %9 = icmp eq i32 %"126884.i.i", 0
  br i1 %9, label %V6207.V2616.quadratic.exit, label %else.i

else.i:                                           ; preds = %then9
  %V8475.V4883.993.i = fmul float %V7862.V4284.1453, %V7856.V4289.1448
  %"120861.i.i" = getelementptr inbounds i32, i32* %"108031", i32 9
  %10 = bitcast i32* %"120861.i.i" to float**
  %"12086102.i.i" = load float*, float** %10, align 4
  %"1209312.i.i" = load float, float* %"12086102.i.i", align 4
  %V8477.V4882.995.i = fmul float %V8475.V4883.993.i, %"1209312.i.i"
  %V8478.V4878.998.i = fadd float %V8472.V4871.diag_part.i, %V8477.V4882.995.i
  %V8479.V4880.996.i = fmul float %V7862.V4284.1453, %V7850.V4294.1443
  %"12045.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 1
  %"1204512.i.i" = load float, float* %"12045.i.i", align 4
  %V8481.V4879.999.i = fmul float %V8479.V4880.996.i, %"1204512.i.i"
  %V8482.V4874.1002.i = fadd float %V8478.V4878.998.i, %V8481.V4879.999.i
  %V8483.V4876.1000.i = fmul float %V7850.V4294.1443, %V7856.V4289.1448
  %"11997.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 2
  %"1199712.i.i" = load float, float* %"11997.i.i", align 4
  %V8485.V4875.1003.i = fmul float %V8483.V4876.1000.i, %"1199712.i.i"
  %"11258.i" = fadd float %V8482.V4874.1002.i, %V8485.V4875.1003.i
  br label %V6207.V2616.quadratic.exit

V6207.V2616.quadratic.exit:                       ; preds = %then9, %else.i
  %"11256.i" = phi float [ %"11258.i", %else.i ], [ %V8472.V4871.diag_part.i, %then9 ]
  %11 = icmp eq i32 %"128142.i", 3
  %"10842" = fadd float %"11256.i", -1.000000e+00
  %V7878.V4265.1474 = select i1 %11, float %"10842", float %"11256.i"
  %"10846" = getelementptr inbounds i32, i32* %"1194911.i", i32 3
  %12 = bitcast i32* %"10846" to float*
  store float %V7878.V4265.1474, float* %12, align 4
  br label %ifcont17

ifcont17:                                         ; preds = %V6207.V2616.quadratic.exit, %else, %then5
  %V7867.V4259.1476 = add nsw i32 %V7841.V4250.index.tr7, -1
  %13 = icmp sgt i32 %V7841.V4250.index.tr7, 0
  br i1 %13, label %then, label %ifcont19.loopexit

ifcont19.loopexit:                                ; preds = %ifcont17
  br label %ifcont19

ifcont19:                                         ; preds = %ifcont19.loopexit, %entry
  ret void
}

define void @V6264.V2673.pretrace_pixels(i32* nocapture readonly %V6742.V3151.line, i32 %V6743.V3152.x, i32 %V6744.V3153.group_id, float %V6745.V3154.lc0, float %V6746.V3155.lc1, float %V6747.V3156.lc2) {
entry:
  %0 = icmp sgt i32 %V6743.V3152.x, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %then
  %V6744.V3153.group_id.tr8 = phi i32 [ %"13145.i", %then ], [ %V6744.V3153.group_id, %then.preheader ]
  %V6743.V3152.x.tr7 = phi i32 [ %V6792.V3169.2228, %then ], [ %V6743.V3152.x, %then.preheader ]
  %"10001" = load float, float* inttoptr (i32 159 to float*), align 4
  %"10004" = load i32, i32* inttoptr (i32 157 to i32*), align 4
  %V6753.V3200.2198 = sub i32 %V6743.V3152.x.tr7, %"10004"
  %1 = sitofp i32 %V6753.V3200.2198 to float
  %V6755.V3158.xdisp = fmul float %"10001", %1
  %"10007" = load float, float* inttoptr (i32 166 to float*), align 4
  %V6759.V3195.2203 = fmul float %"10007", %V6755.V3158.xdisp
  %V6760.V3194.2205 = fadd float %V6759.V3195.2203, %V6745.V3154.lc0
  store float %V6760.V3194.2205, float* inttoptr (i32 175 to float*), align 4
  %"10012" = load float, float* inttoptr (i32 170 to float*), align 4
  %V6765.V3190.2208 = fmul float %V6755.V3158.xdisp, %"10012"
  %V6766.V3189.2210 = fadd float %V6765.V3190.2208, %V6746.V3155.lc1
  store float %V6766.V3189.2210, float* inttoptr (i32 179 to float*), align 4
  %"10017" = load float, float* inttoptr (i32 174 to float*), align 4
  %V6771.V3185.2213 = fmul float %V6755.V3158.xdisp, %"10017"
  %V6772.V3184.2215 = fadd float %V6771.V3185.2213, %V6747.V3156.lc2
  store float %V6772.V3184.2215, float* inttoptr (i32 183 to float*), align 4
  %"130421.i" = load float, float* inttoptr (i32 175 to float*), align 4
  %"13208.i.i" = fmul float %"130421.i", %"130421.i"
  %"130452.i" = load float, float* inttoptr (i32 179 to float*), align 4
  %"13208.i4.i" = fmul float %"130452.i", %"130452.i"
  %V9522.V5947.485.i = fadd float %"13208.i.i", %"13208.i4.i"
  %"13208.i3.i" = fmul float %V6772.V3184.2215, %V6772.V3184.2215
  %V9526.V5946.487.i = fadd float %"13208.i3.i", %V9522.V5947.485.i
  %2 = tail call float @llvm.sqrt.f32(float %V9526.V5946.487.i) #2
  %3 = fcmp oeq float %2, 0.000000e+00
  %"13051.i" = fdiv float 1.000000e+00, %2
  %V9530.V5926.il.i = select i1 %3, float 1.000000e+00, float %"13051.i"
  %V9534.V5938.496.i = fmul float %"130421.i", %V9530.V5926.il.i
  store float %V9534.V5938.496.i, float* inttoptr (i32 175 to float*), align 4
  %V9539.V5934.500.i = fmul float %"130452.i", %V9530.V5926.il.i
  store float %V9539.V5934.500.i, float* inttoptr (i32 179 to float*), align 4
  %V9544.V5930.504.i = fmul float %V6772.V3184.2215, %V9530.V5926.il.i
  store float %V9544.V5930.504.i, float* inttoptr (i32 183 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 152 to float*), align 8
  store float 0.000000e+00, float* inttoptr (i32 156 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 160 to float*), align 32
  %"1311511.i3" = load i32, i32* inttoptr (i32 76 to i32*), align 4
  store i32 %"1311511.i3", i32* inttoptr (i32 160 to i32*), align 32
  %"1312024.i4" = load i32, i32* inttoptr (i32 80 to i32*), align 16
  store i32 %"1312024.i4", i32* inttoptr (i32 164 to i32*), align 4
  %"1312536.i5" = load i32, i32* inttoptr (i32 84 to i32*), align 4
  store i32 %"1312536.i5", i32* inttoptr (i32 168 to i32*), align 8
  %"100222" = getelementptr inbounds i32, i32* %V6742.V3151.line, i32 %V6743.V3152.x.tr7
  %"10022" = bitcast i32* %"100222" to i32**
  %"100221" = load i32*, i32** %"10022", align 4
  tail call void @V6248.V2657.trace_ray(i32 0, float 1.000000e+00, i32* nonnull inttoptr (i32 175 to i32*), i32* %"100221", float 0.000000e+00)
  %4 = bitcast i32* %"100222" to i32***
  %"1002526" = load i32**, i32*** %4, align 4
  %"118841.i" = load i32*, i32** %"1002526", align 4
  %"1311511.i" = load i32, i32* inttoptr (i32 152 to i32*), align 8
  store i32 %"1311511.i", i32* %"118841.i", align 4
  %"1312024.i" = load i32, i32* inttoptr (i32 156 to i32*), align 4
  %"13123.i" = getelementptr inbounds i32, i32* %"118841.i", i32 1
  store i32 %"1312024.i", i32* %"13123.i", align 4
  %"1312536.i" = load i32, i32* inttoptr (i32 160 to i32*), align 32
  %"13129.i" = getelementptr inbounds i32, i32* %"118841.i", i32 2
  store i32 %"1312536.i", i32* %"13129.i", align 4
  %"100283" = load i32*, i32** %"10022", align 4
  %"116711.i" = getelementptr inbounds i32, i32* %"100283", i32 6
  %"11671.i" = bitcast i32* %"116711.i" to i32**
  %"116717.i" = load i32*, i32** %"11671.i", align 4
  store i32 %V6744.V3153.group_id.tr8, i32* %"116717.i", align 4
  %"100314" = load i32*, i32** %"10022", align 4
  tail call void @V6263.V2672.pretrace_diffuse_rays(i32* %"100314", i32 0)
  %V6792.V3169.2228 = add nsw i32 %V6743.V3152.x.tr7, -1
  %V9631.V6040.sum.i = add i32 %V6744.V3153.group_id.tr8, 1
  %5 = icmp sgt i32 %V9631.V6040.sum.i, 4
  %"13146.i" = add i32 %V6744.V3153.group_id.tr8, -4
  %"13145.i" = select i1 %5, i32 %"13146.i", i32 %V9631.V6040.sum.i
  %6 = icmp sgt i32 %V6743.V3152.x.tr7, 0
  br i1 %6, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define void @V6248.V2657.trace_ray(i32 %V7056.V3465.nref, float %V7057.V3466.energy, i32* %V7058.V3467.dirvec, i32* nocapture readonly %V7059.V3468.pixel, float %V7060.V3469.dist) {
entry:
  %0 = icmp slt i32 %V7056.V3465.nref, 5
  br i1 %0, label %then.lr.ph, label %ifcont32

then.lr.ph:                                       ; preds = %entry
  %"118261.i" = getelementptr inbounds i32, i32* %V7059.V3468.pixel, i32 2
  %"11826.i" = bitcast i32* %"118261.i" to i32**
  %"118551.i" = getelementptr inbounds i32, i32* %V7059.V3468.pixel, i32 1
  %"11855.i" = bitcast i32* %"118551.i" to i32**
  %"117971.i" = getelementptr inbounds i32, i32* %V7059.V3468.pixel, i32 3
  %"11797.i" = bitcast i32* %"117971.i" to i32**
  %"13022.i33" = bitcast i32* %V7058.V3467.dirvec to float*
  %"130291.i37" = getelementptr inbounds i32, i32* %V7058.V3467.dirvec, i32 1
  %"13029.i38" = bitcast i32* %"130291.i37" to float*
  %"130353.i43" = getelementptr inbounds i32, i32* %V7058.V3467.dirvec, i32 2
  %"13035.i44" = bitcast i32* %"130353.i43" to float*
  %"117681.i" = getelementptr inbounds i32, i32* %V7059.V3468.pixel, i32 4
  %"11768.i" = bitcast i32* %"117681.i" to i32**
  %"116421.i" = getelementptr inbounds i32, i32* %V7059.V3468.pixel, i32 7
  %"11642.i" = bitcast i32* %"116421.i" to i32**
  br label %then

then:                                             ; preds = %then.lr.ph, %then26
  %V7057.V3466.energy.tr72 = phi float [ %V7057.V3466.energy, %then.lr.ph ], [ %V7117.V3496.energy2, %then26 ]
  %V7056.V3465.nref.tr71 = phi i32 [ %V7056.V3465.nref, %then.lr.ph ], [ %V7119.V3497.2005, %then26 ]
  %"118263.i" = load i32*, i32** %"11826.i", align 4
  store i32 1315859240, i32* inttoptr (i32 138 to i32*), align 4
  %"10597.i" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  tail call void @V6235.V2644.trace_or_matrix(i32 0, i32* %"10597.i", i32* %V7058.V3467.dirvec) #2
  %"10600.i" = load float, float* inttoptr (i32 138 to float*), align 4
  %1 = fcmp ogt float %"10600.i", 0xBFB99999A0000000
  %2 = fcmp olt float %"10600.i", 1.000000e+08
  %"10602.i" = and i1 %1, %2
  br i1 %"10602.i", label %else9, label %then1

then1:                                            ; preds = %then
  %"118263.i.lcssa" = phi i32* [ %"118263.i", %then ]
  %V7056.V3465.nref.tr71.lcssa = phi i32 [ %V7056.V3465.nref.tr71, %then ]
  %V7057.V3466.energy.tr72.lcssa = phi float [ %V7057.V3466.energy.tr72, %then ]
  %"10273" = getelementptr inbounds i32, i32* %"118263.i.lcssa", i32 %V7056.V3465.nref.tr71.lcssa
  store i32 -1, i32* %"10273", align 4
  %V7149.V3555.2032 = icmp eq i32 %V7056.V3465.nref.tr71.lcssa, 0
  br i1 %V7149.V3555.2032, label %ifcont32, label %else4

else4:                                            ; preds = %then1
  %"130231.i" = load float, float* %"13022.i33", align 4
  %"130262.i" = load float, float* inttoptr (i32 79 to float*), align 4
  %V9502.V5913.513.i = fmul float %"130231.i", %"130262.i"
  %"130293.i" = load float, float* %"13029.i38", align 4
  %"130324.i" = load float, float* inttoptr (i32 83 to float*), align 4
  %V9507.V5914.514.i = fmul float %"130293.i", %"130324.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130355.i" = load float, float* %"13035.i44", align 4
  %"130386.i" = load float, float* inttoptr (i32 87 to float*), align 4
  %V9513.V5908.520.i = fmul float %"130355.i", %"130386.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %"13209.i" = fsub float 0.000000e+00, %"13040.i"
  %3 = fcmp ogt float %"13209.i", 0.000000e+00
  br i1 %3, label %else6, label %ifcont32

else6:                                            ; preds = %else4
  %"13208.i" = fmul float %"13209.i", %"13209.i"
  %V7156.V3578.2014 = fmul float %"13209.i", %"13208.i"
  %V7157.V3575.2016 = fmul float %V7057.V3466.energy.tr72.lcssa, %V7156.V3578.2014
  %"10281" = load float, float* inttoptr (i32 82 to float*), align 4
  %V7160.V3560.ihl = fmul float %V7157.V3575.2016, %"10281"
  %"10284" = load float, float* inttoptr (i32 152 to float*), align 8
  %V7164.V3572.2021 = fadd float %"10284", %V7160.V3560.ihl
  store float %V7164.V3572.2021, float* inttoptr (i32 152 to float*), align 8
  %"10289" = load float, float* inttoptr (i32 156 to float*), align 4
  %V7169.V3568.2025 = fadd float %V7160.V3560.ihl, %"10289"
  store float %V7169.V3568.2025, float* inttoptr (i32 156 to float*), align 4
  %"10294" = load float, float* inttoptr (i32 160 to float*), align 32
  %V7174.V3564.2029 = fadd float %V7160.V3560.ihl, %"10294"
  store float %V7174.V3564.2029, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont32

else9:                                            ; preds = %then
  %"10300" = load i32, i32* inttoptr (i32 142 to i32*), align 4
  %"10303" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"10300"
  %"1030310" = load i32*, i32** %"10303", align 4
  %"12773.i" = getelementptr inbounds i32, i32* %"1030310", i32 2
  %"127733.i" = load i32, i32* %"12773.i", align 4
  %"123201.i66" = getelementptr inbounds i32, i32* %"1030310", i32 7
  %4 = bitcast i32* %"123201.i66" to float**
  %"1232082.i67" = load float*, float** %4, align 4
  %"1233312.i68" = load float, float* %"1232082.i67", align 4
  %V7070.V3477.diffuse = fmul float %V7057.V3466.energy.tr72, %"1233312.i68"
  %"12814.i.i" = getelementptr inbounds i32, i32* %"1030310", i32 1
  %"128142.i.i" = load i32, i32* %"12814.i.i", align 4
  switch i32 %"128142.i.i", label %else2.i65 [
    i32 1, label %then.i
    i32 2, label %then1.i
  ]

then.i:                                           ; preds = %else9
  %"10490.i.i" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  store float 0.000000e+00, float* inttoptr (i32 143 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 147 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 151 to float*), align 4
  %V7466.V3873.1736.i.i = add i32 %"10490.i.i", -1
  %"104932.i.i" = getelementptr inbounds i32, i32* %V7058.V3467.dirvec, i32 %V7466.V3873.1736.i.i
  %"10493.i.i" = bitcast i32* %"104932.i.i" to float*
  %"104931.i.i" = load float, float* %"10493.i.i", align 4
  %5 = fcmp oeq float %"104931.i.i", 0.000000e+00
  %6 = fcmp ogt float %"104931.i.i", 0.000000e+00
  %..i.op.i.i = select i1 %6, float -1.000000e+00, float 1.000000e+00
  %"13209.i.i.i" = select i1 %5, float 0.000000e+00, float %..i.op.i.i
  %"10497.i.i" = getelementptr inbounds i32, i32* inttoptr (i32 143 to i32*), i32 %V7466.V3873.1736.i.i
  %7 = bitcast i32* %"10497.i.i" to float*
  store float %"13209.i.i.i", float* %7, align 4
  br label %V6244.V2653.get_nvector.exit

then1.i:                                          ; preds = %else9
  %"126431.i.i.i" = getelementptr inbounds i32, i32* %"1030310", i32 4
  %8 = bitcast i32* %"126431.i.i.i" to float**
  %"1264352.i.i.i" = load float*, float** %8, align 4
  %"1266512.i.i.i" = load float, float* %"1264352.i.i.i", align 4
  %"13209.i2.i.i" = fsub float 0.000000e+00, %"1266512.i.i.i"
  store float %"13209.i2.i.i", float* inttoptr (i32 143 to float*), align 4
  %"1259552.i.i.i" = load float*, float** %8, align 4
  %"12617.i.i.i" = getelementptr inbounds float, float* %"1259552.i.i.i", i32 1
  %"1261712.i.i.i" = load float, float* %"12617.i.i.i", align 4
  %"13209.i1.i.i" = fsub float 0.000000e+00, %"1261712.i.i.i"
  store float %"13209.i1.i.i", float* inttoptr (i32 147 to float*), align 4
  %"1254752.i.i.i" = load float*, float** %8, align 4
  %"12569.i.i.i" = getelementptr inbounds float, float* %"1254752.i.i.i", i32 2
  %"1256912.i.i.i" = load float, float* %"12569.i.i.i", align 4
  %"13209.i.i1.i" = fsub float 0.000000e+00, %"1256912.i.i.i"
  store float %"13209.i.i1.i", float* inttoptr (i32 151 to float*), align 4
  br label %V6244.V2653.get_nvector.exit

else2.i65:                                        ; preds = %else9
  tail call void @V6243.V2652.get_nvector_second(i32* nonnull %"1030310") #2
  br label %V6244.V2653.get_nvector.exit

V6244.V2653.get_nvector.exit:                     ; preds = %then.i, %then1.i, %else2.i65
  %"1311511.i62" = load i32, i32* inttoptr (i32 139 to i32*), align 4
  store i32 %"1311511.i62", i32* inttoptr (i32 160 to i32*), align 32
  %"1312024.i63" = load i32, i32* inttoptr (i32 143 to i32*), align 4
  store i32 %"1312024.i63", i32* inttoptr (i32 164 to i32*), align 4
  %"1312536.i64" = load i32, i32* inttoptr (i32 147 to i32*), align 4
  store i32 %"1312536.i64", i32* inttoptr (i32 168 to i32*), align 8
  tail call void @V6245.V2654.utexture(i32* %"1030310", i32* nonnull inttoptr (i32 139 to i32*))
  %V7075.V3548.1960 = shl i32 %"10300", 2
  %"10306" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  %V7078.V3547.1962 = add i32 %"10306", %V7075.V3548.1960
  %"10309" = getelementptr inbounds i32, i32* %"118263.i", i32 %V7056.V3465.nref.tr71
  store i32 %V7078.V3547.1962, i32* %"10309", align 4
  %"118552.i" = load i32*, i32** %"11855.i", align 4
  %"103111" = getelementptr inbounds i32, i32* %"118552.i", i32 %V7056.V3465.nref.tr71
  %"10311" = bitcast i32* %"103111" to i32**
  %"1031111" = load i32*, i32** %"10311", align 4
  %"1311511.i57" = load i32, i32* inttoptr (i32 139 to i32*), align 4
  store i32 %"1311511.i57", i32* %"1031111", align 4
  %"1312024.i58" = load i32, i32* inttoptr (i32 143 to i32*), align 4
  %"13123.i59" = getelementptr inbounds i32, i32* %"1031111", i32 1
  store i32 %"1312024.i58", i32* %"13123.i59", align 4
  %"1312536.i60" = load i32, i32* inttoptr (i32 147 to i32*), align 4
  %"13129.i61" = getelementptr inbounds i32, i32* %"1031111", i32 2
  store i32 %"1312536.i60", i32* %"13129.i61", align 4
  %"117974.i" = load i32*, i32** %"11797.i", align 4
  %"1232082.i55" = load float*, float** %4, align 4
  %"1233312.i56" = load float, float* %"1232082.i55", align 4
  %9 = fcmp olt float %"1233312.i56", 5.000000e-01
  %"10314" = getelementptr inbounds i32, i32* %"117974.i", i32 %V7056.V3465.nref.tr71
  br i1 %9, label %else16, label %then12

then12:                                           ; preds = %V6244.V2653.get_nvector.exit
  store i32 1, i32* %"10314", align 4
  %"117685.i" = load i32*, i32** %"11768.i", align 4
  %"103162" = getelementptr inbounds i32, i32* %"117685.i", i32 %V7056.V3465.nref.tr71
  %"10316" = bitcast i32* %"103162" to i32**
  %"1031613" = load i32*, i32** %"10316", align 4
  %"1311511.i49" = load i32, i32* inttoptr (i32 146 to i32*), align 4
  store i32 %"1311511.i49", i32* %"1031613", align 4
  %"1312024.i50" = load i32, i32* inttoptr (i32 150 to i32*), align 4
  %"13123.i51" = getelementptr inbounds i32, i32* %"1031613", i32 1
  store i32 %"1312024.i50", i32* %"13123.i51", align 4
  %"1312536.i52" = load i32, i32* inttoptr (i32 154 to i32*), align 4
  %"13129.i53" = getelementptr inbounds i32, i32* %"1031613", i32 2
  store i32 %"1312536.i52", i32* %"13129.i53", align 4
  %"1031914" = load i32*, i32** %"10316", align 4
  %V7141.V3538.1973 = fmul float %V7070.V3477.diffuse, 3.906250e-03
  %"12921.i" = bitcast i32* %"1031914" to float*
  %"129221.i" = load float, float* %"12921.i", align 4
  %V9401.V5818.591.i = fmul float %V7141.V3538.1973, %"129221.i"
  store float %V9401.V5818.591.i, float* %"12921.i", align 4
  %"129271.i" = getelementptr inbounds i32, i32* %"1031914", i32 1
  %"12927.i" = bitcast i32* %"129271.i" to float*
  %"129272.i" = load float, float* %"12927.i", align 4
  %V9406.V5814.595.i = fmul float %V7141.V3538.1973, %"129272.i"
  store float %V9406.V5814.595.i, float* %"12927.i", align 4
  %"129322.i" = getelementptr inbounds i32, i32* %"1031914", i32 2
  %"12932.i" = bitcast i32* %"129322.i" to float*
  %"129323.i" = load float, float* %"12932.i", align 4
  %V9411.V5810.599.i = fmul float %V7141.V3538.1973, %"129323.i"
  store float %V9411.V5810.599.i, float* %"12932.i", align 4
  %"116428.i" = load i32*, i32** %"11642.i", align 4
  %"103223" = getelementptr inbounds i32, i32* %"116428.i", i32 %V7056.V3465.nref.tr71
  %"10322" = bitcast i32* %"103223" to i32**
  %"1032215" = load i32*, i32** %"10322", align 4
  %"1311511.i" = load i32, i32* inttoptr (i32 143 to i32*), align 4
  store i32 %"1311511.i", i32* %"1032215", align 4
  %"1312024.i" = load i32, i32* inttoptr (i32 147 to i32*), align 4
  %"13123.i" = getelementptr inbounds i32, i32* %"1032215", i32 1
  store i32 %"1312024.i", i32* %"13123.i", align 4
  %"1312536.i" = load i32, i32* inttoptr (i32 151 to i32*), align 4
  %"13129.i" = getelementptr inbounds i32, i32* %"1032215", i32 2
  store i32 %"1312536.i", i32* %"13129.i", align 4
  br label %ifcont17

else16:                                           ; preds = %V6244.V2653.get_nvector.exit
  store i32 0, i32* %"10314", align 4
  br label %ifcont17

ifcont17:                                         ; preds = %else16, %then12
  %"130231.i34" = load float, float* %"13022.i33", align 4
  %"130262.i35" = load float, float* inttoptr (i32 143 to float*), align 4
  %V9502.V5913.513.i36 = fmul float %"130231.i34", %"130262.i35"
  %"130293.i39" = load float, float* %"13029.i38", align 4
  %"130324.i40" = load float, float* inttoptr (i32 147 to float*), align 4
  %V9507.V5914.514.i41 = fmul float %"130293.i39", %"130324.i40"
  %V9508.V5907.519.i42 = fadd float %V9502.V5913.513.i36, %V9507.V5914.514.i41
  %"130355.i45" = load float, float* %"13035.i44", align 4
  %"130386.i46" = load float, float* inttoptr (i32 151 to float*), align 4
  %V9513.V5908.520.i47 = fmul float %"130355.i45", %"130386.i46"
  %"13040.i48" = fadd float %V9508.V5907.519.i42, %V9513.V5908.520.i47
  %V7091.V3486.w = fmul float %"13040.i48", -2.000000e+00
  %V9464.V5887.535.i = fmul float %"130262.i35", %V7091.V3486.w
  %V9465.V5885.537.i = fadd float %"130231.i34", %V9464.V5887.535.i
  store float %V9465.V5885.537.i, float* %"13022.i33", align 4
  %"129994.i" = load float, float* inttoptr (i32 147 to float*), align 4
  %V9472.V5880.542.i = fmul float %"129994.i", %V7091.V3486.w
  %V9473.V5878.544.i = fadd float %"130293.i39", %V9472.V5880.542.i
  store float %V9473.V5878.544.i, float* %"13029.i38", align 4
  %"130076.i" = load float, float* inttoptr (i32 151 to float*), align 4
  %V9480.V5873.549.i = fmul float %V7091.V3486.w, %"130076.i"
  %V9481.V5871.551.i = fadd float %"130355.i45", %V9480.V5873.549.i
  store float %V9481.V5871.551.i, float* %"13035.i44", align 4
  %"1227282.i" = load float*, float** %4, align 4
  %"12285.i" = getelementptr inbounds float, float* %"1227282.i", i32 1
  %"1228512.i" = load float, float* %"12285.i", align 4
  %V7094.V3488.hilight_scale = fmul float %V7057.V3466.energy.tr72, %"1228512.i"
  %"10329" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  %V7098.V3521.1983 = tail call i1 @V6232.V2641.shadow_check_one_or_matrix(i32 0, i32* %"10329")
  br i1 %V7098.V3521.1983, label %ifcont20, label %else19

else19:                                           ; preds = %ifcont17
  %"130231.i22" = load float, float* inttoptr (i32 143 to float*), align 4
  %"130262.i23" = load float, float* inttoptr (i32 79 to float*), align 4
  %V9502.V5913.513.i24 = fmul float %"130231.i22", %"130262.i23"
  %"130293.i25" = load float, float* inttoptr (i32 147 to float*), align 4
  %"130324.i26" = load float, float* inttoptr (i32 83 to float*), align 4
  %V9507.V5914.514.i27 = fmul float %"130293.i25", %"130324.i26"
  %V9508.V5907.519.i28 = fadd float %V9502.V5913.513.i24, %V9507.V5914.514.i27
  %"130355.i29" = load float, float* inttoptr (i32 151 to float*), align 4
  %"130386.i30" = load float, float* inttoptr (i32 87 to float*), align 4
  %V9513.V5908.520.i31 = fmul float %"130355.i29", %"130386.i30"
  %"13040.i32" = fadd float %V9508.V5907.519.i28, %V9513.V5908.520.i31
  %"13209.i21" = fsub float 0.000000e+00, %"13040.i32"
  %V7128.V3516.bright = fmul float %V7070.V3477.diffuse, %"13209.i21"
  %"130231.i6" = load float, float* %"13022.i33", align 4
  %V9502.V5913.513.i8 = fmul float %"130262.i23", %"130231.i6"
  %"130293.i11" = load float, float* %"13029.i38", align 4
  %V9507.V5914.514.i13 = fmul float %"130324.i26", %"130293.i11"
  %V9508.V5907.519.i14 = fadd float %V9502.V5913.513.i8, %V9507.V5914.514.i13
  %"130355.i17" = load float, float* %"13035.i44", align 4
  %V9513.V5908.520.i19 = fmul float %"130386.i30", %"130355.i17"
  %"13040.i20" = fadd float %V9508.V5907.519.i14, %V9513.V5908.520.i19
  %"13209.i4" = fsub float 0.000000e+00, %"13040.i20"
  %10 = fcmp ogt float %V7128.V3516.bright, 0.000000e+00
  br i1 %10, label %else.i, label %ifcont.i

else.i:                                           ; preds = %else19
  %"129881.i.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"129912.i.i" = load float, float* inttoptr (i32 146 to float*), align 4
  %V9464.V5887.535.i.i = fmul float %V7128.V3516.bright, %"129912.i.i"
  %V9465.V5885.537.i.i = fadd float %"129881.i.i", %V9464.V5887.535.i.i
  store float %V9465.V5885.537.i.i, float* inttoptr (i32 152 to float*), align 8
  %"129963.i.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129994.i.i" = load float, float* inttoptr (i32 150 to float*), align 4
  %V9472.V5880.542.i.i = fmul float %V7128.V3516.bright, %"129994.i.i"
  %V9473.V5878.544.i.i = fadd float %"129963.i.i", %V9472.V5880.542.i.i
  store float %V9473.V5878.544.i.i, float* inttoptr (i32 156 to float*), align 4
  %"130045.i.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"130076.i.i" = load float, float* inttoptr (i32 154 to float*), align 4
  %V9480.V5873.549.i.i = fmul float %V7128.V3516.bright, %"130076.i.i"
  %V9481.V5871.551.i.i = fadd float %"130045.i.i", %V9480.V5873.549.i.i
  store float %V9481.V5871.551.i.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont.i

ifcont.i:                                         ; preds = %else.i, %else19
  %11 = fcmp ogt float %"13209.i4", 0.000000e+00
  br i1 %11, label %else2.i, label %ifcont20

else2.i:                                          ; preds = %ifcont.i
  %"13208.i1.i" = fmul float %"13209.i4", %"13209.i4"
  %"13208.i.i" = fmul float %"13208.i1.i", %"13208.i1.i"
  %V7219.V3624.ihl.i = fmul float %V7094.V3488.hilight_scale, %"13208.i.i"
  %"10375.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %V7223.V3636.1922.i = fadd float %V7219.V3624.ihl.i, %"10375.i"
  store float %V7223.V3636.1922.i, float* inttoptr (i32 152 to float*), align 8
  %"10380.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %V7228.V3632.1926.i = fadd float %V7219.V3624.ihl.i, %"10380.i"
  store float %V7228.V3632.1926.i, float* inttoptr (i32 156 to float*), align 4
  %"10385.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %V7233.V3628.1930.i = fadd float %V7219.V3624.ihl.i, %"10385.i"
  store float %V7233.V3628.1930.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont20

ifcont20:                                         ; preds = %else2.i, %ifcont.i, %ifcont17
  %"1311511.i.i" = load i32, i32* inttoptr (i32 139 to i32*), align 4
  store i32 %"1311511.i.i", i32* inttoptr (i32 163 to i32*), align 4
  %"1312024.i.i" = load i32, i32* inttoptr (i32 143 to i32*), align 4
  store i32 %"1312024.i.i", i32* inttoptr (i32 167 to i32*), align 4
  %"1312536.i.i" = load i32, i32* inttoptr (i32 147 to i32*), align 4
  store i32 %"1312536.i.i", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i = add i32 %"10798.i", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* nonnull inttoptr (i32 139 to i32*), i32 %V7839.V4245.1480.i) #2
  %"10334" = load i32, i32* inttoptr (i32 435 to i32*), align 4
  %V7106.V3510.1992 = add i32 %"10334", -1
  tail call void @V6247.V2656.trace_reflections(i32 %V7106.V3510.1992, float %V7070.V3477.diffuse, float %V7094.V3488.hilight_scale, i32* nonnull %V7058.V3467.dirvec)
  %12 = fcmp ogt float %V7057.V3466.energy.tr72, 0x3FB99999A0000000
  br i1 %12, label %else22, label %ifcont32.loopexit

else22:                                           ; preds = %ifcont20
  %13 = icmp slt i32 %V7056.V3465.nref.tr71, 4
  br i1 %13, label %then23, label %ifcont25

then23:                                           ; preds = %else22
  %V7124.V3506.1996 = add nsw i32 %V7056.V3465.nref.tr71, 1
  %"10340" = getelementptr inbounds i32, i32* %"118263.i", i32 %V7124.V3506.1996
  store i32 -1, i32* %"10340", align 4
  br label %ifcont25

ifcont25:                                         ; preds = %else22, %then23
  %14 = icmp eq i32 %"127733.i", 2
  br i1 %14, label %then26, label %ifcont32.loopexit

then26:                                           ; preds = %ifcont25
  %"1232082.i" = load float*, float** %4, align 4
  %"1233312.i" = load float, float* %"1232082.i", align 4
  %V7116.V3502.2001 = fsub float 1.000000e+00, %"1233312.i"
  %V7117.V3496.energy2 = fmul float %V7057.V3466.energy.tr72, %V7116.V3502.2001
  %V7119.V3497.2005 = add nsw i32 %V7056.V3465.nref.tr71, 1
  %15 = icmp slt i32 %V7119.V3497.2005, 5
  br i1 %15, label %then, label %ifcont32.loopexit

ifcont32.loopexit:                                ; preds = %ifcont20, %then26, %ifcont25
  br label %ifcont32

ifcont32:                                         ; preds = %ifcont32.loopexit, %entry, %then1, %else4, %else6
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6186.V2595.p_set_group_id(i32* nocapture readonly %V8994.V5403.pixel, i32 %V8995.V5404.id) #0 {
entry:
  %"116711" = getelementptr inbounds i32, i32* %V8994.V5403.pixel, i32 6
  %"11671" = bitcast i32* %"116711" to i32**
  %"116717" = load i32*, i32** %"11671", align 4
  store i32 %V8995.V5404.id, i32* %"116717", align 4
  ret void
}

define void @V6263.V2672.pretrace_diffuse_rays(i32* nocapture readonly %V6795.V3204.pixel, i32 %V6796.V3205.nref) {
entry:
  %"118261.i.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 2
  %"11826.i.i" = bitcast i32* %"118261.i.i" to i32**
  %0 = icmp slt i32 %V6796.V3205.nref, 5
  br i1 %0, label %then.lr.ph, label %ifcont11

then.lr.ph:                                       ; preds = %entry
  %"117971.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 3
  %"11797.i" = bitcast i32* %"117971.i" to i32**
  %"117061.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 6
  %"11706.i" = bitcast i32* %"117061.i" to i32**
  %"116421.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 7
  %"11642.i" = bitcast i32* %"116421.i" to i32**
  %"118551.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 1
  %"11855.i" = bitcast i32* %"118551.i" to i32**
  %"117391.i" = getelementptr inbounds i32, i32* %V6795.V3204.pixel, i32 5
  %"11739.i" = bitcast i32* %"117391.i" to i32**
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont
  %V6796.V3205.nref.tr4 = phi i32 [ %V6796.V3205.nref, %then.lr.ph ], [ %V6805.V3211.2193, %ifcont ]
  %"118263.i.i" = load i32*, i32** %"11826.i.i", align 4
  %"10123.i" = getelementptr inbounds i32, i32* %"118263.i.i", i32 %V6796.V3205.nref.tr4
  %"101231.i" = load i32, i32* %"10123.i", align 4
  %1 = icmp sgt i32 %"101231.i", -1
  br i1 %1, label %then1, label %ifcont11.loopexit

then1:                                            ; preds = %then
  %"117974.i" = load i32*, i32** %"11797.i", align 4
  %"10038" = getelementptr inbounds i32, i32* %"117974.i", i32 %V6796.V3205.nref.tr4
  %"100382" = load i32, i32* %"10038", align 4
  %2 = and i32 %"100382", 1
  %"10039" = icmp eq i32 %2, 0
  br i1 %"10039", label %ifcont, label %else

else:                                             ; preds = %then1
  %"117067.i" = load i32*, i32** %"11706.i", align 4
  %"117139.i" = load i32, i32* %"117067.i", align 4
  store float 0.000000e+00, float* inttoptr (i32 149 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 153 to float*), align 4
  store float 0.000000e+00, float* inttoptr (i32 157 to float*), align 4
  %"116428.i" = load i32*, i32** %"11642.i", align 4
  %"118552.i" = load i32*, i32** %"11855.i", align 4
  %"10042" = getelementptr inbounds i32*, i32** inttoptr (i32 180 to i32**), i32 %"117139.i"
  %"100424" = load i32*, i32** %"10042", align 4
  %"100451" = getelementptr inbounds i32, i32* %"116428.i", i32 %V6796.V3205.nref.tr4
  %"10045" = bitcast i32* %"100451" to i32**
  %"100455" = load i32*, i32** %"10045", align 4
  %"100482" = getelementptr inbounds i32, i32* %"118552.i", i32 %V6796.V3205.nref.tr4
  %"10048" = bitcast i32* %"100482" to i32**
  %"100486" = load i32*, i32** %"10048", align 4
  %"1311511.i.i.i" = load i32, i32* %"100486", align 4
  store i32 %"1311511.i.i.i", i32* inttoptr (i32 163 to i32*), align 4
  %"131203.i.i.i" = getelementptr inbounds i32, i32* %"100486", i32 1
  %"1312024.i.i.i" = load i32, i32* %"131203.i.i.i", align 4
  store i32 %"1312024.i.i.i", i32* inttoptr (i32 167 to i32*), align 4
  %"131255.i.i.i" = getelementptr inbounds i32, i32* %"100486", i32 2
  %"1312536.i.i.i" = load i32, i32* %"131255.i.i.i", align 4
  store i32 %"1312536.i.i.i", i32* inttoptr (i32 171 to i32*), align 4
  %"10798.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7839.V4245.1480.i.i = add i32 %"10798.i.i", -1
  tail call void @V6223.V2632.setup_startp_constants(i32* %"100486", i32 %V7839.V4245.1480.i.i) #2
  %"13025.i.i.i" = bitcast i32* %"100455" to float*
  %"130322.i.i.i" = getelementptr inbounds i32, i32* %"100455", i32 1
  %"13032.i.i.i" = bitcast i32* %"130322.i.i.i" to float*
  %"130384.i.i.i" = getelementptr inbounds i32, i32* %"100455", i32 2
  %"13038.i.i.i" = bitcast i32* %"130384.i.i.i" to float*
  br label %then.i.i

then.i.i:                                         ; preds = %ifcont.i.i, %else
  %V7014.V3423.index.tr4.i.i = phi i32 [ 118, %else ], [ %V7023.V3427.2067.i.i, %ifcont.i.i ]
  %"102422.i.i" = getelementptr inbounds i32, i32* %"100424", i32 %V7014.V3423.index.tr4.i.i
  %"10242.i.i" = bitcast i32* %"102422.i.i" to i32**
  %"102421.i.i" = load i32*, i32** %"10242.i.i", align 4
  %"11606.i.i.i" = bitcast i32* %"102421.i.i" to i32**
  %"116071.i.i.i" = load i32*, i32** %"11606.i.i.i", align 4
  %"13022.i.i.i" = bitcast i32* %"116071.i.i.i" to float*
  %"130231.i.i.i" = load float, float* %"13022.i.i.i", align 4
  %"130262.i.i.i" = load float, float* %"13025.i.i.i", align 4
  %V9502.V5913.513.i.i.i = fmul float %"130231.i.i.i", %"130262.i.i.i"
  %"130291.i.i.i" = getelementptr inbounds i32, i32* %"116071.i.i.i", i32 1
  %"13029.i.i.i" = bitcast i32* %"130291.i.i.i" to float*
  %"130293.i.i.i" = load float, float* %"13029.i.i.i", align 4
  %"130324.i.i.i" = load float, float* %"13032.i.i.i", align 4
  %V9507.V5914.514.i.i.i = fmul float %"130293.i.i.i", %"130324.i.i.i"
  %V9508.V5907.519.i.i.i = fadd float %V9502.V5913.513.i.i.i, %V9507.V5914.514.i.i.i
  %"130353.i.i.i" = getelementptr inbounds i32, i32* %"116071.i.i.i", i32 2
  %"13035.i.i.i" = bitcast i32* %"130353.i.i.i" to float*
  %"130355.i.i.i" = load float, float* %"13035.i.i.i", align 4
  %"130386.i.i.i" = load float, float* %"13038.i.i.i", align 4
  %V9513.V5908.520.i.i.i = fmul float %"130355.i.i.i", %"130386.i.i.i"
  %"13040.i.i.i" = fadd float %V9508.V5907.519.i.i.i, %V9513.V5908.520.i.i.i
  %3 = fcmp olt float %"13040.i.i.i", 0.000000e+00
  br i1 %3, label %else.i.i, label %then2.i.i

then2.i.i:                                        ; preds = %then.i.i
  %V7031.V3437.2063.i.i = fdiv float %"13040.i.i.i", 1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102421.i.i", float %V7031.V3437.2063.i.i)
  br label %ifcont.i.i

else.i.i:                                         ; preds = %then.i.i
  %V7025.V3434.2057.i.i = or i32 %V7014.V3423.index.tr4.i.i, 1
  %"102493.i.i" = getelementptr inbounds i32, i32* %"100424", i32 %V7025.V3434.2057.i.i
  %"10249.i.i" = bitcast i32* %"102493.i.i" to i32**
  %"102494.i.i" = load i32*, i32** %"10249.i.i", align 4
  %V7028.V3432.2060.i.i = fdiv float %"13040.i.i.i", -1.500000e+02
  tail call void @V6249.V2658.trace_diffuse_ray(i32* %"102494.i.i", float %V7028.V3432.2060.i.i)
  br label %ifcont.i.i

ifcont.i.i:                                       ; preds = %else.i.i, %then2.i.i
  %V7023.V3427.2067.i.i = add nsw i32 %V7014.V3423.index.tr4.i.i, -2
  %4 = icmp sgt i32 %V7023.V3427.2067.i.i, -1
  br i1 %4, label %then.i.i, label %V6251.V2660.trace_diffuse_rays.exit

V6251.V2660.trace_diffuse_rays.exit:              ; preds = %ifcont.i.i
  %"117396.i" = load i32*, i32** %"11739.i", align 4
  %"100513" = getelementptr inbounds i32, i32* %"117396.i", i32 %V6796.V3205.nref.tr4
  %"10051" = bitcast i32* %"100513" to i32**
  %"100517" = load i32*, i32** %"10051", align 4
  %"1311511.i" = load i32, i32* inttoptr (i32 149 to i32*), align 4
  store i32 %"1311511.i", i32* %"100517", align 4
  %"1312024.i" = load i32, i32* inttoptr (i32 153 to i32*), align 4
  %"13123.i" = getelementptr inbounds i32, i32* %"100517", i32 1
  store i32 %"1312024.i", i32* %"13123.i", align 4
  %"1312536.i" = load i32, i32* inttoptr (i32 157 to i32*), align 4
  %"13129.i" = getelementptr inbounds i32, i32* %"100517", i32 2
  store i32 %"1312536.i", i32* %"13129.i", align 4
  br label %ifcont

ifcont:                                           ; preds = %then1, %V6251.V2660.trace_diffuse_rays.exit
  %V6805.V3211.2193 = add nsw i32 %V6796.V3205.nref.tr4, 1
  %5 = icmp slt i32 %V6805.V3211.2193, 5
  br i1 %5, label %then, label %ifcont11.loopexit

ifcont11.loopexit:                                ; preds = %ifcont, %then
  br label %ifcont11

ifcont11:                                         ; preds = %ifcont11.loopexit, %entry
  ret void
}

; Function Attrs: nounwind
define i1 @V6236.V2645.judge_intersection(i32* readonly %V7580.V3989.dirvec) #2 {
entry:
  store i32 1315859240, i32* inttoptr (i32 138 to i32*), align 4
  %"10597" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  tail call void @V6235.V2644.trace_or_matrix(i32 0, i32* %"10597", i32* %V7580.V3989.dirvec)
  %"10600" = load float, float* inttoptr (i32 138 to float*), align 4
  %0 = fcmp ogt float %"10600", 0xBFB99999A0000000
  %1 = fcmp olt float %"10600", 1.000000e+08
  %"10602" = and i1 %0, %1
  ret i1 %"10602"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6160.V2569.o_reflectiontype(i32* nocapture readonly %V9325.V5734.m) #1 {
entry:
  %"12773" = getelementptr inbounds i32, i32* %V9325.V5734.m, i32 2
  %"127733" = load i32, i32* %"12773", align 4
  ret i32 %"127733"
}

; Function Attrs: norecurse nounwind
define void @V6156.V2565.vecscale(i32* nocapture %V9396.V5805.dest, float %V9397.V5806.scale) #0 {
entry:
  %"12921" = bitcast i32* %V9396.V5805.dest to float*
  %"129221" = load float, float* %"12921", align 4
  %V9401.V5818.591 = fmul float %"129221", %V9397.V5806.scale
  store float %V9401.V5818.591, float* %"12921", align 4
  %"129271" = getelementptr inbounds i32, i32* %V9396.V5805.dest, i32 1
  %"12927" = bitcast i32* %"129271" to float*
  %"129272" = load float, float* %"12927", align 4
  %V9406.V5814.595 = fmul float %"129272", %V9397.V5806.scale
  store float %V9406.V5814.595, float* %"12927", align 4
  %"129322" = getelementptr inbounds i32, i32* %V9396.V5805.dest, i32 2
  %"12932" = bitcast i32* %"129322" to float*
  %"129323" = load float, float* %"12932", align 4
  %V9411.V5810.599 = fmul float %"129323", %V9397.V5806.scale
  store float %V9411.V5810.599, float* %"12932", align 4
  ret void
}

; Function Attrs: norecurse nounwind readonly
define float @V6171.V2580.o_hilight(i32* nocapture readonly %V9174.V5583.m) #1 {
entry:
  %"122721" = getelementptr inbounds i32, i32* %V9174.V5583.m, i32 7
  %0 = bitcast i32* %"122721" to float**
  %"1227282" = load float*, float** %0, align 4
  %"12285" = getelementptr inbounds float, float* %"1227282", i32 1
  %"1228512" = load float, float* %"12285", align 4
  ret float %"1228512"
}

; Function Attrs: norecurse nounwind
define void @V6246.V2655.add_light(float %V7209.V3618.bright, float %V7210.V3619.hilight, float %V7211.V3620.hilight_scale) #0 {
entry:
  %0 = fcmp ogt float %V7209.V3618.bright, 0.000000e+00
  br i1 %0, label %else, label %ifcont

else:                                             ; preds = %entry
  %"129881.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"129912.i" = load float, float* inttoptr (i32 146 to float*), align 4
  %V9464.V5887.535.i = fmul float %"129912.i", %V7209.V3618.bright
  %V9465.V5885.537.i = fadd float %"129881.i", %V9464.V5887.535.i
  store float %V9465.V5885.537.i, float* inttoptr (i32 152 to float*), align 8
  %"129963.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129994.i" = load float, float* inttoptr (i32 150 to float*), align 4
  %V9472.V5880.542.i = fmul float %"129994.i", %V7209.V3618.bright
  %V9473.V5878.544.i = fadd float %"129963.i", %V9472.V5880.542.i
  store float %V9473.V5878.544.i, float* inttoptr (i32 156 to float*), align 4
  %"130045.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"130076.i" = load float, float* inttoptr (i32 154 to float*), align 4
  %V9480.V5873.549.i = fmul float %"130076.i", %V7209.V3618.bright
  %V9481.V5871.551.i = fadd float %"130045.i", %V9480.V5873.549.i
  store float %V9481.V5871.551.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %1 = fcmp ogt float %V7210.V3619.hilight, 0.000000e+00
  br i1 %1, label %else2, label %ifcont3

else2:                                            ; preds = %ifcont
  %"13208.i1" = fmul float %V7210.V3619.hilight, %V7210.V3619.hilight
  %"13208.i" = fmul float %"13208.i1", %"13208.i1"
  %V7219.V3624.ihl = fmul float %"13208.i", %V7211.V3620.hilight_scale
  %"10375" = load float, float* inttoptr (i32 152 to float*), align 8
  %V7223.V3636.1922 = fadd float %V7219.V3624.ihl, %"10375"
  store float %V7223.V3636.1922, float* inttoptr (i32 152 to float*), align 8
  %"10380" = load float, float* inttoptr (i32 156 to float*), align 4
  %V7228.V3632.1926 = fadd float %V7219.V3624.ihl, %"10380"
  store float %V7228.V3632.1926, float* inttoptr (i32 156 to float*), align 4
  %"10385" = load float, float* inttoptr (i32 160 to float*), align 32
  %V7233.V3628.1930 = fadd float %V7219.V3624.ihl, %"10385"
  store float %V7233.V3628.1930, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont3

ifcont3:                                          ; preds = %ifcont, %else2
  ret void
}

; Function Attrs: nounwind
define void @V6247.V2656.trace_reflections(i32 %V7175.V3584.index, float %V7176.V3585.diffuse, float %V7177.V3586.hilight_scale, i32* nocapture readonly %V7178.V3587.dirvec) #2 {
entry:
  %0 = icmp sgt i32 %V7175.V3584.index, -1
  br i1 %0, label %then.lr.ph, label %ifcont10

then.lr.ph:                                       ; preds = %entry
  %"13022.i" = bitcast i32* %V7178.V3587.dirvec to float*
  %"130291.i" = getelementptr inbounds i32, i32* %V7178.V3587.dirvec, i32 1
  %"13029.i" = bitcast i32* %"130291.i" to float*
  %"130353.i" = getelementptr inbounds i32, i32* %V7178.V3587.dirvec, i32 2
  %"13035.i" = bitcast i32* %"130353.i" to float*
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont8
  %V7175.V3584.index.tr19 = phi i32 [ %V7175.V3584.index, %then.lr.ph ], [ %V7186.V3592.1954, %ifcont8 ]
  %"10351" = getelementptr inbounds i32*, i32** inttoptr (i32 255 to i32**), i32 %V7175.V3584.index.tr19
  %"103511" = load i32*, i32** %"10351", align 4
  %"115791.i" = getelementptr inbounds i32, i32* %"103511", i32 1
  %"11579.i" = bitcast i32* %"115791.i" to i32**
  %"115792.i" = load i32*, i32** %"11579.i", align 4
  store i32 1315859240, i32* inttoptr (i32 138 to i32*), align 4
  %"10501.i" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  tail call void @V6239.V2648.trace_or_matrix_fast(i32 0, i32* %"10501.i", i32* %"115792.i") #2
  %"10504.i" = load float, float* inttoptr (i32 138 to float*), align 4
  %1 = fcmp ogt float %"10504.i", 0xBFB99999A0000000
  %2 = fcmp olt float %"10504.i", 1.000000e+08
  %"10506.i" = and i1 %1, %2
  br i1 %"10506.i", label %else, label %ifcont8

else:                                             ; preds = %then
  %"10355" = load i32, i32* inttoptr (i32 142 to i32*), align 4
  %V7190.V3612.1938 = shl i32 %"10355", 2
  %"10358" = load i32, i32* inttoptr (i32 137 to i32*), align 4
  %V7193.V3596.surface_id = add i32 %V7190.V3612.1938, %"10358"
  %"115881.i" = load i32, i32* %"103511", align 4
  %3 = icmp eq i32 %V7193.V3596.surface_id, %"115881.i"
  br i1 %3, label %then3, label %ifcont8

then3:                                            ; preds = %else
  %"10362" = load i32*, i32** inttoptr (i32 135 to i32**), align 4
  %V7198.V3608.1944 = tail call i1 @V6232.V2641.shadow_check_one_or_matrix(i32 0, i32* %"10362")
  br i1 %V7198.V3608.1944, label %ifcont8, label %else5

else5:                                            ; preds = %then3
  %"11606.i17" = bitcast i32* %"115792.i" to i32**
  %"116071.i18" = load i32*, i32** %"11606.i17", align 4
  %"130231.i1" = load float, float* inttoptr (i32 143 to float*), align 4
  %"13025.i2" = bitcast i32* %"116071.i18" to float*
  %"130262.i3" = load float, float* %"13025.i2", align 4
  %V9502.V5913.513.i4 = fmul float %"130231.i1", %"130262.i3"
  %"130293.i5" = load float, float* inttoptr (i32 147 to float*), align 4
  %"130322.i6" = getelementptr inbounds i32, i32* %"116071.i18", i32 1
  %"13032.i7" = bitcast i32* %"130322.i6" to float*
  %"130324.i8" = load float, float* %"13032.i7", align 4
  %V9507.V5914.514.i9 = fmul float %"130293.i5", %"130324.i8"
  %V9508.V5907.519.i10 = fadd float %V9502.V5913.513.i4, %V9507.V5914.514.i9
  %"130355.i11" = load float, float* inttoptr (i32 151 to float*), align 4
  %"130384.i12" = getelementptr inbounds i32, i32* %"116071.i18", i32 2
  %"13038.i13" = bitcast i32* %"130384.i12" to float*
  %"130386.i14" = load float, float* %"13038.i13", align 4
  %V9513.V5908.520.i15 = fmul float %"130355.i11", %"130386.i14"
  %"13040.i16" = fadd float %V9508.V5907.519.i10, %V9513.V5908.520.i15
  %"115701.i" = getelementptr inbounds i32, i32* %"103511", i32 2
  %"11570.i" = bitcast i32* %"115701.i" to float*
  %"115703.i" = load float, float* %"11570.i", align 4
  %V7204.V3606.1946 = fmul float %"115703.i", %V7176.V3585.diffuse
  %V7205.V3602.bright = fmul float %V7204.V3606.1946, %"13040.i16"
  %"130231.i" = load float, float* %"13022.i", align 4
  %V9502.V5913.513.i = fmul float %"130262.i3", %"130231.i"
  %"130293.i" = load float, float* %"13029.i", align 4
  %V9507.V5914.514.i = fmul float %"130324.i8", %"130293.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130355.i" = load float, float* %"13035.i", align 4
  %V9513.V5908.520.i = fmul float %"130386.i14", %"130355.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %V7208.V3603.hilight = fmul float %"115703.i", %"13040.i"
  %4 = fcmp ogt float %V7205.V3602.bright, 0.000000e+00
  br i1 %4, label %else.i, label %ifcont.i

else.i:                                           ; preds = %else5
  %"129881.i.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %"129912.i.i" = load float, float* inttoptr (i32 146 to float*), align 4
  %V9464.V5887.535.i.i = fmul float %V7205.V3602.bright, %"129912.i.i"
  %V9465.V5885.537.i.i = fadd float %"129881.i.i", %V9464.V5887.535.i.i
  store float %V9465.V5885.537.i.i, float* inttoptr (i32 152 to float*), align 8
  %"129963.i.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %"129994.i.i" = load float, float* inttoptr (i32 150 to float*), align 4
  %V9472.V5880.542.i.i = fmul float %V7205.V3602.bright, %"129994.i.i"
  %V9473.V5878.544.i.i = fadd float %"129963.i.i", %V9472.V5880.542.i.i
  store float %V9473.V5878.544.i.i, float* inttoptr (i32 156 to float*), align 4
  %"130045.i.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %"130076.i.i" = load float, float* inttoptr (i32 154 to float*), align 4
  %V9480.V5873.549.i.i = fmul float %V7205.V3602.bright, %"130076.i.i"
  %V9481.V5871.551.i.i = fadd float %"130045.i.i", %V9480.V5873.549.i.i
  store float %V9481.V5871.551.i.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont.i

ifcont.i:                                         ; preds = %else.i, %else5
  %5 = fcmp ogt float %V7208.V3603.hilight, 0.000000e+00
  br i1 %5, label %else2.i, label %ifcont8

else2.i:                                          ; preds = %ifcont.i
  %"13208.i1.i" = fmul float %V7208.V3603.hilight, %V7208.V3603.hilight
  %"13208.i.i" = fmul float %"13208.i1.i", %"13208.i1.i"
  %V7219.V3624.ihl.i = fmul float %"13208.i.i", %V7177.V3586.hilight_scale
  %"10375.i" = load float, float* inttoptr (i32 152 to float*), align 8
  %V7223.V3636.1922.i = fadd float %V7219.V3624.ihl.i, %"10375.i"
  store float %V7223.V3636.1922.i, float* inttoptr (i32 152 to float*), align 8
  %"10380.i" = load float, float* inttoptr (i32 156 to float*), align 4
  %V7228.V3632.1926.i = fadd float %V7219.V3624.ihl.i, %"10380.i"
  store float %V7228.V3632.1926.i, float* inttoptr (i32 156 to float*), align 4
  %"10385.i" = load float, float* inttoptr (i32 160 to float*), align 32
  %V7233.V3628.1930.i = fadd float %V7219.V3624.ihl.i, %"10385.i"
  store float %V7233.V3628.1930.i, float* inttoptr (i32 160 to float*), align 32
  br label %ifcont8

ifcont8:                                          ; preds = %else2.i, %ifcont.i, %then, %then3, %else
  %V7186.V3592.1954 = add nsw i32 %V7175.V3584.index.tr19, -1
  %6 = icmp sgt i32 %V7175.V3584.index.tr19, 0
  br i1 %6, label %then, label %ifcont10.loopexit

ifcont10.loopexit:                                ; preds = %ifcont8
  br label %ifcont10

ifcont10:                                         ; preds = %ifcont10.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind readonly
define i32* @V6191.V2600.r_dvec(i32* nocapture readonly %V8966.V5375.r) #1 {
entry:
  %"115791" = getelementptr inbounds i32, i32* %V8966.V5375.r, i32 1
  %"11579" = bitcast i32* %"115791" to i32**
  %"115792" = load i32*, i32** %"11579", align 4
  ret i32* %"115792"
}

; Function Attrs: norecurse nounwind readonly
define i32 @V6190.V2599.r_surface_id(i32* nocapture readonly %V8971.V5380.r) #1 {
entry:
  %"115881" = load i32, i32* %V8971.V5380.r, align 4
  ret i32 %"115881"
}

; Function Attrs: norecurse nounwind readonly
define float @V6192.V2601.r_bright(i32* nocapture readonly %V8961.V5370.r) #1 {
entry:
  %"115701" = getelementptr inbounds i32, i32* %V8961.V5370.r, i32 2
  %"11570" = bitcast i32* %"115701" to float*
  %"115703" = load float, float* %"11570", align 4
  ret float %"115703"
}

; Function Attrs: nounwind
define void @V6235.V2644.trace_or_matrix(i32 %V7594.V4003.ofs, i32* nocapture readonly %V7595.V4004.or_network, i32* readonly %V7596.V4005.dirvec) #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %ifcont13, %entry
  %V7594.V4003.ofs.tr = phi i32 [ %V7594.V4003.ofs, %entry ], [ %V7604.V4010.1644, %ifcont13 ]
  %"106062" = getelementptr inbounds i32, i32* %V7595.V4004.or_network, i32 %V7594.V4003.ofs.tr
  %"10606" = bitcast i32* %"106062" to i32**
  %"106061" = load i32*, i32** %"10606", align 4
  %"106092" = load i32, i32* %"106061", align 4
  switch i32 %"106092", label %else4 [
    i32 -1, label %ifcont14
    i32 99, label %then3
  ]

then3:                                            ; preds = %tailrecurse
  %"106292.i" = getelementptr inbounds i32, i32* %"106061", i32 1
  %"1062913.i" = load i32, i32* %"106292.i", align 4
  %V7624.V4031.16274.i = icmp eq i32 %"1062913.i", -1
  br i1 %V7624.V4031.16274.i, label %ifcont13, label %else3.i.preheader

else3.i.preheader:                                ; preds = %then3
  br label %else3.i

else3.i:                                          ; preds = %else3.i.preheader, %else3.i
  %"1062916.i" = phi i32 [ %"106291.i", %else3.i ], [ %"1062913.i", %else3.i.preheader ]
  %V7618.V4027.ofs.tr5.i = phi i32 [ %V7630.V4035.1626.i, %else3.i ], [ 1, %else3.i.preheader ]
  %"10636.i" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1062916.i"
  %"106364.i" = load i32*, i32** %"10636.i", align 4
  tail call void @V6233.V2642.solve_each_element(i32 0, i32* %"106364.i", i32* %V7596.V4005.dirvec) #2
  %V7630.V4035.1626.i = add i32 %V7618.V4027.ofs.tr5.i, 1
  %"10629.i" = getelementptr inbounds i32, i32* %"106061", i32 %V7630.V4035.1626.i
  %"106291.i" = load i32, i32* %"10629.i", align 4
  %V7624.V4031.1627.i = icmp eq i32 %"106291.i", -1
  br i1 %V7624.V4031.1627.i, label %ifcont13.loopexit20, label %else3.i

else4:                                            ; preds = %tailrecurse
  %V7605.V4013.t = tail call i32 @V6210.V2619.solver(i32 %"106092", i32* %V7596.V4005.dirvec, i32* nonnull inttoptr (i32 160 to i32*))
  %V7608.V4014.1641 = icmp eq i32 %V7605.V4013.t, 0
  br i1 %V7608.V4014.1641, label %ifcont13, label %else8

else8:                                            ; preds = %else4
  %"10619" = load float, float* inttoptr (i32 136 to float*), align 8
  %"10622" = load float, float* inttoptr (i32 138 to float*), align 4
  %0 = fcmp olt float %"10619", %"10622"
  br i1 %0, label %else10, label %ifcont13

else10:                                           ; preds = %else8
  %"106292.i3" = getelementptr inbounds i32, i32* %"106061", i32 1
  %"1062913.i4" = load i32, i32* %"106292.i3", align 4
  %V7624.V4031.16274.i5 = icmp eq i32 %"1062913.i4", -1
  br i1 %V7624.V4031.16274.i5, label %ifcont13, label %else3.i14.preheader

else3.i14.preheader:                              ; preds = %else10
  br label %else3.i14

else3.i14:                                        ; preds = %else3.i14.preheader, %else3.i14
  %"1062916.i6" = phi i32 [ %"106291.i12", %else3.i14 ], [ %"1062913.i4", %else3.i14.preheader ]
  %V7618.V4027.ofs.tr5.i7 = phi i32 [ %V7630.V4035.1626.i10, %else3.i14 ], [ 1, %else3.i14.preheader ]
  %"10636.i8" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1062916.i6"
  %"106364.i9" = load i32*, i32** %"10636.i8", align 4
  tail call void @V6233.V2642.solve_each_element(i32 0, i32* %"106364.i9", i32* %V7596.V4005.dirvec) #2
  %V7630.V4035.1626.i10 = add i32 %V7618.V4027.ofs.tr5.i7, 1
  %"10629.i11" = getelementptr inbounds i32, i32* %"106061", i32 %V7630.V4035.1626.i10
  %"106291.i12" = load i32, i32* %"10629.i11", align 4
  %V7624.V4031.1627.i13 = icmp eq i32 %"106291.i12", -1
  br i1 %V7624.V4031.1627.i13, label %ifcont13.loopexit, label %else3.i14

ifcont13.loopexit:                                ; preds = %else3.i14
  br label %ifcont13

ifcont13.loopexit20:                              ; preds = %else3.i
  br label %ifcont13

ifcont13:                                         ; preds = %ifcont13.loopexit20, %ifcont13.loopexit, %else10, %then3, %else4, %else8
  %V7604.V4010.1644 = add i32 %V7594.V4003.ofs.tr, 1
  br label %tailrecurse

ifcont14:                                         ; preds = %tailrecurse
  ret void
}

; Function Attrs: nounwind
define void @V6234.V2643.solve_one_or_network(i32 %V7618.V4027.ofs, i32* nocapture readonly %V7619.V4028.or_group, i32* readonly %V7620.V4029.dirvec) #2 {
entry:
  %"106292" = getelementptr inbounds i32, i32* %V7619.V4028.or_group, i32 %V7618.V4027.ofs
  %"1062913" = load i32, i32* %"106292", align 4
  %V7624.V4031.16274 = icmp eq i32 %"1062913", -1
  br i1 %V7624.V4031.16274, label %ifcont5, label %else3.preheader

else3.preheader:                                  ; preds = %entry
  br label %else3

else3:                                            ; preds = %else3.preheader, %else3
  %"1062916" = phi i32 [ %"106291", %else3 ], [ %"1062913", %else3.preheader ]
  %V7618.V4027.ofs.tr5 = phi i32 [ %V7630.V4035.1626, %else3 ], [ %V7618.V4027.ofs, %else3.preheader ]
  %"10636" = getelementptr inbounds i32*, i32** inttoptr (i32 84 to i32**), i32 %"1062916"
  %"106364" = load i32*, i32** %"10636", align 4
  tail call void @V6233.V2642.solve_each_element(i32 0, i32* %"106364", i32* %V7620.V4029.dirvec)
  %V7630.V4035.1626 = add i32 %V7618.V4027.ofs.tr5, 1
  %"10629" = getelementptr inbounds i32, i32* %V7619.V4028.or_group, i32 %V7630.V4035.1626
  %"106291" = load i32, i32* %"10629", align 4
  %V7624.V4031.1627 = icmp eq i32 %"106291", -1
  br i1 %V7624.V4031.1627, label %ifcont5.loopexit, label %else3

ifcont5.loopexit:                                 ; preds = %else3
  br label %ifcont5

ifcont5:                                          ; preds = %ifcont5.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind
define i32 @V6210.V2619.solver(i32 %V8362.V4771.index, i32* nocapture readonly %V8363.V4772.dirvec, i32* nocapture readonly %V8364.V4773.org) #0 {
entry:
  %"11208" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V8362.V4771.index
  %"112081" = load i32*, i32** %"11208", align 4
  %"11210" = bitcast i32* %V8364.V4773.org to float*
  %"112112" = load float, float* %"11210", align 4
  %"124581.i" = getelementptr inbounds i32, i32* %"112081", i32 5
  %0 = bitcast i32* %"124581.i" to float**
  %"1245862.i" = load float*, float** %0, align 4
  %"1247712.i" = load float, float* %"1245862.i", align 4
  %V8369.V4775.b0 = fsub float %"112112", %"1247712.i"
  %"112141" = getelementptr inbounds i32, i32* %V8364.V4773.org, i32 1
  %"11214" = bitcast i32* %"112141" to float*
  %"112143" = load float, float* %"11214", align 4
  %"12429.i" = getelementptr inbounds float, float* %"1245862.i", i32 1
  %"1242912.i" = load float, float* %"12429.i", align 4
  %V8373.V4776.b1 = fsub float %"112143", %"1242912.i"
  %"112172" = getelementptr inbounds i32, i32* %V8364.V4773.org, i32 2
  %"11217" = bitcast i32* %"112172" to float*
  %"112174" = load float, float* %"11217", align 4
  %"12381.i" = getelementptr inbounds float, float* %"1245862.i", i32 2
  %"1238112.i" = load float, float* %"12381.i", align 4
  %V8377.V4777.b2 = fsub float %"112174", %"1238112.i"
  %"12814.i" = getelementptr inbounds i32, i32* %"112081", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else6 [
    i32 1, label %then
    i32 2, label %then5
  ]

then:                                             ; preds = %entry
  %"11220" = tail call i32 @V6205.V2614.solver_rect(i32* %"112081", i32* %V8363.V4772.dirvec, float %V8369.V4775.b0, float %V8373.V4776.b1, float %V8377.V4777.b2)
  br label %ifcont7

then5:                                            ; preds = %entry
  %"125031.i.i" = getelementptr inbounds i32, i32* %"112081", i32 4
  %"12503.i.i" = bitcast i32* %"125031.i.i" to i32**
  %"125035.i.i" = load i32*, i32** %"12503.i.i", align 4
  %"13022.i.i" = bitcast i32* %V8363.V4772.dirvec to float*
  %"130231.i.i" = load float, float* %"13022.i.i", align 4
  %"13025.i.i" = bitcast i32* %"125035.i.i" to float*
  %"130262.i.i" = load float, float* %"13025.i.i", align 4
  %V9502.V5913.513.i.i = fmul float %"130231.i.i", %"130262.i.i"
  %"130291.i.i" = getelementptr inbounds i32, i32* %V8363.V4772.dirvec, i32 1
  %"13029.i.i" = bitcast i32* %"130291.i.i" to float*
  %"130293.i.i" = load float, float* %"13029.i.i", align 4
  %"130322.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 1
  %"13032.i.i" = bitcast i32* %"130322.i.i" to float*
  %"130324.i.i" = load float, float* %"13032.i.i", align 4
  %V9507.V5914.514.i.i = fmul float %"130293.i.i", %"130324.i.i"
  %V9508.V5907.519.i.i = fadd float %V9502.V5913.513.i.i, %V9507.V5914.514.i.i
  %"130353.i.i" = getelementptr inbounds i32, i32* %V8363.V4772.dirvec, i32 2
  %"13035.i.i" = bitcast i32* %"130353.i.i" to float*
  %"130355.i.i" = load float, float* %"13035.i.i", align 4
  %"130384.i.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 2
  %"13038.i.i" = bitcast i32* %"130384.i.i" to float*
  %"130386.i.i" = load float, float* %"13038.i.i", align 4
  %V9513.V5908.520.i.i = fmul float %"130355.i.i", %"130386.i.i"
  %"13040.i.i" = fadd float %V9508.V5907.519.i.i, %V9513.V5908.520.i.i
  %1 = fcmp ogt float %"13040.i.i", 0.000000e+00
  br i1 %1, label %else.i, label %ifcont7

else.i:                                           ; preds = %then5
  %V9488.V5899.525.i.i = fmul float %V8369.V4775.b0, %"130262.i.i"
  %V9491.V5900.526.i.i = fmul float %V8373.V4776.b1, %"130324.i.i"
  %V9492.V5895.529.i.i = fadd float %V9488.V5899.525.i.i, %V9491.V5900.526.i.i
  %V9495.V5896.530.i.i = fmul float %V8377.V4777.b2, %"130386.i.i"
  %"13021.i.i" = fadd float %V9492.V5895.529.i.i, %V9495.V5896.530.i.i
  %"13209.i.i" = fsub float 0.000000e+00, %"13021.i.i"
  %V8498.V4906.978.i = fdiv float %"13209.i.i", %"13040.i.i"
  store float %V8498.V4906.978.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont7

else6:                                            ; preds = %entry
  %"11223" = tail call i32 @V6209.V2618.solver_second(i32* %"112081", i32* %V8363.V4772.dirvec, float %V8369.V4775.b0, float %V8373.V4776.b1, float %V8377.V4777.b2)
  br label %ifcont7

ifcont7:                                          ; preds = %else.i, %then5, %else6, %then
  %"11219" = phi i32 [ %"11220", %then ], [ %"11223", %else6 ], [ 1, %else.i ], [ 0, %then5 ]
  ret i32 %"11219"
}

; Function Attrs: norecurse nounwind
define i32 @V6205.V2614.solver_rect(i32* nocapture readonly %V8500.V4909.m, i32* nocapture readonly %V8501.V4910.dirvec, float %V8502.V4911.b0, float %V8503.V4912.b1, float %V8504.V4913.b2) #0 {
entry:
  %"11272.i" = bitcast i32* %V8501.V4910.dirvec to float*
  %"112721.i" = load float, float* %"11272.i", align 4
  %0 = fcmp oeq float %"112721.i", 0.000000e+00
  br i1 %0, label %entry.then_crit_edge, label %then.i

entry.then_crit_edge:                             ; preds = %entry
  %"112722.i39.phi.trans.insert" = getelementptr inbounds i32, i32* %V8501.V4910.dirvec, i32 1
  %"11272.i40.phi.trans.insert" = bitcast i32* %"112722.i39.phi.trans.insert" to float*
  %"112721.i41.pre" = load float, float* %"11272.i40.phi.trans.insert", align 4
  br label %then

then.i:                                           ; preds = %entry
  %"125031.i.i" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 4
  %"12503.i.i" = bitcast i32* %"125031.i.i" to i32**
  %"125035.i.i" = load i32*, i32** %"12503.i.i", align 4
  %"12741.i.i" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 6
  %"127417.i.i" = load i32, i32* %"12741.i.i", align 4
  %1 = and i32 %"127417.i.i", 1
  %"12742.i.i" = icmp ne i32 %1, 0
  %2 = fcmp olt float %"112721.i", 0.000000e+00
  %V9643.V6052.y.13158.i.i = xor i1 %2, %"12742.i.i"
  %"11279.i" = bitcast i32* %"125035.i.i" to float*
  %"112793.i" = load float, float* %"11279.i", align 4
  %"13209.i.i.i" = fsub float 0.000000e+00, %"112793.i"
  %V9635.V6044.x.13209.i.i.i = select i1 %V9643.V6052.y.13158.i.i, float %"112793.i", float %"13209.i.i.i"
  %V8538.V4958.941.i = fsub float %V9635.V6044.x.13209.i.i.i, %V8502.V4911.b0
  %V8540.V4941.d2.i = fdiv float %V8538.V4958.941.i, %"112721.i"
  %"112856.i" = getelementptr inbounds i32, i32* %V8501.V4910.dirvec, i32 1
  %"11285.i" = bitcast i32* %"112856.i" to float*
  %"112855.i" = load float, float* %"11285.i", align 4
  %V8542.V4956.944.i = fmul float %"112855.i", %V8540.V4941.d2.i
  %V8543.V4955.945.i = fadd float %V8542.V4956.944.i, %V8503.V4912.b1
  %3 = fcmp ogt float %V8543.V4955.945.i, 0.000000e+00
  %"13207.i11.i" = fsub float -0.000000e+00, %V8543.V4955.945.i
  %"13205.i12.i" = select i1 %3, float %V8543.V4955.945.i, float %"13207.i11.i"
  %"112887.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 1
  %"11288.i" = bitcast i32* %"112887.i" to float*
  %"112886.i" = load float, float* %"11288.i", align 4
  %4 = fcmp olt float %"13205.i12.i", %"112886.i"
  br i1 %4, label %else.i, label %then

else.i:                                           ; preds = %then.i
  %"112939.i" = getelementptr inbounds i32, i32* %V8501.V4910.dirvec, i32 2
  %"11293.i" = bitcast i32* %"112939.i" to float*
  %"112938.i" = load float, float* %"11293.i", align 4
  %V8549.V4951.949.i = fmul float %V8540.V4941.d2.i, %"112938.i"
  %V8550.V4950.950.i = fadd float %V8549.V4951.949.i, %V8504.V4913.b2
  %5 = fcmp ogt float %V8550.V4950.950.i, 0.000000e+00
  %"13207.i.i" = fsub float -0.000000e+00, %V8550.V4950.950.i
  %"13205.i.i" = select i1 %5, float %V8550.V4950.950.i, float %"13207.i.i"
  %"1129610.i" = getelementptr inbounds i32, i32* %"125035.i.i", i32 2
  %"11296.i" = bitcast i32* %"1129610.i" to float*
  %"112969.i" = load float, float* %"11296.i", align 4
  %6 = fcmp olt float %"13205.i.i", %"112969.i"
  br i1 %6, label %V6204.V2613.solver_rect_surface.exit, label %then

V6204.V2613.solver_rect_surface.exit:             ; preds = %else.i
  store float %V8540.V4941.d2.i, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont6

then:                                             ; preds = %entry.then_crit_edge, %then.i, %else.i
  %"112938.i27" = phi float [ %"112721.i41.pre", %entry.then_crit_edge ], [ %"112855.i", %then.i ], [ %"112855.i", %else.i ]
  %7 = fcmp oeq float %"112938.i27", 0.000000e+00
  br i1 %7, label %then.then1_crit_edge, label %then.i66

then.then1_crit_edge:                             ; preds = %then
  %"112722.i.phi.trans.insert" = getelementptr inbounds i32, i32* %V8501.V4910.dirvec, i32 2
  %"11272.i1.phi.trans.insert" = bitcast i32* %"112722.i.phi.trans.insert" to float*
  %"112721.i2.pre" = load float, float* %"11272.i1.phi.trans.insert", align 4
  br label %then1

then.i66:                                         ; preds = %then
  %"125031.i.i42" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 4
  %"12503.i.i43" = bitcast i32* %"125031.i.i42" to i32**
  %"125035.i.i44" = load i32*, i32** %"12503.i.i43", align 4
  %"12741.i.i45" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 6
  %"127417.i.i46" = load i32, i32* %"12741.i.i45", align 4
  %8 = and i32 %"127417.i.i46", 1
  %"12742.i.i47" = icmp ne i32 %8, 0
  %9 = fcmp olt float %"112938.i27", 0.000000e+00
  %V9643.V6052.y.13158.i.i48 = xor i1 %9, %"12742.i.i47"
  %"112794.i49" = getelementptr inbounds i32, i32* %"125035.i.i44", i32 1
  %"11279.i50" = bitcast i32* %"112794.i49" to float*
  %"112793.i51" = load float, float* %"11279.i50", align 4
  %"13209.i.i.i52" = fsub float 0.000000e+00, %"112793.i51"
  %V9635.V6044.x.13209.i.i.i53 = select i1 %V9643.V6052.y.13158.i.i48, float %"112793.i51", float %"13209.i.i.i52"
  %V8538.V4958.941.i54 = fsub float %V9635.V6044.x.13209.i.i.i53, %V8503.V4912.b1
  %V8540.V4941.d2.i55 = fdiv float %V8538.V4958.941.i54, %"112938.i27"
  %"112856.i56" = getelementptr inbounds i32, i32* %V8501.V4910.dirvec, i32 2
  %"11285.i57" = bitcast i32* %"112856.i56" to float*
  %"112855.i58" = load float, float* %"11285.i57", align 4
  %V8542.V4956.944.i59 = fmul float %"112855.i58", %V8540.V4941.d2.i55
  %V8543.V4955.945.i60 = fadd float %V8542.V4956.944.i59, %V8504.V4913.b2
  %10 = fcmp ogt float %V8543.V4955.945.i60, 0.000000e+00
  %"13207.i11.i61" = fsub float -0.000000e+00, %V8543.V4955.945.i60
  %"13205.i12.i62" = select i1 %10, float %V8543.V4955.945.i60, float %"13207.i11.i61"
  %"112887.i63" = getelementptr inbounds i32, i32* %"125035.i.i44", i32 2
  %"11288.i64" = bitcast i32* %"112887.i63" to float*
  %"112886.i65" = load float, float* %"11288.i64", align 4
  %11 = fcmp olt float %"13205.i12.i62", %"112886.i65"
  br i1 %11, label %else.i75, label %then1

else.i75:                                         ; preds = %then.i66
  %V8549.V4951.949.i69 = fmul float %V8540.V4941.d2.i55, %"112721.i"
  %V8550.V4950.950.i70 = fadd float %V8549.V4951.949.i69, %V8502.V4911.b0
  %12 = fcmp ogt float %V8550.V4950.950.i70, 0.000000e+00
  %"13207.i.i71" = fsub float -0.000000e+00, %V8550.V4950.950.i70
  %"13205.i.i72" = select i1 %12, float %V8550.V4950.950.i70, float %"13207.i.i71"
  %"11296.i73" = bitcast i32* %"125035.i.i44" to float*
  %"112969.i74" = load float, float* %"11296.i73", align 4
  %13 = fcmp olt float %"13205.i.i72", %"112969.i74"
  br i1 %13, label %V6204.V2613.solver_rect_surface.exit78, label %then1

V6204.V2613.solver_rect_surface.exit78:           ; preds = %else.i75
  store float %V8540.V4941.d2.i55, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont6

then1:                                            ; preds = %then.then1_crit_edge, %then.i66, %else.i75
  %"112721.i2" = phi float [ %"112721.i2.pre", %then.then1_crit_edge ], [ %"112855.i58", %then.i66 ], [ %"112855.i58", %else.i75 ]
  %14 = fcmp oeq float %"112721.i2", 0.000000e+00
  br i1 %14, label %ifcont6, label %then.i24

then.i24:                                         ; preds = %then1
  %"125031.i.i3" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 4
  %"12503.i.i4" = bitcast i32* %"125031.i.i3" to i32**
  %"125035.i.i5" = load i32*, i32** %"12503.i.i4", align 4
  %"12741.i.i6" = getelementptr inbounds i32, i32* %V8500.V4909.m, i32 6
  %"127417.i.i7" = load i32, i32* %"12741.i.i6", align 4
  %15 = and i32 %"127417.i.i7", 1
  %"12742.i.i8" = icmp ne i32 %15, 0
  %16 = fcmp olt float %"112721.i2", 0.000000e+00
  %V9643.V6052.y.13158.i.i9 = xor i1 %16, %"12742.i.i8"
  %"112794.i" = getelementptr inbounds i32, i32* %"125035.i.i5", i32 2
  %"11279.i10" = bitcast i32* %"112794.i" to float*
  %"112793.i11" = load float, float* %"11279.i10", align 4
  %"13209.i.i.i12" = fsub float 0.000000e+00, %"112793.i11"
  %V9635.V6044.x.13209.i.i.i13 = select i1 %V9643.V6052.y.13158.i.i9, float %"112793.i11", float %"13209.i.i.i12"
  %V8538.V4958.941.i14 = fsub float %V9635.V6044.x.13209.i.i.i13, %V8504.V4913.b2
  %V8540.V4941.d2.i15 = fdiv float %V8538.V4958.941.i14, %"112721.i2"
  %V8542.V4956.944.i18 = fmul float %"112721.i", %V8540.V4941.d2.i15
  %V8543.V4955.945.i19 = fadd float %V8542.V4956.944.i18, %V8502.V4911.b0
  %17 = fcmp ogt float %V8543.V4955.945.i19, 0.000000e+00
  %"13207.i11.i20" = fsub float -0.000000e+00, %V8543.V4955.945.i19
  %"13205.i12.i21" = select i1 %17, float %V8543.V4955.945.i19, float %"13207.i11.i20"
  %"11288.i22" = bitcast i32* %"125035.i.i5" to float*
  %"112886.i23" = load float, float* %"11288.i22", align 4
  %18 = fcmp olt float %"13205.i12.i21", %"112886.i23"
  br i1 %18, label %else.i35, label %ifcont6

else.i35:                                         ; preds = %then.i24
  %V8549.V4951.949.i28 = fmul float %V8540.V4941.d2.i15, %"112938.i27"
  %V8550.V4950.950.i29 = fadd float %V8549.V4951.949.i28, %V8503.V4912.b1
  %19 = fcmp ogt float %V8550.V4950.950.i29, 0.000000e+00
  %"13207.i.i30" = fsub float -0.000000e+00, %V8550.V4950.950.i29
  %"13205.i.i31" = select i1 %19, float %V8550.V4950.950.i29, float %"13207.i.i30"
  %"1129610.i32" = getelementptr inbounds i32, i32* %"125035.i.i5", i32 1
  %"11296.i33" = bitcast i32* %"1129610.i32" to float*
  %"112969.i34" = load float, float* %"11296.i33", align 4
  %20 = fcmp olt float %"13205.i.i31", %"112969.i34"
  br i1 %20, label %21, label %ifcont6

; <label>:21                                      ; preds = %else.i35
  store float %V8540.V4941.d2.i15, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont6

ifcont6:                                          ; preds = %then1, %else.i35, %then.i24, %21, %V6204.V2613.solver_rect_surface.exit78, %V6204.V2613.solver_rect_surface.exit
  %"11264" = phi i32 [ 2, %V6204.V2613.solver_rect_surface.exit78 ], [ 1, %V6204.V2613.solver_rect_surface.exit ], [ 3, %21 ], [ 0, %then.i24 ], [ 0, %else.i35 ], [ 0, %then1 ]
  ret i32 %"11264"
}

; Function Attrs: norecurse nounwind
define i32 @V6206.V2615.solver_surface(i32* nocapture readonly %V8486.V4895.m, i32* nocapture readonly %V8487.V4896.dirvec, float %V8488.V4897.b0, float %V8489.V4898.b1, float %V8490.V4899.b2) #0 {
entry:
  %"125031.i" = getelementptr inbounds i32, i32* %V8486.V4895.m, i32 4
  %"12503.i" = bitcast i32* %"125031.i" to i32**
  %"125035.i" = load i32*, i32** %"12503.i", align 4
  %"13022.i" = bitcast i32* %V8487.V4896.dirvec to float*
  %"130231.i" = load float, float* %"13022.i", align 4
  %"13025.i" = bitcast i32* %"125035.i" to float*
  %"130262.i" = load float, float* %"13025.i", align 4
  %V9502.V5913.513.i = fmul float %"130231.i", %"130262.i"
  %"130291.i" = getelementptr inbounds i32, i32* %V8487.V4896.dirvec, i32 1
  %"13029.i" = bitcast i32* %"130291.i" to float*
  %"130293.i" = load float, float* %"13029.i", align 4
  %"130322.i" = getelementptr inbounds i32, i32* %"125035.i", i32 1
  %"13032.i" = bitcast i32* %"130322.i" to float*
  %"130324.i" = load float, float* %"13032.i", align 4
  %V9507.V5914.514.i = fmul float %"130293.i", %"130324.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130353.i" = getelementptr inbounds i32, i32* %V8487.V4896.dirvec, i32 2
  %"13035.i" = bitcast i32* %"130353.i" to float*
  %"130355.i" = load float, float* %"13035.i", align 4
  %"130384.i" = getelementptr inbounds i32, i32* %"125035.i", i32 2
  %"13038.i" = bitcast i32* %"130384.i" to float*
  %"130386.i" = load float, float* %"13038.i", align 4
  %V9513.V5908.520.i = fmul float %"130355.i", %"130386.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %0 = fcmp ogt float %"13040.i", 0.000000e+00
  br i1 %0, label %else, label %ifcont

else:                                             ; preds = %entry
  %V9488.V5899.525.i = fmul float %"130262.i", %V8488.V4897.b0
  %V9491.V5900.526.i = fmul float %"130324.i", %V8489.V4898.b1
  %V9492.V5895.529.i = fadd float %V9488.V5899.525.i, %V9491.V5900.526.i
  %V9495.V5896.530.i = fmul float %"130386.i", %V8490.V4899.b2
  %"13021.i" = fadd float %V9492.V5895.529.i, %V9495.V5896.530.i
  %"13209.i" = fsub float 0.000000e+00, %"13021.i"
  %V8498.V4906.978 = fdiv float %"13209.i", %"13040.i"
  store float %V8498.V4906.978, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %"11259" = phi i32 [ 1, %else ], [ 0, %entry ]
  ret i32 %"11259"
}

; Function Attrs: norecurse nounwind
define i32 @V6209.V2618.solver_second(i32* nocapture readonly %V8381.V4790.m, i32* nocapture readonly %V8382.V4791.dirvec, float %V8383.V4792.b0, float %V8384.V4793.b1, float %V8385.V4794.b2) #0 {
entry:
  %"11224" = bitcast i32* %V8382.V4791.dirvec to float*
  %"112251" = load float, float* %"11224", align 4
  %"112281" = getelementptr inbounds i32, i32* %V8382.V4791.dirvec, i32 1
  %"11228" = bitcast i32* %"112281" to float*
  %"112282" = load float, float* %"11228", align 4
  %"112312" = getelementptr inbounds i32, i32* %V8382.V4791.dirvec, i32 2
  %"11231" = bitcast i32* %"112312" to float*
  %"112313" = load float, float* %"11231", align 4
  %"13208.i.i" = fmul float %"112251", %"112251"
  %"126431.i.i" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 4
  %0 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %0, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8464.V4889.985.i = fmul float %"13208.i.i", %"1266512.i.i"
  %"13208.i2.i" = fmul float %"112282", %"112282"
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8467.V4890.986.i = fmul float %"13208.i2.i", %"1261712.i.i"
  %V8468.V4885.989.i = fadd float %V8464.V4889.985.i, %V8467.V4890.986.i
  %"13208.i1.i" = fmul float %"112313", %"112313"
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8471.V4886.990.i = fmul float %"13208.i1.i", %"1256912.i.i"
  %V8472.V4871.diag_part.i = fadd float %V8468.V4885.989.i, %V8471.V4886.990.i
  %"12688.i.i" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 3
  %"126884.i.i" = load i32, i32* %"12688.i.i", align 4
  %1 = icmp eq i32 %"126884.i.i", 0
  br i1 %1, label %V6207.V2616.quadratic.exit, label %else.i

else.i:                                           ; preds = %entry
  %V8475.V4883.993.i = fmul float %"112282", %"112313"
  %"120861.i.i" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 9
  %2 = bitcast i32* %"120861.i.i" to float**
  %"12086102.i.i" = load float*, float** %2, align 4
  %"1209312.i.i" = load float, float* %"12086102.i.i", align 4
  %V8477.V4882.995.i = fmul float %V8475.V4883.993.i, %"1209312.i.i"
  %V8478.V4878.998.i = fadd float %V8472.V4871.diag_part.i, %V8477.V4882.995.i
  %V8479.V4880.996.i = fmul float %"112251", %"112313"
  %"12045.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 1
  %"1204512.i.i" = load float, float* %"12045.i.i", align 4
  %V8481.V4879.999.i = fmul float %V8479.V4880.996.i, %"1204512.i.i"
  %V8482.V4874.1002.i = fadd float %V8478.V4878.998.i, %V8481.V4879.999.i
  %V8483.V4876.1000.i = fmul float %"112251", %"112282"
  %"11997.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 2
  %"1199712.i.i" = load float, float* %"11997.i.i", align 4
  %V8485.V4875.1003.i = fmul float %V8483.V4876.1000.i, %"1199712.i.i"
  %"11258.i" = fadd float %V8482.V4874.1002.i, %V8485.V4875.1003.i
  br label %V6207.V2616.quadratic.exit

V6207.V2616.quadratic.exit:                       ; preds = %entry, %else.i
  %"11256.i" = phi float [ %"11258.i", %else.i ], [ %V8472.V4871.diag_part.i, %entry ]
  %3 = fcmp oeq float %"11256.i", 0.000000e+00
  br i1 %3, label %ifcont15, label %then

then:                                             ; preds = %V6207.V2616.quadratic.exit
  %V8427.V4865.1004.i = fmul float %"112251", %V8383.V4792.b0
  %V8429.V4861.1008.i = fmul float %V8427.V4865.1004.i, %"1266512.i.i"
  %V8430.V4863.1006.i = fmul float %"112282", %V8384.V4793.b1
  %V8432.V4862.1009.i = fmul float %V8430.V4863.1006.i, %"1261712.i.i"
  %V8433.V4857.1012.i = fadd float %V8429.V4861.1008.i, %V8432.V4862.1009.i
  %V8434.V4859.1010.i = fmul float %"112313", %V8385.V4794.b2
  %V8436.V4858.1013.i = fmul float %V8434.V4859.1010.i, %"1256912.i.i"
  %V8437.V4836.diag_part.i = fadd float %V8433.V4857.1012.i, %V8436.V4858.1013.i
  br i1 %1, label %V6208.V2617.bilinear.exit, label %else.i55

else.i55:                                         ; preds = %then
  %V8440.V4855.1016.i = fmul float %"112313", %V8384.V4793.b1
  %V8441.V4856.1017.i = fmul float %"112282", %V8385.V4794.b2
  %V8442.V4853.1018.i = fadd float %V8441.V4856.1017.i, %V8440.V4855.1016.i
  %"120861.i.i48" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 9
  %4 = bitcast i32* %"120861.i.i48" to float**
  %"12086102.i.i49" = load float*, float** %4, align 4
  %"1209312.i.i50" = load float, float* %"12086102.i.i49", align 4
  %V8444.V4847.1024.i = fmul float %V8442.V4853.1018.i, %"1209312.i.i50"
  %V8445.V4851.1020.i = fmul float %"112251", %V8385.V4794.b2
  %V8446.V4852.1021.i = fmul float %"112313", %V8383.V4792.b0
  %V8447.V4849.1022.i = fadd float %V8445.V4851.1020.i, %V8446.V4852.1021.i
  %"12045.i.i51" = getelementptr inbounds float, float* %"12086102.i.i49", i32 1
  %"1204512.i.i52" = load float, float* %"12045.i.i51", align 4
  %V8449.V4848.1025.i = fmul float %V8447.V4849.1022.i, %"1204512.i.i52"
  %V8450.V4841.1030.i = fadd float %V8444.V4847.1024.i, %V8449.V4848.1025.i
  %V8451.V4845.1026.i = fmul float %"112251", %V8384.V4793.b1
  %V8452.V4846.1027.i = fmul float %"112282", %V8383.V4792.b0
  %V8453.V4843.1028.i = fadd float %V8451.V4845.1026.i, %V8452.V4846.1027.i
  %"11997.i.i53" = getelementptr inbounds float, float* %"12086102.i.i49", i32 2
  %"1199712.i.i54" = load float, float* %"11997.i.i53", align 4
  %V8455.V4842.1031.i = fmul float %V8453.V4843.1028.i, %"1199712.i.i54"
  %V8456.V4840.1032.i = fadd float %V8450.V4841.1030.i, %V8455.V4842.1031.i
  %"13204.i.i" = fmul float %V8456.V4840.1032.i, 5.000000e-01
  %"11255.i" = fadd float %V8437.V4836.diag_part.i, %"13204.i.i"
  br label %V6208.V2617.bilinear.exit

V6208.V2617.bilinear.exit:                        ; preds = %then, %else.i55
  %"11253.i" = phi float [ %"11255.i", %else.i55 ], [ %V8437.V4836.diag_part.i, %then ]
  %"13208.i.i3" = fmul float %V8383.V4792.b0, %V8383.V4792.b0
  %V8464.V4889.985.i7 = fmul float %"13208.i.i3", %"1266512.i.i"
  %"13208.i2.i8" = fmul float %V8384.V4793.b1, %V8384.V4793.b1
  %V8467.V4890.986.i11 = fmul float %"13208.i2.i8", %"1261712.i.i"
  %V8468.V4885.989.i12 = fadd float %V8464.V4889.985.i7, %V8467.V4890.986.i11
  %"13208.i1.i13" = fmul float %V8385.V4794.b2, %V8385.V4794.b2
  %V8471.V4886.990.i16 = fmul float %"13208.i1.i13", %"1256912.i.i"
  %V8472.V4871.diag_part.i17 = fadd float %V8468.V4885.989.i12, %V8471.V4886.990.i16
  br i1 %1, label %V6207.V2616.quadratic.exit38, label %else.i36

else.i36:                                         ; preds = %V6208.V2617.bilinear.exit
  %V8475.V4883.993.i20 = fmul float %V8384.V4793.b1, %V8385.V4794.b2
  %"120861.i.i21" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 9
  %5 = bitcast i32* %"120861.i.i21" to float**
  %"12086102.i.i22" = load float*, float** %5, align 4
  %"1209312.i.i23" = load float, float* %"12086102.i.i22", align 4
  %V8477.V4882.995.i24 = fmul float %V8475.V4883.993.i20, %"1209312.i.i23"
  %V8478.V4878.998.i25 = fadd float %V8472.V4871.diag_part.i17, %V8477.V4882.995.i24
  %V8479.V4880.996.i26 = fmul float %V8383.V4792.b0, %V8385.V4794.b2
  %"12045.i.i27" = getelementptr inbounds float, float* %"12086102.i.i22", i32 1
  %"1204512.i.i28" = load float, float* %"12045.i.i27", align 4
  %V8481.V4879.999.i29 = fmul float %V8479.V4880.996.i26, %"1204512.i.i28"
  %V8482.V4874.1002.i30 = fadd float %V8478.V4878.998.i25, %V8481.V4879.999.i29
  %V8483.V4876.1000.i31 = fmul float %V8383.V4792.b0, %V8384.V4793.b1
  %"11997.i.i32" = getelementptr inbounds float, float* %"12086102.i.i22", i32 2
  %"1199712.i.i33" = load float, float* %"11997.i.i32", align 4
  %V8485.V4875.1003.i34 = fmul float %V8483.V4876.1000.i31, %"1199712.i.i33"
  %"11258.i35" = fadd float %V8482.V4874.1002.i30, %V8485.V4875.1003.i34
  br label %V6207.V2616.quadratic.exit38

V6207.V2616.quadratic.exit38:                     ; preds = %V6208.V2617.bilinear.exit, %else.i36
  %"11256.i37" = phi float [ %"11258.i35", %else.i36 ], [ %V8472.V4871.diag_part.i17, %V6208.V2617.bilinear.exit ]
  %"12814.i" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  %6 = icmp eq i32 %"128142.i", 3
  %"11243" = fadd float %"11256.i37", -1.000000e+00
  %V8405.V4800.cc = select i1 %6, float %"11243", float %"11256.i37"
  %"13208.i" = fmul float %"11253.i", %"11253.i"
  %V8407.V4813.1050 = fmul float %"11256.i", %V8405.V4800.cc
  %V8408.V4801.d = fsub float %"13208.i", %V8407.V4813.1050
  %7 = fcmp ogt float %V8408.V4801.d, 0.000000e+00
  br i1 %7, label %else9, label %ifcont15

else9:                                            ; preds = %V6207.V2616.quadratic.exit38
  %8 = tail call float @llvm.sqrt.f32(float %V8408.V4801.d) #2
  %"12741.i" = getelementptr inbounds i32, i32* %V8381.V4790.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %9 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %9, 0
  %"13209.i" = fsub float 0.000000e+00, %8
  %.13209.i = select i1 %"12742.i", float %8, float %"13209.i"
  %V8416.V4809.1053 = fsub float %.13209.i, %"11253.i"
  %V8417.V4808.1055 = fdiv float %V8416.V4809.1053, %"11256.i"
  store float %V8417.V4808.1055, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont15

ifcont15:                                         ; preds = %V6207.V2616.quadratic.exit38, %V6207.V2616.quadratic.exit, %else9
  %"11233" = phi i32 [ 1, %else9 ], [ 0, %V6207.V2616.quadratic.exit38 ], [ 0, %V6207.V2616.quadratic.exit ]
  ret i32 %"11233"
}

; Function Attrs: norecurse nounwind readonly
define float @V6208.V2617.bilinear(i32* nocapture readonly %V8420.V4829.m, float %V8421.V4830.v0, float %V8422.V4831.v1, float %V8423.V4832.v2, float %V8424.V4833.w0, float %V8425.V4834.w1, float %V8426.V4835.w2) #1 {
entry:
  %V8427.V4865.1004 = fmul float %V8421.V4830.v0, %V8424.V4833.w0
  %"126431.i" = getelementptr inbounds i32, i32* %V8420.V4829.m, i32 4
  %0 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %0, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %V8429.V4861.1008 = fmul float %V8427.V4865.1004, %"1266512.i"
  %V8430.V4863.1006 = fmul float %V8422.V4831.v1, %V8425.V4834.w1
  %"12617.i" = getelementptr inbounds float, float* %"1264352.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %V8432.V4862.1009 = fmul float %V8430.V4863.1006, %"1261712.i"
  %V8433.V4857.1012 = fadd float %V8429.V4861.1008, %V8432.V4862.1009
  %V8434.V4859.1010 = fmul float %V8423.V4832.v2, %V8426.V4835.w2
  %"12569.i" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %V8436.V4858.1013 = fmul float %V8434.V4859.1010, %"1256912.i"
  %V8437.V4836.diag_part = fadd float %V8433.V4857.1012, %V8436.V4858.1013
  %"12688.i" = getelementptr inbounds i32, i32* %V8420.V4829.m, i32 3
  %"126884.i" = load i32, i32* %"12688.i", align 4
  %1 = icmp eq i32 %"126884.i", 0
  br i1 %1, label %ifcont, label %else

else:                                             ; preds = %entry
  %V8440.V4855.1016 = fmul float %V8423.V4832.v2, %V8425.V4834.w1
  %V8441.V4856.1017 = fmul float %V8422.V4831.v1, %V8426.V4835.w2
  %V8442.V4853.1018 = fadd float %V8440.V4855.1016, %V8441.V4856.1017
  %"120861.i" = getelementptr inbounds i32, i32* %V8420.V4829.m, i32 9
  %2 = bitcast i32* %"120861.i" to float**
  %"12086102.i" = load float*, float** %2, align 4
  %"1209312.i" = load float, float* %"12086102.i", align 4
  %V8444.V4847.1024 = fmul float %V8442.V4853.1018, %"1209312.i"
  %V8445.V4851.1020 = fmul float %V8421.V4830.v0, %V8426.V4835.w2
  %V8446.V4852.1021 = fmul float %V8423.V4832.v2, %V8424.V4833.w0
  %V8447.V4849.1022 = fadd float %V8446.V4852.1021, %V8445.V4851.1020
  %"12045.i" = getelementptr inbounds float, float* %"12086102.i", i32 1
  %"1204512.i" = load float, float* %"12045.i", align 4
  %V8449.V4848.1025 = fmul float %V8447.V4849.1022, %"1204512.i"
  %V8450.V4841.1030 = fadd float %V8444.V4847.1024, %V8449.V4848.1025
  %V8451.V4845.1026 = fmul float %V8421.V4830.v0, %V8425.V4834.w1
  %V8452.V4846.1027 = fmul float %V8422.V4831.v1, %V8424.V4833.w0
  %V8453.V4843.1028 = fadd float %V8452.V4846.1027, %V8451.V4845.1026
  %"11997.i" = getelementptr inbounds float, float* %"12086102.i", i32 2
  %"1199712.i" = load float, float* %"11997.i", align 4
  %V8455.V4842.1031 = fmul float %V8453.V4843.1028, %"1199712.i"
  %V8456.V4840.1032 = fadd float %V8450.V4841.1030, %V8455.V4842.1031
  %"13204.i" = fmul float %V8456.V4840.1032, 5.000000e-01
  %"11255" = fadd float %V8437.V4836.diag_part, %"13204.i"
  br label %ifcont

ifcont:                                           ; preds = %entry, %else
  %"11253" = phi float [ %"11255", %else ], [ %V8437.V4836.diag_part, %entry ]
  ret float %"11253"
}

; Function Attrs: norecurse nounwind
define i1 @V6204.V2613.solver_rect_surface(i32* nocapture readonly %V8520.V4929.m, i32* nocapture readonly %V8521.V4930.dirvec, float %V8522.V4931.b0, float %V8523.V4932.b1, float %V8524.V4933.b2, i32 %V8525.V4934.i0, i32 %V8526.V4935.i1, i32 %V8527.V4936.i2) #0 {
entry:
  %"112722" = getelementptr inbounds i32, i32* %V8521.V4930.dirvec, i32 %V8525.V4934.i0
  %"11272" = bitcast i32* %"112722" to float*
  %"112721" = load float, float* %"11272", align 4
  %0 = fcmp oeq float %"112721", 0.000000e+00
  br i1 %0, label %ifcont14, label %then

then:                                             ; preds = %entry
  %"125031.i" = getelementptr inbounds i32, i32* %V8520.V4929.m, i32 4
  %"12503.i" = bitcast i32* %"125031.i" to i32**
  %"125035.i" = load i32*, i32** %"12503.i", align 4
  %"12741.i" = getelementptr inbounds i32, i32* %V8520.V4929.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %1 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %1, 0
  %2 = fcmp olt float %"112721", 0.000000e+00
  %V9643.V6052.y.13158.i = xor i1 %2, %"12742.i"
  %"112794" = getelementptr inbounds i32, i32* %"125035.i", i32 %V8525.V4934.i0
  %"11279" = bitcast i32* %"112794" to float*
  %"112793" = load float, float* %"11279", align 4
  %"13209.i.i" = fsub float 0.000000e+00, %"112793"
  %V9635.V6044.x.13209.i.i = select i1 %V9643.V6052.y.13158.i, float %"112793", float %"13209.i.i"
  %V8538.V4958.941 = fsub float %V9635.V6044.x.13209.i.i, %V8522.V4931.b0
  %V8540.V4941.d2 = fdiv float %V8538.V4958.941, %"112721"
  %"112856" = getelementptr inbounds i32, i32* %V8521.V4930.dirvec, i32 %V8526.V4935.i1
  %"11285" = bitcast i32* %"112856" to float*
  %"112855" = load float, float* %"11285", align 4
  %V8542.V4956.944 = fmul float %"112855", %V8540.V4941.d2
  %V8543.V4955.945 = fadd float %V8542.V4956.944, %V8523.V4932.b1
  %3 = fcmp ogt float %V8543.V4955.945, 0.000000e+00
  %"13207.i11" = fsub float -0.000000e+00, %V8543.V4955.945
  %"13205.i12" = select i1 %3, float %V8543.V4955.945, float %"13207.i11"
  %"112887" = getelementptr inbounds i32, i32* %"125035.i", i32 %V8526.V4935.i1
  %"11288" = bitcast i32* %"112887" to float*
  %"112886" = load float, float* %"11288", align 4
  %4 = fcmp olt float %"13205.i12", %"112886"
  br i1 %4, label %else, label %ifcont14

else:                                             ; preds = %then
  %"112939" = getelementptr inbounds i32, i32* %V8521.V4930.dirvec, i32 %V8527.V4936.i2
  %"11293" = bitcast i32* %"112939" to float*
  %"112938" = load float, float* %"11293", align 4
  %V8549.V4951.949 = fmul float %V8540.V4941.d2, %"112938"
  %V8550.V4950.950 = fadd float %V8549.V4951.949, %V8524.V4933.b2
  %5 = fcmp ogt float %V8550.V4950.950, 0.000000e+00
  %"13207.i" = fsub float -0.000000e+00, %V8550.V4950.950
  %"13205.i" = select i1 %5, float %V8550.V4950.950, float %"13207.i"
  %"1129610" = getelementptr inbounds i32, i32* %"125035.i", i32 %V8527.V4936.i2
  %"11296" = bitcast i32* %"1129610" to float*
  %"112969" = load float, float* %"11296", align 4
  %6 = fcmp olt float %"13205.i", %"112969"
  br i1 %6, label %else11, label %ifcont14

else11:                                           ; preds = %else
  store float %V8540.V4941.d2, float* inttoptr (i32 136 to float*), align 8
  br label %ifcont14

ifcont14:                                         ; preds = %else, %then, %entry, %else11
  %"11274" = phi i1 [ false, %then ], [ true, %else11 ], [ false, %else ], [ false, %entry ]
  ret i1 %"11274"
}

; Function Attrs: norecurse nounwind readnone
define float @V6142.V2551.fneg_cond(i1 %V9634.V6043.cond, float %V9635.V6044.x) #3 {
entry:
  %"13209.i" = fsub float 0.000000e+00, %V9635.V6044.x
  %V9635.V6044.x.13209.i = select i1 %V9634.V6043.cond, float %V9635.V6044.x, float %"13209.i"
  ret float %V9635.V6044.x.13209.i
}

; Function Attrs: nounwind
define void @V6233.V2642.solve_each_element(i32 %V7631.V4040.iand_ofs, i32* readonly %V7632.V4041.and_group, i32* readonly %V7633.V4042.dirvec) #2 {
entry:
  %"106403" = getelementptr inbounds i32, i32* %V7632.V4041.and_group, i32 %V7631.V4040.iand_ofs
  %"1064014" = load i32, i32* %"106403", align 4
  %0 = icmp eq i32 %"1064014", -1
  br i1 %0, label %ifcont23, label %else.lr.ph

else.lr.ph:                                       ; preds = %entry
  %"10662" = bitcast i32* %V7633.V4042.dirvec to float*
  %"106691" = getelementptr inbounds i32, i32* %V7633.V4042.dirvec, i32 1
  %"10669" = bitcast i32* %"106691" to float*
  %"106752" = getelementptr inbounds i32, i32* %V7633.V4042.dirvec, i32 2
  %"10675" = bitcast i32* %"106752" to float*
  br label %else

else:                                             ; preds = %else.lr.ph, %tailrecurse.backedge
  %"1064016" = phi i32 [ %"1064014", %else.lr.ph ], [ %"106401", %tailrecurse.backedge ]
  %V7631.V4040.iand_ofs.tr5 = phi i32 [ %V7631.V4040.iand_ofs, %else.lr.ph ], [ %V7686.V4091.1617, %tailrecurse.backedge ]
  %V7636.V4045.t0 = tail call i32 @V6210.V2619.solver(i32 %"1064016", i32* %V7633.V4042.dirvec, i32* nonnull inttoptr (i32 160 to i32*))
  %V7639.V4046.1620 = icmp eq i32 %V7636.V4045.t0, 0
  br i1 %V7639.V4046.1620, label %then4, label %else9

then4:                                            ; preds = %else
  %"10648" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1064016"
  %"106485" = load i32*, i32** %"10648", align 4
  %"12741.i" = getelementptr inbounds i32, i32* %"106485", i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %1 = and i32 %"127417.i", 1
  %"12742.i" = icmp eq i32 %1, 0
  br i1 %"12742.i", label %ifcont23.loopexit, label %tailrecurse.backedge

tailrecurse.backedge.loopexit:                    ; preds = %else.i
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.loopexit, %then4, %else18, %else9, %else11
  %V7686.V4091.1617 = add i32 %V7631.V4040.iand_ofs.tr5, 1
  %"10640" = getelementptr inbounds i32, i32* %V7632.V4041.and_group, i32 %V7686.V4091.1617
  %"106401" = load i32, i32* %"10640", align 4
  %2 = icmp eq i32 %"106401", -1
  br i1 %2, label %ifcont23.loopexit, label %else

else9:                                            ; preds = %else
  %"10654" = load float, float* inttoptr (i32 136 to float*), align 8
  %3 = fcmp ogt float %"10654", 0.000000e+00
  br i1 %3, label %else11, label %tailrecurse.backedge

else11:                                           ; preds = %else9
  %"10658" = load float, float* inttoptr (i32 138 to float*), align 4
  %4 = fcmp olt float %"10654", %"10658"
  br i1 %4, label %else13, label %tailrecurse.backedge

else13:                                           ; preds = %else11
  %V7654.V4056.t = fadd float %"10654", 0x3F847AE140000000
  %"1066314" = load float, float* %"10662", align 4
  %V7657.V4079.1591 = fmul float %V7654.V4056.t, %"1066314"
  %"10666" = load float, float* inttoptr (i32 160 to float*), align 32
  %V7660.V4057.q0 = fadd float %V7657.V4079.1591, %"10666"
  %"1066915" = load float, float* %"10669", align 4
  %V7663.V4074.1596 = fmul float %V7654.V4056.t, %"1066915"
  %"10672" = load float, float* inttoptr (i32 164 to float*), align 4
  %V7666.V4058.q1 = fadd float %V7663.V4074.1596, %"10672"
  %"1067516" = load float, float* %"10675", align 4
  %V7669.V4069.1601 = fmul float %V7654.V4056.t, %"1067516"
  %"10678" = load float, float* inttoptr (i32 168 to float*), align 8
  %V7672.V4059.q2 = fadd float %V7669.V4069.1601, %"10678"
  %"1077113.i" = load i32, i32* %V7632.V4041.and_group, align 4
  %5 = icmp eq i32 %"1077113.i", -1
  br i1 %5, label %else18, label %else.i.preheader

else.i.preheader:                                 ; preds = %else13
  br label %else.i

tailrecurse.i:                                    ; preds = %else.i
  %"10771.i" = getelementptr inbounds i32, i32* %V7632.V4041.and_group, i32 %V7782.V4189.1512.i
  %"107711.i" = load i32, i32* %"10771.i", align 4
  %6 = icmp eq i32 %"107711.i", -1
  br i1 %6, label %else18.loopexit, label %else.i

else.i:                                           ; preds = %else.i.preheader, %tailrecurse.i
  %"1077115.i" = phi i32 [ %"107711.i", %tailrecurse.i ], [ %"1077113.i", %else.i.preheader ]
  %V7771.V4180.ofs.tr4.i = phi i32 [ %V7782.V4189.1512.i, %tailrecurse.i ], [ 0, %else.i.preheader ]
  %"10776.i" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %"1077115.i"
  %"107762.i" = load i32*, i32** %"10776.i", align 4
  %V7779.V4187.1513.i = tail call i1 @V6228.V2637.is_outside(i32* %"107762.i", float %V7660.V4057.q0, float %V7666.V4058.q1, float %V7672.V4059.q2) #2
  %V7782.V4189.1512.i = add i32 %V7771.V4180.ofs.tr4.i, 1
  br i1 %V7779.V4187.1513.i, label %tailrecurse.backedge.loopexit, label %tailrecurse.i

else18.loopexit:                                  ; preds = %tailrecurse.i
  br label %else18

else18:                                           ; preds = %else18.loopexit, %else13
  store float %V7654.V4056.t, float* inttoptr (i32 138 to float*), align 4
  store float %V7660.V4057.q0, float* inttoptr (i32 139 to float*), align 4
  store float %V7666.V4058.q1, float* inttoptr (i32 143 to float*), align 4
  store float %V7672.V4059.q2, float* inttoptr (i32 147 to float*), align 4
  store i32 %"1064016", i32* inttoptr (i32 142 to i32*), align 4
  store i32 %V7636.V4045.t0, i32* inttoptr (i32 137 to i32*), align 4
  br label %tailrecurse.backedge

ifcont23.loopexit:                                ; preds = %then4, %tailrecurse.backedge
  br label %ifcont23

ifcont23:                                         ; preds = %ifcont23.loopexit, %entry
  ret void
}

; Function Attrs: nounwind
define void @V6284.V2693.setup_rect_reflection(i32 %V6385.V2794.obj_id, i32* nocapture readonly %V6386.V2795.obj) #2 {
entry:
  %V6388.V2796.sid = shl i32 %V6385.V2794.obj_id, 2
  %"9764" = load i32, i32* inttoptr (i32 435 to i32*), align 4
  %"123201.i" = getelementptr inbounds i32, i32* %V6386.V2795.obj, i32 7
  %0 = bitcast i32* %"123201.i" to float**
  %"1232082.i" = load float*, float** %0, align 4
  %"1233312.i" = load float, float* %"1232082.i", align 4
  %V6393.V2798.br = fsub float 1.000000e+00, %"1233312.i"
  %"9767" = load float, float* inttoptr (i32 79 to float*), align 4
  %"13209.i" = fsub float 0.000000e+00, %"9767"
  %"9770" = load float, float* inttoptr (i32 83 to float*), align 4
  %"13209.i1" = fsub float 0.000000e+00, %"9770"
  %"9773" = load float, float* inttoptr (i32 87 to float*), align 4
  %"13209.i2" = fsub float 0.000000e+00, %"9773"
  %V6404.V2820.2452 = or i32 %V6388.V2796.sid, 1
  %V6482.V2889.v3.i.i3 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i4" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i5" = ptrtoint i32* %V6482.V2889.v3.i.i3 to i32
  %V6485.V2890.consts.i.i6 = tail call i32* @create_array(i32 %"9841.i.i4", i32 %"9843.i.i5") #2
  %"9832.i.i7" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i5", i32* %"9832.i.i7", align 4
  %"9846.i.i8" = ptrtoint i32* %V6485.V2890.consts.i.i6 to i32
  %"9847.i.i9" = getelementptr inbounds i32, i32* %"9832.i.i7", i32 1
  store i32 %"9846.i.i8", i32* %"9847.i.i9", align 4
  %1 = bitcast i32* %V6482.V2889.v3.i.i3 to float*
  store float %"9767", float* %1, align 4
  %"13141.i.i10" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i3, i32 1
  %2 = bitcast i32* %"13141.i.i10" to float*
  store float %"13209.i1", float* %2, align 4
  %"13144.i.i11" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i3, i32 2
  %3 = bitcast i32* %"13144.i.i11" to float*
  store float %"13209.i2", float* %3, align 4
  %"10851.i.i12" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i13 = add i32 %"10851.i.i12", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i.i7", i32 %V7893.V4299.1437.i.i13) #2
  %"9787.i14" = tail call i32* @create_tuple(i32 3) #2
  store i32 %V6404.V2820.2452, i32* %"9787.i14", align 4
  %"9798.i15" = ptrtoint i32* %"9832.i.i7" to i32
  %"9799.i16" = getelementptr inbounds i32, i32* %"9787.i14", i32 1
  store i32 %"9798.i15", i32* %"9799.i16", align 4
  %"9801.i17" = getelementptr inbounds i32, i32* %"9787.i14", i32 2
  %4 = bitcast i32* %"9801.i17" to float*
  store float %V6393.V2798.br, float* %4, align 4
  %"9803.i18" = ptrtoint i32* %"9787.i14" to i32
  %"9804.i19" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %"9764"
  store i32 %"9803.i18", i32* %"9804.i19", align 4
  %V6409.V2814.2457 = add i32 %"9764", 1
  %V6411.V2815.2458 = or i32 %V6388.V2796.sid, 2
  %"9779" = load float, float* inttoptr (i32 83 to float*), align 4
  %V6482.V2889.v3.i.i20 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i21" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i22" = ptrtoint i32* %V6482.V2889.v3.i.i20 to i32
  %V6485.V2890.consts.i.i23 = tail call i32* @create_array(i32 %"9841.i.i21", i32 %"9843.i.i22") #2
  %"9832.i.i24" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i22", i32* %"9832.i.i24", align 4
  %"9846.i.i25" = ptrtoint i32* %V6485.V2890.consts.i.i23 to i32
  %"9847.i.i26" = getelementptr inbounds i32, i32* %"9832.i.i24", i32 1
  store i32 %"9846.i.i25", i32* %"9847.i.i26", align 4
  %5 = bitcast i32* %V6482.V2889.v3.i.i20 to float*
  store float %"13209.i", float* %5, align 4
  %"13141.i.i27" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i20, i32 1
  %6 = bitcast i32* %"13141.i.i27" to float*
  store float %"9779", float* %6, align 4
  %"13144.i.i28" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i20, i32 2
  %7 = bitcast i32* %"13144.i.i28" to float*
  store float %"13209.i2", float* %7, align 4
  %"10851.i.i29" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i30 = add i32 %"10851.i.i29", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i.i24", i32 %V7893.V4299.1437.i.i30) #2
  %"9787.i31" = tail call i32* @create_tuple(i32 3) #2
  store i32 %V6411.V2815.2458, i32* %"9787.i31", align 4
  %"9798.i32" = ptrtoint i32* %"9832.i.i24" to i32
  %"9799.i33" = getelementptr inbounds i32, i32* %"9787.i31", i32 1
  store i32 %"9798.i32", i32* %"9799.i33", align 4
  %"9801.i34" = getelementptr inbounds i32, i32* %"9787.i31", i32 2
  %8 = bitcast i32* %"9801.i34" to float*
  store float %V6393.V2798.br, float* %8, align 4
  %"9803.i35" = ptrtoint i32* %"9787.i31" to i32
  %"9804.i36" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %V6409.V2814.2457
  store i32 %"9803.i35", i32* %"9804.i36", align 4
  %V6416.V2808.2463 = add i32 %"9764", 2
  %V6418.V2809.2464 = or i32 %V6388.V2796.sid, 3
  %"9782" = load float, float* inttoptr (i32 87 to float*), align 4
  %V6482.V2889.v3.i.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i" = ptrtoint i32* %V6482.V2889.v3.i.i to i32
  %V6485.V2890.consts.i.i = tail call i32* @create_array(i32 %"9841.i.i", i32 %"9843.i.i") #2
  %"9832.i.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i", i32* %"9832.i.i", align 4
  %"9846.i.i" = ptrtoint i32* %V6485.V2890.consts.i.i to i32
  %"9847.i.i" = getelementptr inbounds i32, i32* %"9832.i.i", i32 1
  store i32 %"9846.i.i", i32* %"9847.i.i", align 4
  %9 = bitcast i32* %V6482.V2889.v3.i.i to float*
  store float %"13209.i", float* %9, align 4
  %"13141.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i, i32 1
  %10 = bitcast i32* %"13141.i.i" to float*
  store float %"13209.i1", float* %10, align 4
  %"13144.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i, i32 2
  %11 = bitcast i32* %"13144.i.i" to float*
  store float %"9782", float* %11, align 4
  %"10851.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i = add i32 %"10851.i.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i.i", i32 %V7893.V4299.1437.i.i) #2
  %"9787.i" = tail call i32* @create_tuple(i32 3) #2
  store i32 %V6418.V2809.2464, i32* %"9787.i", align 4
  %"9798.i" = ptrtoint i32* %"9832.i.i" to i32
  %"9799.i" = getelementptr inbounds i32, i32* %"9787.i", i32 1
  store i32 %"9798.i", i32* %"9799.i", align 4
  %"9801.i" = getelementptr inbounds i32, i32* %"9787.i", i32 2
  %12 = bitcast i32* %"9801.i" to float*
  store float %V6393.V2798.br, float* %12, align 4
  %"9803.i" = ptrtoint i32* %"9787.i" to i32
  %"9804.i" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %V6416.V2808.2463
  store i32 %"9803.i", i32* %"9804.i", align 4
  %V6424.V2806.2468 = add i32 %"9764", 3
  store i32 %V6424.V2806.2468, i32* inttoptr (i32 435 to i32*), align 4
  ret void
}

; Function Attrs: nounwind
define void @V6285.V2694.setup_surface_reflection(i32 %V6347.V2756.obj_id, i32* nocapture readonly %V6348.V2757.obj) #2 {
entry:
  %V6350.V2791.2470 = shl i32 %V6347.V2756.obj_id, 2
  %V6352.V2758.sid = or i32 %V6350.V2791.2470, 1
  %"9749" = load i32, i32* inttoptr (i32 435 to i32*), align 4
  %"123201.i" = getelementptr inbounds i32, i32* %V6348.V2757.obj, i32 7
  %0 = bitcast i32* %"123201.i" to float**
  %"1232082.i" = load float*, float** %0, align 4
  %"1233312.i" = load float, float* %"1232082.i", align 4
  %V6357.V2760.br = fsub float 1.000000e+00, %"1233312.i"
  %"125031.i" = getelementptr inbounds i32, i32* %V6348.V2757.obj, i32 4
  %"12503.i" = bitcast i32* %"125031.i" to i32**
  %"125035.i" = load i32*, i32** %"12503.i", align 4
  %"130231.i" = load float, float* inttoptr (i32 79 to float*), align 4
  %"13025.i" = bitcast i32* %"125035.i" to float*
  %"130262.i" = load float, float* %"13025.i", align 4
  %V9502.V5913.513.i = fmul float %"130231.i", %"130262.i"
  %"130293.i" = load float, float* inttoptr (i32 83 to float*), align 4
  %"130322.i" = getelementptr inbounds i32, i32* %"125035.i", i32 1
  %"13032.i" = bitcast i32* %"130322.i" to float*
  %"130324.i" = load float, float* %"13032.i", align 4
  %V9507.V5914.514.i = fmul float %"130293.i", %"130324.i"
  %V9508.V5907.519.i = fadd float %V9502.V5913.513.i, %V9507.V5914.514.i
  %"130355.i" = load float, float* inttoptr (i32 87 to float*), align 4
  %"130384.i" = getelementptr inbounds i32, i32* %"125035.i", i32 2
  %"13038.i" = bitcast i32* %"130384.i" to float*
  %"130386.i" = load float, float* %"13038.i", align 4
  %V9513.V5908.520.i = fmul float %"130355.i", %"130386.i"
  %"13040.i" = fadd float %V9508.V5907.519.i, %V9513.V5908.520.i
  %V6362.V2784.2478 = fmul float %"130262.i", 2.000000e+00
  %V6363.V2781.2480 = fmul float %"13040.i", %V6362.V2784.2478
  %V6366.V2766.2494 = fsub float %V6363.V2781.2480, %"130231.i"
  %V6369.V2778.2484 = fmul float %"130324.i", 2.000000e+00
  %V6370.V2775.2486 = fmul float %"13040.i", %V6369.V2778.2484
  %V6373.V2767.2495 = fsub float %V6370.V2775.2486, %"130293.i"
  %V6376.V2772.2490 = fmul float %"130386.i", 2.000000e+00
  %V6377.V2769.2492 = fmul float %"13040.i", %V6376.V2772.2490
  %V6380.V2768.2496 = fsub float %V6377.V2769.2492, %"130355.i"
  %V6482.V2889.v3.i.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i" = ptrtoint i32* %V6482.V2889.v3.i.i to i32
  %V6485.V2890.consts.i.i = tail call i32* @create_array(i32 %"9841.i.i", i32 %"9843.i.i") #2
  %"9832.i.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i", i32* %"9832.i.i", align 4
  %"9846.i.i" = ptrtoint i32* %V6485.V2890.consts.i.i to i32
  %"9847.i.i" = getelementptr inbounds i32, i32* %"9832.i.i", i32 1
  store i32 %"9846.i.i", i32* %"9847.i.i", align 4
  %1 = bitcast i32* %V6482.V2889.v3.i.i to float*
  store float %V6366.V2766.2494, float* %1, align 4
  %"13141.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i, i32 1
  %2 = bitcast i32* %"13141.i.i" to float*
  store float %V6373.V2767.2495, float* %2, align 4
  %"13144.i.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i.i, i32 2
  %3 = bitcast i32* %"13144.i.i" to float*
  store float %V6380.V2768.2496, float* %3, align 4
  %"10851.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i = add i32 %"10851.i.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i.i", i32 %V7893.V4299.1437.i.i) #2
  %"9787.i" = tail call i32* @create_tuple(i32 3) #2
  store i32 %V6352.V2758.sid, i32* %"9787.i", align 4
  %"9798.i" = ptrtoint i32* %"9832.i.i" to i32
  %"9799.i" = getelementptr inbounds i32, i32* %"9787.i", i32 1
  store i32 %"9798.i", i32* %"9799.i", align 4
  %"9801.i" = getelementptr inbounds i32, i32* %"9787.i", i32 2
  %4 = bitcast i32* %"9801.i" to float*
  store float %V6357.V2760.br, float* %4, align 4
  %"9803.i" = ptrtoint i32* %"9787.i" to i32
  %"9804.i" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %"9749"
  store i32 %"9803.i", i32* %"9804.i", align 4
  %V6384.V2764.2499 = add i32 %"9749", 1
  store i32 %V6384.V2764.2499, i32* inttoptr (i32 435 to i32*), align 4
  ret void
}

; Function Attrs: nounwind
define void @V6283.V2692.add_reflection(i32 %V6425.V2834.index, i32 %V6426.V2835.surface_id, float %V6427.V2836.bright, float %V6428.V2837.v0, float %V6429.V2838.v1, float %V6430.V2839.v2) #2 {
entry:
  %V6482.V2889.v3.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i" = ptrtoint i32* %V6482.V2889.v3.i to i32
  %V6485.V2890.consts.i = tail call i32* @create_array(i32 %"9841.i", i32 %"9843.i") #2
  %"9832.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i", i32* %"9832.i", align 4
  %"9846.i" = ptrtoint i32* %V6485.V2890.consts.i to i32
  %"9847.i" = getelementptr inbounds i32, i32* %"9832.i", i32 1
  store i32 %"9846.i", i32* %"9847.i", align 4
  %0 = bitcast i32* %V6482.V2889.v3.i to float*
  store float %V6428.V2837.v0, float* %0, align 4
  %"13141.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i, i32 1
  %1 = bitcast i32* %"13141.i" to float*
  store float %V6429.V2838.v1, float* %1, align 4
  %"13144.i" = getelementptr inbounds i32, i32* %V6482.V2889.v3.i, i32 2
  %2 = bitcast i32* %"13144.i" to float*
  store float %V6430.V2839.v2, float* %2, align 4
  %"10851.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i = add i32 %"10851.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"9832.i", i32 %V7893.V4299.1437.i) #2
  %"9787" = tail call i32* @create_tuple(i32 3)
  store i32 %V6426.V2835.surface_id, i32* %"9787", align 4
  %"9798" = ptrtoint i32* %"9832.i" to i32
  %"9799" = getelementptr inbounds i32, i32* %"9787", i32 1
  store i32 %"9798", i32* %"9799", align 4
  %"9801" = getelementptr inbounds i32, i32* %"9787", i32 2
  %3 = bitcast i32* %"9801" to float*
  store float %V6427.V2836.bright, float* %3, align 4
  %"9803" = ptrtoint i32* %"9787" to i32
  %"9804" = getelementptr inbounds i32, i32* inttoptr (i32 255 to i32*), i32 %V6425.V2834.index
  store i32 %"9803", i32* %"9804", align 4
  ret void
}

; Function Attrs: norecurse nounwind
define i32* @V6277.V2686.create_dirvec() #0 {
entry:
  %V6482.V2889.v3 = tail call i32* @create_array(i32 3, i32 0)
  %"9841" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843" = ptrtoint i32* %V6482.V2889.v3 to i32
  %V6485.V2890.consts = tail call i32* @create_array(i32 %"9841", i32 %"9843")
  %"9832" = tail call i32* @create_tuple(i32 2)
  store i32 %"9843", i32* %"9832", align 4
  %"9846" = ptrtoint i32* %V6485.V2890.consts to i32
  %"9847" = getelementptr inbounds i32, i32* %"9832", i32 1
  store i32 %"9846", i32* %"9847", align 4
  ret i32* %"9832"
}

; Function Attrs: nounwind
define void @V6221.V2630.iter_setup_dirvec_constants(i32* nocapture readonly %V7894.V4303.dirvec, i32 %V7895.V4304.index) #2 {
entry:
  %0 = icmp sgt i32 %V7895.V4304.index, -1
  br i1 %0, label %then.lr.ph, label %ifcont7

then.lr.ph:                                       ; preds = %entry
  %"116021.i" = getelementptr inbounds i32, i32* %V7894.V4303.dirvec, i32 1
  %"11602.i" = bitcast i32* %"116021.i" to i32**
  %"11606.i" = bitcast i32* %V7894.V4303.dirvec to i32**
  br label %then

then:                                             ; preds = %then.lr.ph, %ifcont5
  %V7895.V4304.index.tr1 = phi i32 [ %V7895.V4304.index, %then.lr.ph ], [ %V7904.V4311.1433, %ifcont5 ]
  %"10856" = getelementptr inbounds i32*, i32** inttoptr (i32 13 to i32**), i32 %V7895.V4304.index.tr1
  %"108561" = load i32*, i32** %"10856", align 4
  %"116022.i" = load i32*, i32** %"11602.i", align 4
  %"116071.i" = load i32*, i32** %"11606.i", align 4
  %"12814.i" = getelementptr inbounds i32, i32* %"108561", i32 1
  %"128142.i" = load i32, i32* %"12814.i", align 4
  switch i32 %"128142.i", label %else4 [
    i32 1, label %then2
    i32 2, label %then3
  ]

then2:                                            ; preds = %then
  %V7908.V4317.1428 = tail call i32* @V6218.V2627.setup_rect_table(i32* %"116071.i", i32* %"108561")
  %"10859" = ptrtoint i32* %V7908.V4317.1428 to i32
  %"10860" = getelementptr inbounds i32, i32* %"116022.i", i32 %V7895.V4304.index.tr1
  store i32 %"10859", i32* %"10860", align 4
  br label %ifcont5

then3:                                            ; preds = %then
  %V7998.V4405.const.i = tail call i32* @create_array(i32 4, i32 0) #2
  %"10930.i" = bitcast i32* %"116071.i" to float*
  %"109311.i" = load float, float* %"10930.i", align 4
  %"126431.i.i" = getelementptr inbounds i32, i32* %"108561", i32 4
  %1 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %1, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8002.V4435.1329.i = fmul float %"109311.i", %"1266512.i.i"
  %"109341.i" = getelementptr inbounds i32, i32* %"116071.i", i32 1
  %"10934.i" = bitcast i32* %"109341.i" to float*
  %"109342.i" = load float, float* %"10934.i", align 4
  %"12617.i14.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i15.i" = load float, float* %"12617.i14.i", align 4
  %V8006.V4436.1330.i = fmul float %"109342.i", %"1261712.i15.i"
  %V8007.V4430.1334.i = fadd float %V8002.V4435.1329.i, %V8006.V4436.1330.i
  %"109372.i" = getelementptr inbounds i32, i32* %"116071.i", i32 2
  %"10937.i" = bitcast i32* %"109372.i" to float*
  %"109373.i" = load float, float* %"10937.i", align 4
  %"12569.i10.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i11.i" = load float, float* %"12569.i10.i", align 4
  %V8011.V4431.1335.i = fmul float %"109373.i", %"1256912.i11.i"
  %V8012.V4406.d.i = fadd float %V8007.V4430.1334.i, %V8011.V4431.1335.i
  %2 = fcmp ogt float %V8012.V4406.d.i, 0.000000e+00
  br i1 %2, label %else.i, label %then.i

then.i:                                           ; preds = %then3
  store i32 0, i32* %V7998.V4405.const.i, align 4
  br label %V6219.V2628.setup_surface_table.exit

else.i:                                           ; preds = %then3
  %V8018.V4426.1338.i = fdiv float -1.000000e+00, %V8012.V4406.d.i
  %3 = bitcast i32* %V7998.V4405.const.i to float*
  store float %V8018.V4426.1338.i, float* %3, align 4
  %"1264352.i6.i" = load float*, float** %1, align 4
  %"1266512.i7.i" = load float, float* %"1264352.i6.i", align 4
  %V8022.V4423.1340.i = fdiv float %"1266512.i7.i", %V8012.V4406.d.i
  %"13209.i4.i" = fsub float 0.000000e+00, %V8022.V4423.1340.i
  %"10945.i" = getelementptr inbounds i32, i32* %V7998.V4405.const.i, i32 1
  %4 = bitcast i32* %"10945.i" to float*
  store float %"13209.i4.i", float* %4, align 4
  %"1259552.i.i" = load float*, float** %1, align 4
  %"12617.i.i" = getelementptr inbounds float, float* %"1259552.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8027.V4419.1344.i = fdiv float %"1261712.i.i", %V8012.V4406.d.i
  %"13209.i3.i" = fsub float 0.000000e+00, %V8027.V4419.1344.i
  %"10947.i" = getelementptr inbounds i32, i32* %V7998.V4405.const.i, i32 2
  %5 = bitcast i32* %"10947.i" to float*
  store float %"13209.i3.i", float* %5, align 4
  %"1254752.i.i" = load float*, float** %1, align 4
  %"12569.i.i" = getelementptr inbounds float, float* %"1254752.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8032.V4415.1348.i = fdiv float %"1256912.i.i", %V8012.V4406.d.i
  %"13209.i.i" = fsub float 0.000000e+00, %V8032.V4415.1348.i
  %"10950.i" = getelementptr inbounds i32, i32* %V7998.V4405.const.i, i32 3
  %6 = bitcast i32* %"10950.i" to float*
  store float %"13209.i.i", float* %6, align 4
  br label %V6219.V2628.setup_surface_table.exit

V6219.V2628.setup_surface_table.exit:             ; preds = %then.i, %else.i
  %"10863" = ptrtoint i32* %V7998.V4405.const.i to i32
  %"10864" = getelementptr inbounds i32, i32* %"116022.i", i32 %V7895.V4304.index.tr1
  store i32 %"10863", i32* %"10864", align 4
  br label %ifcont5

else4:                                            ; preds = %then
  %V7906.V4315.1431 = tail call i32* @V6220.V2629.setup_second_table(i32* %"116071.i", i32* %"108561")
  %"10866" = ptrtoint i32* %V7906.V4315.1431 to i32
  %"10867" = getelementptr inbounds i32, i32* %"116022.i", i32 %V7895.V4304.index.tr1
  store i32 %"10866", i32* %"10867", align 4
  br label %ifcont5

ifcont5:                                          ; preds = %V6219.V2628.setup_surface_table.exit, %else4, %then2
  %V7904.V4311.1433 = add nsw i32 %V7895.V4304.index.tr1, -1
  %7 = icmp sgt i32 %V7895.V4304.index.tr1, 0
  br i1 %7, label %then, label %ifcont7.loopexit

ifcont7.loopexit:                                 ; preds = %ifcont5
  br label %ifcont7

ifcont7:                                          ; preds = %ifcont7.loopexit, %entry
  ret void
}

; Function Attrs: norecurse nounwind
define i32* @V6218.V2627.setup_rect_table(i32* nocapture readonly %V8036.V4445.vec, i32* nocapture readonly %V8037.V4446.m) #0 {
entry:
  %V8040.V4447.const = tail call i32* @create_array(i32 6, i32 0)
  %"10952" = bitcast i32* %V8036.V4445.vec to float*
  %"109531" = load float, float* %"10952", align 4
  %0 = fcmp oeq float %"109531", 0.000000e+00
  br i1 %0, label %else, label %then

then:                                             ; preds = %entry
  %"12741.i12" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 6
  %"127417.i13" = load i32, i32* %"12741.i12", align 4
  %1 = and i32 %"127417.i13", 1
  %"12742.i14" = icmp ne i32 %1, 0
  %2 = fcmp olt float %"109531", 0.000000e+00
  %V9643.V6052.y.13158.i11 = xor i1 %2, %"12742.i14"
  %"126431.i" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 4
  %3 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %3, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %"13209.i.i9" = fsub float 0.000000e+00, %"1266512.i"
  %V9635.V6044.x.13209.i.i10 = select i1 %V9643.V6052.y.13158.i11, float %"1266512.i", float %"13209.i.i9"
  %4 = bitcast i32* %V8040.V4447.const to float*
  store float %V9635.V6044.x.13209.i.i10, float* %4, align 4
  %"109613" = load float, float* %"10952", align 4
  %V8103.V4497.1280 = fdiv float 1.000000e+00, %"109613"
  %"10965" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 1
  %5 = bitcast i32* %"10965" to float*
  store float %V8103.V4497.1280, float* %5, align 4
  br label %ifcont

else:                                             ; preds = %entry
  %"10968" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 1
  store i32 0, i32* %"10968", align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %"109701" = getelementptr inbounds i32, i32* %V8036.V4445.vec, i32 1
  %"10970" = bitcast i32* %"109701" to float*
  %"109704" = load float, float* %"10970", align 4
  %6 = fcmp oeq float %"109704", 0.000000e+00
  br i1 %6, label %else8, label %then5

then5:                                            ; preds = %ifcont
  %"12741.i6" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 6
  %"127417.i7" = load i32, i32* %"12741.i6", align 4
  %7 = and i32 %"127417.i7", 1
  %"12742.i8" = icmp ne i32 %7, 0
  %8 = fcmp olt float %"109704", 0.000000e+00
  %V9643.V6052.y.13158.i5 = xor i1 %8, %"12742.i8"
  %"125951.i" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 4
  %9 = bitcast i32* %"125951.i" to float**
  %"1259552.i" = load float*, float** %9, align 4
  %"12617.i" = getelementptr inbounds float, float* %"1259552.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %"13209.i.i3" = fsub float 0.000000e+00, %"1261712.i"
  %V9635.V6044.x.13209.i.i4 = select i1 %V9643.V6052.y.13158.i5, float %"1261712.i", float %"13209.i.i3"
  %"10976" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 2
  %10 = bitcast i32* %"10976" to float*
  store float %V9635.V6044.x.13209.i.i4, float* %10, align 4
  %"109787" = load float, float* %"10970", align 4
  %V8087.V4477.1299 = fdiv float 1.000000e+00, %"109787"
  %"10982" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 3
  %11 = bitcast i32* %"10982" to float*
  store float %V8087.V4477.1299, float* %11, align 4
  br label %ifcont9

else8:                                            ; preds = %ifcont
  %"10985" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 3
  store i32 0, i32* %"10985", align 4
  br label %ifcont9

ifcont9:                                          ; preds = %else8, %then5
  %"109872" = getelementptr inbounds i32, i32* %V8036.V4445.vec, i32 2
  %"10987" = bitcast i32* %"109872" to float*
  %"1098710" = load float, float* %"10987", align 4
  %12 = fcmp oeq float %"1098710", 0.000000e+00
  br i1 %12, label %else14, label %then11

then11:                                           ; preds = %ifcont9
  %"12741.i" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 6
  %"127417.i" = load i32, i32* %"12741.i", align 4
  %13 = and i32 %"127417.i", 1
  %"12742.i" = icmp ne i32 %13, 0
  %14 = fcmp olt float %"1098710", 0.000000e+00
  %V9643.V6052.y.13158.i = xor i1 %14, %"12742.i"
  %"125471.i" = getelementptr inbounds i32, i32* %V8037.V4446.m, i32 4
  %15 = bitcast i32* %"125471.i" to float**
  %"1254752.i" = load float*, float** %15, align 4
  %"12569.i" = getelementptr inbounds float, float* %"1254752.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %"13209.i.i" = fsub float 0.000000e+00, %"1256912.i"
  %V9635.V6044.x.13209.i.i = select i1 %V9643.V6052.y.13158.i, float %"1256912.i", float %"13209.i.i"
  %"10993" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 4
  %16 = bitcast i32* %"10993" to float*
  store float %V9635.V6044.x.13209.i.i, float* %16, align 4
  %"1099513" = load float, float* %"10987", align 4
  %V8071.V4457.1318 = fdiv float 1.000000e+00, %"1099513"
  %"10999" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 5
  %17 = bitcast i32* %"10999" to float*
  store float %V8071.V4457.1318, float* %17, align 4
  br label %ifcont15

else14:                                           ; preds = %ifcont9
  %"11002" = getelementptr inbounds i32, i32* %V8040.V4447.const, i32 5
  store i32 0, i32* %"11002", align 4
  br label %ifcont15

ifcont15:                                         ; preds = %else14, %then11
  ret i32* %V8040.V4447.const
}

; Function Attrs: norecurse nounwind
define i32* @V6219.V2628.setup_surface_table(i32* nocapture readonly %V7994.V4403.vec, i32* nocapture readonly %V7995.V4404.m) #0 {
entry:
  %V7998.V4405.const = tail call i32* @create_array(i32 4, i32 0)
  %"10930" = bitcast i32* %V7994.V4403.vec to float*
  %"109311" = load float, float* %"10930", align 4
  %"126431.i" = getelementptr inbounds i32, i32* %V7995.V4404.m, i32 4
  %0 = bitcast i32* %"126431.i" to float**
  %"1264352.i" = load float*, float** %0, align 4
  %"1266512.i" = load float, float* %"1264352.i", align 4
  %V8002.V4435.1329 = fmul float %"109311", %"1266512.i"
  %"109341" = getelementptr inbounds i32, i32* %V7994.V4403.vec, i32 1
  %"10934" = bitcast i32* %"109341" to float*
  %"109342" = load float, float* %"10934", align 4
  %"12617.i14" = getelementptr inbounds float, float* %"1264352.i", i32 1
  %"1261712.i15" = load float, float* %"12617.i14", align 4
  %V8006.V4436.1330 = fmul float %"109342", %"1261712.i15"
  %V8007.V4430.1334 = fadd float %V8002.V4435.1329, %V8006.V4436.1330
  %"109372" = getelementptr inbounds i32, i32* %V7994.V4403.vec, i32 2
  %"10937" = bitcast i32* %"109372" to float*
  %"109373" = load float, float* %"10937", align 4
  %"12569.i10" = getelementptr inbounds float, float* %"1264352.i", i32 2
  %"1256912.i11" = load float, float* %"12569.i10", align 4
  %V8011.V4431.1335 = fmul float %"109373", %"1256912.i11"
  %V8012.V4406.d = fadd float %V8007.V4430.1334, %V8011.V4431.1335
  %1 = fcmp ogt float %V8012.V4406.d, 0.000000e+00
  br i1 %1, label %else, label %then

then:                                             ; preds = %entry
  store i32 0, i32* %V7998.V4405.const, align 4
  br label %ifcont

else:                                             ; preds = %entry
  %V8018.V4426.1338 = fdiv float -1.000000e+00, %V8012.V4406.d
  %2 = bitcast i32* %V7998.V4405.const to float*
  store float %V8018.V4426.1338, float* %2, align 4
  %"1264352.i6" = load float*, float** %0, align 4
  %"1266512.i7" = load float, float* %"1264352.i6", align 4
  %V8022.V4423.1340 = fdiv float %"1266512.i7", %V8012.V4406.d
  %"13209.i4" = fsub float 0.000000e+00, %V8022.V4423.1340
  %"10945" = getelementptr inbounds i32, i32* %V7998.V4405.const, i32 1
  %3 = bitcast i32* %"10945" to float*
  store float %"13209.i4", float* %3, align 4
  %"1259552.i" = load float*, float** %0, align 4
  %"12617.i" = getelementptr inbounds float, float* %"1259552.i", i32 1
  %"1261712.i" = load float, float* %"12617.i", align 4
  %V8027.V4419.1344 = fdiv float %"1261712.i", %V8012.V4406.d
  %"13209.i3" = fsub float 0.000000e+00, %V8027.V4419.1344
  %"10947" = getelementptr inbounds i32, i32* %V7998.V4405.const, i32 2
  %4 = bitcast i32* %"10947" to float*
  store float %"13209.i3", float* %4, align 4
  %"1254752.i" = load float*, float** %0, align 4
  %"12569.i" = getelementptr inbounds float, float* %"1254752.i", i32 2
  %"1256912.i" = load float, float* %"12569.i", align 4
  %V8032.V4415.1348 = fdiv float %"1256912.i", %V8012.V4406.d
  %"13209.i" = fsub float 0.000000e+00, %V8032.V4415.1348
  %"10950" = getelementptr inbounds i32, i32* %V7998.V4405.const, i32 3
  %5 = bitcast i32* %"10950" to float*
  store float %"13209.i", float* %5, align 4
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  ret i32* %V7998.V4405.const
}

; Function Attrs: norecurse nounwind
define i32* @V6220.V2629.setup_second_table(i32* nocapture readonly %V7909.V4318.v, i32* nocapture readonly %V7910.V4319.m) #0 {
entry:
  %V7913.V4320.const = tail call i32* @create_array(i32 5, i32 0)
  %"10871" = bitcast i32* %V7909.V4318.v to float*
  %"108721" = load float, float* %"10871", align 4
  %"108751" = getelementptr inbounds i32, i32* %V7909.V4318.v, i32 1
  %"10875" = bitcast i32* %"108751" to float*
  %"108752" = load float, float* %"10875", align 4
  %"108782" = getelementptr inbounds i32, i32* %V7909.V4318.v, i32 2
  %"10878" = bitcast i32* %"108782" to float*
  %"108783" = load float, float* %"10878", align 4
  %"13208.i.i" = fmul float %"108721", %"108721"
  %"126431.i.i" = getelementptr inbounds i32, i32* %V7910.V4319.m, i32 4
  %0 = bitcast i32* %"126431.i.i" to float**
  %"1264352.i.i" = load float*, float** %0, align 4
  %"1266512.i.i" = load float, float* %"1264352.i.i", align 4
  %V8464.V4889.985.i = fmul float %"13208.i.i", %"1266512.i.i"
  %"13208.i2.i" = fmul float %"108752", %"108752"
  %"12617.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 1
  %"1261712.i.i" = load float, float* %"12617.i.i", align 4
  %V8467.V4890.986.i = fmul float %"13208.i2.i", %"1261712.i.i"
  %V8468.V4885.989.i = fadd float %V8464.V4889.985.i, %V8467.V4890.986.i
  %"13208.i1.i" = fmul float %"108783", %"108783"
  %"12569.i.i" = getelementptr inbounds float, float* %"1264352.i.i", i32 2
  %"1256912.i.i" = load float, float* %"12569.i.i", align 4
  %V8471.V4886.990.i = fmul float %"13208.i1.i", %"1256912.i.i"
  %V8472.V4871.diag_part.i = fadd float %V8468.V4885.989.i, %V8471.V4886.990.i
  %"12688.i.i" = getelementptr inbounds i32, i32* %V7910.V4319.m, i32 3
  %"126884.i.i" = load i32, i32* %"12688.i.i", align 4
  %1 = icmp eq i32 %"126884.i.i", 0
  br i1 %1, label %V6207.V2616.quadratic.exit, label %else.i

else.i:                                           ; preds = %entry
  %V8475.V4883.993.i = fmul float %"108752", %"108783"
  %"120861.i.i" = getelementptr inbounds i32, i32* %V7910.V4319.m, i32 9
  %2 = bitcast i32* %"120861.i.i" to float**
  %"12086102.i.i" = load float*, float** %2, align 4
  %"1209312.i.i" = load float, float* %"12086102.i.i", align 4
  %V8477.V4882.995.i = fmul float %V8475.V4883.993.i, %"1209312.i.i"
  %V8478.V4878.998.i = fadd float %V8472.V4871.diag_part.i, %V8477.V4882.995.i
  %V8479.V4880.996.i = fmul float %"108721", %"108783"
  %"12045.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 1
  %"1204512.i.i" = load float, float* %"12045.i.i", align 4
  %V8481.V4879.999.i = fmul float %V8479.V4880.996.i, %"1204512.i.i"
  %V8482.V4874.1002.i = fadd float %V8478.V4878.998.i, %V8481.V4879.999.i
  %V8483.V4876.1000.i = fmul float %"108721", %"108752"
  %"11997.i.i" = getelementptr inbounds float, float* %"12086102.i.i", i32 2
  %"1199712.i.i" = load float, float* %"11997.i.i", align 4
  %V8485.V4875.1003.i = fmul float %V8483.V4876.1000.i, %"1199712.i.i"
  %"11258.i" = fadd float %V8482.V4874.1002.i, %V8485.V4875.1003.i
  br label %V6207.V2616.quadratic.exit

V6207.V2616.quadratic.exit:                       ; preds = %entry, %else.i
  %"11256.i" = phi float [ %"11258.i", %else.i ], [ %V8472.V4871.diag_part.i, %entry ]
  %V7924.V4391.1366 = fmul float %"108721", %"1266512.i.i"
  %"13209.i17" = fsub float 0.000000e+00, %V7924.V4391.1366
  %V7929.V4387.1370 = fmul float %"108752", %"1261712.i.i"
  %"13209.i16" = fsub float 0.000000e+00, %V7929.V4387.1370
  %V7934.V4383.1374 = fmul float %"108783", %"1256912.i.i"
  %"13209.i" = fsub float 0.000000e+00, %V7934.V4383.1374
  %3 = bitcast i32* %V7913.V4320.const to float*
  store float %"11256.i", float* %3, align 4
  %"126884.i" = load i32, i32* %"12688.i.i", align 4
  %V7941.V4334.1418 = icmp eq i32 %"126884.i", 0
  br i1 %V7941.V4334.1418, label %then7, label %else8

then7:                                            ; preds = %V6207.V2616.quadratic.exit
  %"10894" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 1
  %4 = bitcast i32* %"10894" to float*
  store float %"13209.i17", float* %4, align 4
  %"10896" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 2
  %5 = bitcast i32* %"10896" to float*
  store float %"13209.i16", float* %5, align 4
  %"10899" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 3
  %6 = bitcast i32* %"10899" to float*
  store float %"13209.i", float* %6, align 4
  br label %ifcont15

else8:                                            ; preds = %V6207.V2616.quadratic.exit
  %"109019" = load float, float* %"10878", align 4
  %"120381.i12" = getelementptr inbounds i32, i32* %V7910.V4319.m, i32 9
  %7 = bitcast i32* %"120381.i12" to float**
  %"12038102.i13" = load float*, float** %7, align 4
  %"12045.i14" = getelementptr inbounds float, float* %"12038102.i13", i32 1
  %"1204512.i15" = load float, float* %"12045.i14", align 4
  %V7955.V4366.1385 = fmul float %"109019", %"1204512.i15"
  %"1090410" = load float, float* %"10875", align 4
  %"11997.i10" = getelementptr inbounds float, float* %"12038102.i13", i32 2
  %"1199712.i11" = load float, float* %"11997.i10", align 4
  %V7959.V4367.1386 = fmul float %"1090410", %"1199712.i11"
  %V7960.V4365.1387 = fadd float %V7955.V4366.1385, %V7959.V4367.1386
  %"13204.i7" = fmul float %V7960.V4365.1387, 5.000000e-01
  %V7962.V4363.1390 = fsub float %"13209.i17", %"13204.i7"
  %"10907" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 1
  %8 = bitcast i32* %"10907" to float*
  store float %V7962.V4363.1390, float* %8, align 4
  %"1090911" = load float, float* %"10878", align 4
  %"12086102.i5" = load float*, float** %7, align 4
  %"1209312.i6" = load float, float* %"12086102.i5", align 4
  %V7968.V4354.1397 = fmul float %"1090911", %"1209312.i6"
  %"1091212" = load float, float* %"10871", align 4
  %"11997.i" = getelementptr inbounds float, float* %"12086102.i5", i32 2
  %"1199712.i" = load float, float* %"11997.i", align 4
  %V7972.V4355.1398 = fmul float %"1091212", %"1199712.i"
  %V7973.V4353.1399 = fadd float %V7968.V4354.1397, %V7972.V4355.1398
  %"13204.i3" = fmul float %V7973.V4353.1399, 5.000000e-01
  %V7975.V4351.1402 = fsub float %"13209.i16", %"13204.i3"
  %"10915" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 2
  %9 = bitcast i32* %"10915" to float*
  store float %V7975.V4351.1402, float* %9, align 4
  %"1091713" = load float, float* %"10875", align 4
  %"12086102.i" = load float*, float** %7, align 4
  %"1209312.i" = load float, float* %"12086102.i", align 4
  %V7981.V4342.1409 = fmul float %"1091713", %"1209312.i"
  %"1092014" = load float, float* %"10871", align 4
  %"12045.i" = getelementptr inbounds float, float* %"12086102.i", i32 1
  %"1204512.i" = load float, float* %"12045.i", align 4
  %V7985.V4343.1410 = fmul float %"1092014", %"1204512.i"
  %V7986.V4341.1411 = fadd float %V7981.V4342.1409, %V7985.V4343.1410
  %"13204.i" = fmul float %V7986.V4341.1411, 5.000000e-01
  %V7988.V4339.1414 = fsub float %"13209.i", %"13204.i"
  %"10924" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 3
  %10 = bitcast i32* %"10924" to float*
  store float %V7988.V4339.1414, float* %10, align 4
  br label %ifcont15

ifcont15:                                         ; preds = %else8, %then7
  %11 = fcmp oeq float %"11256.i", 0.000000e+00
  br i1 %11, label %ifcont18, label %else17

else17:                                           ; preds = %ifcont15
  %V7950.V4331.1423 = fdiv float 1.000000e+00, %"11256.i"
  %"10928" = getelementptr inbounds i32, i32* %V7913.V4320.const, i32 4
  %12 = bitcast i32* %"10928" to float*
  store float %V7950.V4331.1423, float* %12, align 4
  br label %ifcont18

ifcont18:                                         ; preds = %ifcont15, %else17
  ret i32* %V7913.V4320.const
}

; Function Attrs: nounwind
define void @V6279.V2688.create_dirvecs(i32 %V6459.V2868.index) #2 {
entry:
  %0 = icmp sgt i32 %V6459.V2868.index, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %V6278.V2687.create_dirvec_elements.exit
  %V6459.V2868.index.tr1 = phi i32 [ %V6470.V2872.2422, %V6278.V2687.create_dirvec_elements.exit ], [ %V6459.V2868.index, %then.preheader ]
  %V6482.V2889.v3.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i" = ptrtoint i32* %V6482.V2889.v3.i to i32
  %V6485.V2890.consts.i = tail call i32* @create_array(i32 %"9841.i", i32 %"9843.i") #2
  %"9832.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i", i32* %"9832.i", align 4
  %"9846.i" = ptrtoint i32* %V6485.V2890.consts.i to i32
  %"9847.i" = getelementptr inbounds i32, i32* %"9832.i", i32 1
  store i32 %"9846.i", i32* %"9847.i", align 4
  %"9819" = ptrtoint i32* %"9832.i" to i32
  %V6464.V2876.2418 = tail call i32* @create_array(i32 120, i32 %"9819")
  %"9820" = ptrtoint i32* %V6464.V2876.2418 to i32
  %"9821" = getelementptr inbounds i32, i32* inttoptr (i32 180 to i32*), i32 %V6459.V2868.index.tr1
  store i32 %"9820", i32* %"9821", align 4
  %"9823" = getelementptr inbounds i32*, i32** inttoptr (i32 180 to i32**), i32 %V6459.V2868.index.tr1
  %"98231" = load i32*, i32** %"9823", align 4
  br label %then.i

then.i:                                           ; preds = %then.i, %then
  %V6472.V2881.index.tr1.i = phi i32 [ %V6478.V2884.2413.i, %then.i ], [ 118, %then ]
  %V6482.V2889.v3.i.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i.i" = ptrtoint i32* %V6482.V2889.v3.i.i to i32
  %V6485.V2890.consts.i.i = tail call i32* @create_array(i32 %"9841.i.i", i32 %"9843.i.i") #2
  %"9832.i.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i.i", i32* %"9832.i.i", align 4
  %"9846.i.i" = ptrtoint i32* %V6485.V2890.consts.i.i to i32
  %"9847.i.i" = getelementptr inbounds i32, i32* %"9832.i.i", i32 1
  store i32 %"9846.i.i", i32* %"9847.i.i", align 4
  %"9828.i" = ptrtoint i32* %"9832.i.i" to i32
  %"9829.i" = getelementptr inbounds i32, i32* %"98231", i32 %V6472.V2881.index.tr1.i
  store i32 %"9828.i", i32* %"9829.i", align 4
  %V6478.V2884.2413.i = add nsw i32 %V6472.V2881.index.tr1.i, -1
  %1 = icmp sgt i32 %V6472.V2881.index.tr1.i, 0
  br i1 %1, label %then.i, label %V6278.V2687.create_dirvec_elements.exit

V6278.V2687.create_dirvec_elements.exit:          ; preds = %then.i
  %V6470.V2872.2422 = add nsw i32 %V6459.V2868.index.tr1, -1
  %2 = icmp sgt i32 %V6459.V2868.index.tr1, 0
  br i1 %2, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %V6278.V2687.create_dirvec_elements.exit
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define void @V6276.V2685.calc_dirvec_rows(i32 %V6486.V2895.row, i32 %V6487.V2896.group_id, i32 %V6488.V2897.index) {
entry:
  %0 = icmp sgt i32 %V6486.V2895.row, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %then
  %V6488.V2897.index.tr3 = phi i32 [ %V6502.V2903.2404, %then ], [ %V6488.V2897.index, %then.preheader ]
  %V6487.V2896.group_id.tr2 = phi i32 [ %"13145.i", %then ], [ %V6487.V2896.group_id, %then.preheader ]
  %V6486.V2895.row.tr1 = phi i32 [ %V6498.V2901.2402, %then ], [ %V6486.V2895.row, %then.preheader ]
  %1 = sitofp i32 %V6486.V2895.row.tr1 to float
  %V6492.V2908.2396 = fmul float %1, 0x3FC99999A0000000
  %V6494.V2899.ry = fadd float %V6492.V2908.2396, 0xBFECCCCCC0000000
  %V6526.V2928.2388.i = add i32 %V6488.V2897.index.tr3, 2
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0xBFB9999900000000, float %V6494.V2899.ry, i32 %V6487.V2896.group_id.tr2, i32 %V6488.V2897.index.tr3)
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FECCCCCE0000000, float %V6494.V2899.ry, i32 %V6487.V2896.group_id.tr2, i32 %V6526.V2928.2388.i)
  %V9631.V6040.sum.i.i = add i32 %V6487.V2896.group_id.tr2, 1
  %2 = icmp sgt i32 %V9631.V6040.sum.i.i, 4
  %"13146.i.i" = add i32 %V6487.V2896.group_id.tr2, -4
  %"13145.i.i" = select i1 %2, i32 %"13146.i.i", i32 %V9631.V6040.sum.i.i
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0xBFD3333300000000, float %V6494.V2899.ry, i32 %"13145.i.i", i32 %V6488.V2897.index.tr3)
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FE6666680000000, float %V6494.V2899.ry, i32 %"13145.i.i", i32 %V6526.V2928.2388.i)
  %V9631.V6040.sum.i.i.1 = add i32 %"13145.i.i", 1
  %3 = icmp sgt i32 %V9631.V6040.sum.i.i.1, 4
  %"13146.i.i.1" = add i32 %"13145.i.i", -4
  %"13145.i.i.1" = select i1 %3, i32 %"13146.i.i.1", i32 %V9631.V6040.sum.i.i.1
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0xBFDFFFFFE0000000, float %V6494.V2899.ry, i32 %"13145.i.i.1", i32 %V6488.V2897.index.tr3)
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float %V6494.V2899.ry, i32 %"13145.i.i.1", i32 %V6526.V2928.2388.i)
  %V9631.V6040.sum.i.i.2 = add i32 %"13145.i.i.1", 1
  %4 = icmp sgt i32 %V9631.V6040.sum.i.i.2, 4
  %"13146.i.i.2" = add i32 %"13145.i.i.1", -4
  %"13145.i.i.2" = select i1 %4, i32 %"13146.i.i.2", i32 %V9631.V6040.sum.i.i.2
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0xBFE6666660000000, float %V6494.V2899.ry, i32 %"13145.i.i.2", i32 %V6488.V2897.index.tr3)
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FD3333340000000, float %V6494.V2899.ry, i32 %"13145.i.i.2", i32 %V6526.V2928.2388.i)
  %V9631.V6040.sum.i.i.3 = add i32 %"13145.i.i.2", 1
  %5 = icmp sgt i32 %V9631.V6040.sum.i.i.3, 4
  %"13146.i.i.3" = add i32 %"13145.i.i.2", -4
  %"13145.i.i.3" = select i1 %5, i32 %"13146.i.i.3", i32 %V9631.V6040.sum.i.i.3
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0xBFECCCCCC0000000, float %V6494.V2899.ry, i32 %"13145.i.i.3", i32 %V6488.V2897.index.tr3)
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float %V6494.V2899.ry, i32 %"13145.i.i.3", i32 %V6526.V2928.2388.i)
  %V6498.V2901.2402 = add nsw i32 %V6486.V2895.row.tr1, -1
  %V9631.V6040.sum.i = add i32 %V6487.V2896.group_id.tr2, 2
  %6 = icmp sgt i32 %V9631.V6040.sum.i, 4
  %"13146.i" = add i32 %V6487.V2896.group_id.tr2, -3
  %"13145.i" = select i1 %6, i32 %"13146.i", i32 %V9631.V6040.sum.i
  %V6502.V2903.2404 = add i32 %V6488.V2897.index.tr3, 4
  %7 = icmp sgt i32 %V6486.V2895.row.tr1, 0
  br i1 %7, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

; Function Attrs: nounwind
define void @V6281.V2690.init_vecset_constants(i32 %V6445.V2854.index) #2 {
entry:
  %0 = icmp sgt i32 %V6445.V2854.index, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %V6280.V2689.init_dirvec_constants.exit
  %V6445.V2854.index.tr1 = phi i32 [ %V6451.V2857.2431, %V6280.V2689.init_dirvec_constants.exit ], [ %V6445.V2854.index, %then.preheader ]
  %"9808" = getelementptr inbounds i32*, i32** inttoptr (i32 180 to i32**), i32 %V6445.V2854.index.tr1
  %"98081" = load i32*, i32** %"9808", align 4
  br label %then.i

then.i:                                           ; preds = %then.i, %then
  %V6453.V2862.index.tr3.i = phi i32 [ %V6458.V2865.2426.i, %then.i ], [ 119, %then ]
  %"98142.i" = getelementptr inbounds i32, i32* %"98081", i32 %V6453.V2862.index.tr3.i
  %"9814.i" = bitcast i32* %"98142.i" to i32**
  %"98141.i" = load i32*, i32** %"9814.i", align 4
  %"10851.i.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i.i = add i32 %"10851.i.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141.i", i32 %V7893.V4299.1437.i.i) #2
  %V6458.V2865.2426.i = add nsw i32 %V6453.V2862.index.tr3.i, -1
  %1 = icmp sgt i32 %V6453.V2862.index.tr3.i, 0
  br i1 %1, label %then.i, label %V6280.V2689.init_dirvec_constants.exit

V6280.V2689.init_dirvec_constants.exit:           ; preds = %then.i
  %V6451.V2857.2431 = add nsw i32 %V6445.V2854.index.tr1, -1
  %2 = icmp sgt i32 %V6445.V2854.index.tr1, 0
  br i1 %2, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %V6280.V2689.init_dirvec_constants.exit
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

; Function Attrs: nounwind
define void @V6280.V2689.init_dirvec_constants(i32* nocapture readonly %V6452.V2861.vecset, i32 %V6453.V2862.index) #2 {
entry:
  %0 = icmp sgt i32 %V6453.V2862.index, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %then
  %V6453.V2862.index.tr3 = phi i32 [ %V6458.V2865.2426, %then ], [ %V6453.V2862.index, %then.preheader ]
  %"98142" = getelementptr inbounds i32, i32* %V6452.V2861.vecset, i32 %V6453.V2862.index.tr3
  %"9814" = bitcast i32* %"98142" to i32**
  %"98141" = load i32*, i32** %"9814", align 4
  %"10851.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %V7893.V4299.1437.i = add i32 %"10851.i", -1
  tail call void @V6221.V2630.iter_setup_dirvec_constants(i32* %"98141", i32 %V7893.V4299.1437.i) #2
  %V6458.V2865.2426 = add nsw i32 %V6453.V2862.index.tr3, -1
  %1 = icmp sgt i32 %V6453.V2862.index.tr3, 0
  br i1 %1, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define void @V6275.V2684.calc_dirvecs(i32 %V6503.V2912.col, float %V6504.V2913.ry, i32 %V6505.V2914.group_id, i32 %V6506.V2915.index) {
entry:
  %0 = icmp sgt i32 %V6503.V2912.col, -1
  br i1 %0, label %then.lr.ph, label %ifcont

then.lr.ph:                                       ; preds = %entry
  %V6526.V2928.2388 = add i32 %V6506.V2915.index, 2
  br label %then

then:                                             ; preds = %then.lr.ph, %then
  %V6505.V2914.group_id.tr2 = phi i32 [ %V6505.V2914.group_id, %then.lr.ph ], [ %"13145.i", %then ]
  %V6503.V2912.col.tr1 = phi i32 [ %V6503.V2912.col, %then.lr.ph ], [ %V6529.V2921.2391, %then ]
  %1 = sitofp i32 %V6503.V2912.col.tr1 to float
  %V6510.V2937.2375 = fmul float %1, 0x3FC99999A0000000
  %V6512.V2917.rx = fadd float %V6510.V2937.2375, 0xBFECCCCCC0000000
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float %V6512.V2917.rx, float %V6504.V2913.ry, i32 %V6505.V2914.group_id.tr2, i32 %V6506.V2915.index)
  %V6521.V2919.rx2 = fadd float %V6510.V2937.2375, 0x3FB99999A0000000
  tail call void @V6274.V2683.calc_dirvec(i32 0, float 0.000000e+00, float 0.000000e+00, float %V6521.V2919.rx2, float %V6504.V2913.ry, i32 %V6505.V2914.group_id.tr2, i32 %V6526.V2928.2388)
  %V6529.V2921.2391 = add nsw i32 %V6503.V2912.col.tr1, -1
  %V9631.V6040.sum.i = add i32 %V6505.V2914.group_id.tr2, 1
  %2 = icmp sgt i32 %V9631.V6040.sum.i, 4
  %"13146.i" = add i32 %V6505.V2914.group_id.tr2, -4
  %"13145.i" = select i1 %2, i32 %"13146.i", i32 %V9631.V6040.sum.i
  %3 = icmp sgt i32 %V6503.V2912.col.tr1, 0
  br i1 %3, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define void @V6274.V2683.calc_dirvec(i32 %V6532.V2941.icount, float %V6533.V2942.x, float %V6534.V2943.y, float %V6535.V2944.rx, float %V6536.V2945.ry, i32 %V6537.V2946.group_id, i32 %V6538.V2947.index) {
entry:
  %0 = icmp sgt i32 %V6532.V2941.icount, 4
  br i1 %0, label %then, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

then.loopexit:                                    ; preds = %else
  %V6543.V2951.2371.lcssa = phi float [ %V6543.V2951.2371, %else ]
  %V6540.V2949.x2.lcssa = phi float [ %V6540.V2949.x2, %else ]
  br label %then

then:                                             ; preds = %then.loopexit, %entry
  %V6534.V2943.y.tr.lcssa = phi float [ %V6534.V2943.y, %entry ], [ %V6543.V2951.2371.lcssa, %then.loopexit ]
  %V6533.V2942.x.tr.lcssa = phi float [ %V6533.V2942.x, %entry ], [ %V6540.V2949.x2.lcssa, %then.loopexit ]
  %"13208.i" = fmul float %V6533.V2942.x.tr.lcssa, %V6533.V2942.x.tr.lcssa
  %"13208.i2" = fmul float %V6534.V2943.y.tr.lcssa, %V6534.V2943.y.tr.lcssa
  %V6546.V2996.2334 = fadd float %"13208.i", %"13208.i2"
  %V6548.V2995.2336 = fadd float %V6546.V2996.2334, 1.000000e+00
  %1 = tail call float @llvm.sqrt.f32(float %V6548.V2995.2336) #2
  %V6550.V2954.vx = fdiv float %V6533.V2942.x.tr.lcssa, %1
  %V6551.V2955.vy = fdiv float %V6534.V2943.y.tr.lcssa, %1
  %V6553.V2956.vz = fdiv float 1.000000e+00, %1
  %"9856" = getelementptr inbounds i32*, i32** inttoptr (i32 180 to i32**), i32 %V6537.V2946.group_id
  %2 = bitcast i32** %"9856" to i32***
  %"985611" = load i32**, i32*** %2, align 4
  %"9859" = getelementptr inbounds i32*, i32** %"985611", i32 %V6538.V2947.index
  %3 = bitcast i32** %"9859" to i32***
  %"9859231" = load i32**, i32*** %3, align 4
  %"116071.i" = load i32*, i32** %"9859231", align 4
  %4 = bitcast i32* %"116071.i" to float*
  store float %V6550.V2954.vx, float* %4, align 4
  %"13141.i29" = getelementptr inbounds i32, i32* %"116071.i", i32 1
  %5 = bitcast i32* %"13141.i29" to float*
  store float %V6551.V2955.vy, float* %5, align 4
  %"13144.i30" = getelementptr inbounds i32, i32* %"116071.i", i32 2
  %6 = bitcast i32* %"13144.i30" to float*
  store float %V6553.V2956.vz, float* %6, align 4
  %V6559.V2990.2341 = add i32 %V6538.V2947.index, 40
  %"9862" = getelementptr inbounds i32*, i32** %"985611", i32 %V6559.V2990.2341
  %7 = bitcast i32** %"9862" to i32***
  %"9862332" = load i32**, i32*** %7, align 4
  %"116071.i28" = load i32*, i32** %"9862332", align 4
  %"13209.i26" = fsub float 0.000000e+00, %V6551.V2955.vy
  %8 = bitcast i32* %"116071.i28" to float*
  store float %V6550.V2954.vx, float* %8, align 4
  %"13141.i24" = getelementptr inbounds i32, i32* %"116071.i28", i32 1
  %9 = bitcast i32* %"13141.i24" to float*
  store float %V6553.V2956.vz, float* %9, align 4
  %"13144.i25" = getelementptr inbounds i32, i32* %"116071.i28", i32 2
  %10 = bitcast i32* %"13144.i25" to float*
  store float %"13209.i26", float* %10, align 4
  %V6565.V2985.2346 = add i32 %V6538.V2947.index, 80
  %"9865" = getelementptr inbounds i32*, i32** %"985611", i32 %V6565.V2985.2346
  %11 = bitcast i32** %"9865" to i32***
  %"9865433" = load i32**, i32*** %11, align 4
  %"116071.i23" = load i32*, i32** %"9865433", align 4
  %"13209.i21" = fsub float 0.000000e+00, %V6550.V2954.vx
  %12 = bitcast i32* %"116071.i23" to float*
  store float %V6553.V2956.vz, float* %12, align 4
  %"13141.i18" = getelementptr inbounds i32, i32* %"116071.i23", i32 1
  %13 = bitcast i32* %"13141.i18" to float*
  store float %"13209.i21", float* %13, align 4
  %"13144.i19" = getelementptr inbounds i32, i32* %"116071.i23", i32 2
  %14 = bitcast i32* %"13144.i19" to float*
  store float %"13209.i26", float* %14, align 4
  %V6572.V2979.2352 = add i32 %V6538.V2947.index, 1
  %"9868" = getelementptr inbounds i32*, i32** %"985611", i32 %V6572.V2979.2352
  %15 = bitcast i32** %"9868" to i32***
  %"9868534" = load i32**, i32*** %15, align 4
  %"116071.i17" = load i32*, i32** %"9868534", align 4
  %"13209.i13" = fsub float 0.000000e+00, %V6553.V2956.vz
  %16 = bitcast i32* %"116071.i17" to float*
  store float %"13209.i21", float* %16, align 4
  %"13141.i11" = getelementptr inbounds i32, i32* %"116071.i17", i32 1
  %17 = bitcast i32* %"13141.i11" to float*
  store float %"13209.i26", float* %17, align 4
  %"13144.i12" = getelementptr inbounds i32, i32* %"116071.i17", i32 2
  %18 = bitcast i32* %"13144.i12" to float*
  store float %"13209.i13", float* %18, align 4
  %V6580.V2972.2359 = add i32 %V6538.V2947.index, 41
  %"9871" = getelementptr inbounds i32*, i32** %"985611", i32 %V6580.V2972.2359
  %19 = bitcast i32** %"9871" to i32***
  %"9871635" = load i32**, i32*** %19, align 4
  %"116071.i10" = load i32*, i32** %"9871635", align 4
  %20 = bitcast i32* %"116071.i10" to float*
  store float %"13209.i21", float* %20, align 4
  %"13141.i5" = getelementptr inbounds i32, i32* %"116071.i10", i32 1
  %21 = bitcast i32* %"13141.i5" to float*
  store float %"13209.i13", float* %21, align 4
  %"13144.i6" = getelementptr inbounds i32, i32* %"116071.i10", i32 2
  %22 = bitcast i32* %"13144.i6" to float*
  store float %V6551.V2955.vy, float* %22, align 4
  %V6587.V2966.2365 = add i32 %V6538.V2947.index, 81
  %"9874" = getelementptr inbounds i32*, i32** %"985611", i32 %V6587.V2966.2365
  %23 = bitcast i32** %"9874" to i32***
  %"9874736" = load i32**, i32*** %23, align 4
  %"116071.i4" = load i32*, i32** %"9874736", align 4
  %24 = bitcast i32* %"116071.i4" to float*
  store float %"13209.i13", float* %24, align 4
  %"13141.i" = getelementptr inbounds i32, i32* %"116071.i4", i32 1
  %25 = bitcast i32* %"13141.i" to float*
  store float %V6550.V2954.vx, float* %25, align 4
  %"13144.i" = getelementptr inbounds i32, i32* %"116071.i4", i32 2
  %26 = bitcast i32* %"13144.i" to float*
  store float %V6551.V2955.vy, float* %26, align 4
  ret void

else:                                             ; preds = %else.preheader, %else
  %V6534.V2943.y.tr38 = phi float [ %V6543.V2951.2371, %else ], [ %V6534.V2943.y, %else.preheader ]
  %V6532.V2941.icount.tr37 = phi i32 [ %V6542.V2950.2370, %else ], [ %V6532.V2941.icount, %else.preheader ]
  %V6540.V2949.x2 = tail call float @V6273.V2682.adjust_position(float %V6534.V2943.y.tr38, float %V6535.V2944.rx)
  %V6542.V2950.2370 = add nsw i32 %V6532.V2941.icount.tr37, 1
  %V6543.V2951.2371 = tail call float @V6273.V2682.adjust_position(float %V6540.V2949.x2, float %V6536.V2945.ry)
  %27 = icmp sgt i32 %V6532.V2941.icount.tr37, 3
  br i1 %27, label %then.loopexit, label %else
}

define float @V6273.V2682.adjust_position(float %V6591.V3000.h, float %V6592.V3001.ratio) {
entry:
  %V6593.V3009.2326 = fmul float %V6591.V3000.h, %V6591.V3000.h
  %V6595.V3008.2328 = fadd float %V6593.V3009.2326, 0x3FB99999A0000000
  %0 = tail call float @llvm.sqrt.f32(float %V6595.V3008.2328) #2
  %V6598.V3003.tan_h = fdiv float 1.000000e+00, %0
  %1 = fcmp oge float %V6598.V3003.tan_h, 0.000000e+00
  %..i = select i1 %1, float 1.000000e+00, float -1.000000e+00
  %V9648.V6056.x.i = fmul float %V6598.V3003.tan_h, %..i
  %2 = fcmp ugt float %V9648.V6056.x.i, 4.375000e-01
  br i1 %2, label %else2.i, label %then1.i

then1.i:                                          ; preds = %entry
  %"13161.i" = tail call float @kernel_atan(float %V9648.V6056.x.i)
  br label %V6139.V2548.atan.exit

else2.i:                                          ; preds = %entry
  %3 = fcmp ugt float %V9648.V6056.x.i, 1.000000e+00
  br i1 %3, label %else4.i, label %then3.i

then3.i:                                          ; preds = %else2.i
  %V9666.V6074.394.i = fsub float 1.000000e+00, %V9648.V6056.x.i
  %V9668.V6075.395.i = fadd float %V9648.V6056.x.i, 1.000000e+00
  %V9669.V6073.396.i = fdiv float %V9666.V6074.394.i, %V9668.V6075.395.i
  %V9670.V6072.397.i = tail call float @kernel_atan(float %V9669.V6073.396.i)
  %"13163.i" = fsub float 0x3FE921FB40000000, %V9670.V6072.397.i
  br label %V6139.V2548.atan.exit

else4.i:                                          ; preds = %else2.i
  %4 = fcmp ugt float %V9648.V6056.x.i, 0x4003504F40000000
  br i1 %4, label %else6.i, label %then5.i

then5.i:                                          ; preds = %else4.i
  %V9660.V6068.401.i = fadd float %V9648.V6056.x.i, -1.000000e+00
  %V9662.V6069.402.i = fadd float %V9648.V6056.x.i, 1.000000e+00
  %V9663.V6067.403.i = fdiv float %V9660.V6068.401.i, %V9662.V6069.402.i
  %V9664.V6066.404.i = tail call float @kernel_atan(float %V9663.V6067.403.i)
  %"13165.i" = fadd float %V9664.V6066.404.i, 0x3FE921FB40000000
  br label %V6139.V2548.atan.exit

else6.i:                                          ; preds = %else4.i
  %V9657.V6064.406.i = fdiv float 1.000000e+00, %V9648.V6056.x.i
  %V9658.V6063.407.i = tail call float @kernel_atan(float %V9657.V6064.406.i)
  %"13166.i" = fsub float 0x3FF921FB40000000, %V9658.V6063.407.i
  br label %V6139.V2548.atan.exit

V6139.V2548.atan.exit:                            ; preds = %then1.i, %then3.i, %then5.i, %else6.i
  %V9653.V6059.408.i = phi float [ %"13161.i", %then1.i ], [ %"13163.i", %then3.i ], [ %"13165.i", %then5.i ], [ %"13166.i", %else6.i ]
  %"13167.i" = fmul float %..i, %V9653.V6059.408.i
  %V6600.V3006.2330 = fmul float %"13167.i", %V6592.V3001.ratio
  %V6601.V3005.tan_m = tail call float @V6272.V2681.tan(float %V6600.V3006.2330)
  %"9878" = fmul float %0, %V6601.V3005.tan_m
  ret float %"9878"
}

define float @V6272.V2681.tan(float %V6602.V3011.x) {
entry:
  %0 = fcmp oge float %V6602.V3011.x, 0.000000e+00
  %..i = select i1 %0, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i = fmul float %..i, %V6602.V3011.x
  %V9693.V6101.x.i = tail call float @reduction(float %V9692.V6100.x.i)
  %1 = fcmp oge float %V9693.V6101.x.i, 0x400921FB00000000
  %"13183.i" = fsub float -0.000000e+00, %..i
  %V9698.V6105.flag.i = select i1 %1, float %"13183.i", float %..i
  %"13185.i" = fadd float %V9693.V6101.x.i, 0xC00921FB00000000
  %V9699.V6106.x.i = select i1 %1, float %"13185.i", float %V9693.V6101.x.i
  %2 = fcmp oge float %V9699.V6106.x.i, 0x3FF921FB40000000
  %"13187.i" = fsub float 0x400921FB00000000, %V9699.V6106.x.i
  %V9700.V6107.x.i = select i1 %2, float %"13187.i", float %V9699.V6106.x.i
  %3 = fcmp ugt float %V9700.V6107.x.i, 0x3FE921FB40000000
  br i1 %3, label %else11.i, label %then10.i

then10.i:                                         ; preds = %entry
  %4 = fmul float %V9700.V6107.x.i, 0x3FC55555A0000000
  %5 = fmul float %V9700.V6107.x.i, %4
  %6 = fmul float %V9700.V6107.x.i, 0x3FA99999A0000000
  %7 = fmul float %V9700.V6107.x.i, %6
  %8 = fmul float %V9700.V6107.x.i, 0x3F98618480000000
  %9 = fmul float %V9700.V6107.x.i, %8
  %10 = fmul float %V9700.V6107.x.i, 0x3F8C71BB20000000
  %11 = fmul float %V9700.V6107.x.i, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %V9700.V6107.x.i, %18
  br label %V6137.V2546.sin.exit

else11.i:                                         ; preds = %entry
  %V9702.V6109.379.i = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i
  %20 = fmul float %V9702.V6109.379.i, 5.000000e-01
  %21 = fmul float %V9702.V6109.379.i, %20
  %22 = fmul float %V9702.V6109.379.i, 0x3FB55554C0000000
  %23 = fmul float %V9702.V6109.379.i, %22
  %24 = fmul float %V9702.V6109.379.i, 0x3FA1111000000000
  %25 = fmul float %V9702.V6109.379.i, %24
  %26 = fmul float %V9702.V6109.379.i, 0x3F924921C0000000
  %27 = fmul float %V9702.V6109.379.i, %26
  %28 = fsub float 1.000000e+00, %27
  %29 = fmul float %25, %28
  %30 = fsub float 1.000000e+00, %29
  %31 = fmul float %23, %30
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %21, %32
  %34 = fsub float 1.000000e+00, %33
  br label %V6137.V2546.sin.exit

V6137.V2546.sin.exit:                             ; preds = %then10.i, %else11.i
  %V9701.V6108.380.i = phi float [ %19, %then10.i ], [ %34, %else11.i ]
  %"13191.i" = fmul float %V9698.V6105.flag.i, %V9701.V6108.380.i
  %"13169.i" = fsub float -0.000000e+00, %V6602.V3011.x
  %V9674.V6082.x.i = select i1 %0, float %V6602.V3011.x, float %"13169.i"
  %V9675.V6083.x.i = tail call float @reduction(float %V9674.V6082.x.i)
  %35 = fcmp oge float %V9675.V6083.x.i, 0x400921FB00000000
  %..i1 = select i1 %35, float -1.000000e+00, float 1.000000e+00
  %"13172.i" = fadd float %V9675.V6083.x.i, 0xC00921FB00000000
  %V9681.V6088.x.i = select i1 %35, float %"13172.i", float %V9675.V6083.x.i
  %36 = fcmp oge float %V9681.V6088.x.i, 0x3FF921FB40000000
  %"13174.i" = fsub float -0.000000e+00, %..i1
  %V9682.V6089.flag.i = select i1 %36, float %"13174.i", float %..i1
  %"13176.i" = fsub float 0x400921FB00000000, %V9681.V6088.x.i
  %V9683.V6090.x.i = select i1 %36, float %"13176.i", float %V9681.V6088.x.i
  %37 = fcmp ugt float %V9683.V6090.x.i, 0x3FE921FB40000000
  br i1 %37, label %else14.i, label %then13.i

then13.i:                                         ; preds = %V6137.V2546.sin.exit
  %38 = fmul float %V9683.V6090.x.i, 5.000000e-01
  %39 = fmul float %V9683.V6090.x.i, %38
  %40 = fmul float %V9683.V6090.x.i, 0x3FB55554C0000000
  %41 = fmul float %V9683.V6090.x.i, %40
  %42 = fmul float %V9683.V6090.x.i, 0x3FA1111000000000
  %43 = fmul float %V9683.V6090.x.i, %42
  %44 = fmul float %V9683.V6090.x.i, 0x3F924921C0000000
  %45 = fmul float %V9683.V6090.x.i, %44
  %46 = fsub float 1.000000e+00, %45
  %47 = fmul float %43, %46
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %41, %48
  %50 = fsub float 1.000000e+00, %49
  %51 = fmul float %39, %50
  %52 = fsub float 1.000000e+00, %51
  br label %V6138.V2547.cos.exit

else14.i:                                         ; preds = %V6137.V2546.sin.exit
  %V9685.V6092.386.i = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i
  %53 = fmul float %V9685.V6092.386.i, 0x3FC55555A0000000
  %54 = fmul float %V9685.V6092.386.i, %53
  %55 = fmul float %V9685.V6092.386.i, 0x3FA99999A0000000
  %56 = fmul float %V9685.V6092.386.i, %55
  %57 = fmul float %V9685.V6092.386.i, 0x3F98618480000000
  %58 = fmul float %V9685.V6092.386.i, %57
  %59 = fmul float %V9685.V6092.386.i, 0x3F8C71BB20000000
  %60 = fmul float %V9685.V6092.386.i, %59
  %61 = fsub float 1.000000e+00, %60
  %62 = fmul float %58, %61
  %63 = fsub float 1.000000e+00, %62
  %64 = fmul float %56, %63
  %65 = fsub float 1.000000e+00, %64
  %66 = fmul float %54, %65
  %67 = fsub float 1.000000e+00, %66
  %68 = fmul float %V9685.V6092.386.i, %67
  br label %V6138.V2547.cos.exit

V6138.V2547.cos.exit:                             ; preds = %then13.i, %else14.i
  %V9684.V6091.387.i = phi float [ %52, %then13.i ], [ %68, %else14.i ]
  %"13180.i" = fmul float %V9682.V6089.flag.i, %V9684.V6091.387.i
  %"9879" = fdiv float %"13191.i", %"13180.i"
  ret float %"9879"
}

; Function Attrs: nounwind
define void @V6278.V2687.create_dirvec_elements(i32* nocapture %V6471.V2880.d, i32 %V6472.V2881.index) #2 {
entry:
  %0 = icmp sgt i32 %V6472.V2881.index, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %then
  %V6472.V2881.index.tr1 = phi i32 [ %V6478.V2884.2413, %then ], [ %V6472.V2881.index, %then.preheader ]
  %V6482.V2889.v3.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9841.i" = load i32, i32* inttoptr (i32 1 to i32*), align 4
  %"9843.i" = ptrtoint i32* %V6482.V2889.v3.i to i32
  %V6485.V2890.consts.i = tail call i32* @create_array(i32 %"9841.i", i32 %"9843.i") #2
  %"9832.i" = tail call i32* @create_tuple(i32 2) #2
  store i32 %"9843.i", i32* %"9832.i", align 4
  %"9846.i" = ptrtoint i32* %V6485.V2890.consts.i to i32
  %"9847.i" = getelementptr inbounds i32, i32* %"9832.i", i32 1
  store i32 %"9846.i", i32* %"9847.i", align 4
  %"9828" = ptrtoint i32* %"9832.i" to i32
  %"9829" = getelementptr inbounds i32, i32* %V6471.V2880.d, i32 %V6472.V2881.index.tr1
  store i32 %"9828", i32* %"9829", align 4
  %V6478.V2884.2413 = add nsw i32 %V6472.V2881.index.tr1, -1
  %1 = icmp sgt i32 %V6472.V2881.index.tr1, 0
  br i1 %1, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define void @V6194.V2603.read_screen_settings() {
entry:
  %V8886.V5366.646 = tail call float @read_float()
  store float %V8886.V5366.646, float* inttoptr (i32 73 to float*), align 4
  %V8890.V5363.649 = tail call float @read_float()
  store float %V8890.V5363.649, float* inttoptr (i32 77 to float*), align 4
  %V8894.V5360.652 = tail call float @read_float()
  store float %V8894.V5360.652, float* inttoptr (i32 81 to float*), align 4
  %V8897.V5357.654 = tail call float @read_float()
  %"11559.i" = fmul float %V8897.V5357.654, 0x3F91DF46A0000000
  %0 = fcmp oge float %"11559.i", 0.000000e+00
  %"13169.i" = fsub float -0.000000e+00, %"11559.i"
  %V9674.V6082.x.i = select i1 %0, float %"11559.i", float %"13169.i"
  %V9675.V6083.x.i = tail call float @reduction(float %V9674.V6082.x.i)
  %1 = fcmp oge float %V9675.V6083.x.i, 0x400921FB00000000
  %..i4 = select i1 %1, float -1.000000e+00, float 1.000000e+00
  %"13172.i" = fadd float %V9675.V6083.x.i, 0xC00921FB00000000
  %V9681.V6088.x.i = select i1 %1, float %"13172.i", float %V9675.V6083.x.i
  %2 = fcmp oge float %V9681.V6088.x.i, 0x3FF921FB40000000
  %"13174.i" = fsub float -0.000000e+00, %..i4
  %V9682.V6089.flag.i = select i1 %2, float %"13174.i", float %..i4
  %"13176.i" = fsub float 0x400921FB00000000, %V9681.V6088.x.i
  %V9683.V6090.x.i = select i1 %2, float %"13176.i", float %V9681.V6088.x.i
  %3 = fcmp ugt float %V9683.V6090.x.i, 0x3FE921FB40000000
  br i1 %3, label %else14.i, label %then13.i

then13.i:                                         ; preds = %entry
  %4 = fmul float %V9683.V6090.x.i, 5.000000e-01
  %5 = fmul float %V9683.V6090.x.i, %4
  %6 = fmul float %V9683.V6090.x.i, 0x3FB55554C0000000
  %7 = fmul float %V9683.V6090.x.i, %6
  %8 = fmul float %V9683.V6090.x.i, 0x3FA1111000000000
  %9 = fmul float %V9683.V6090.x.i, %8
  %10 = fmul float %V9683.V6090.x.i, 0x3F924921C0000000
  %11 = fmul float %V9683.V6090.x.i, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  br label %V6138.V2547.cos.exit

else14.i:                                         ; preds = %entry
  %V9685.V6092.386.i = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i
  %19 = fmul float %V9685.V6092.386.i, 0x3FC55555A0000000
  %20 = fmul float %V9685.V6092.386.i, %19
  %21 = fmul float %V9685.V6092.386.i, 0x3FA99999A0000000
  %22 = fmul float %V9685.V6092.386.i, %21
  %23 = fmul float %V9685.V6092.386.i, 0x3F98618480000000
  %24 = fmul float %V9685.V6092.386.i, %23
  %25 = fmul float %V9685.V6092.386.i, 0x3F8C71BB20000000
  %26 = fmul float %V9685.V6092.386.i, %25
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %24, %27
  %29 = fsub float 1.000000e+00, %28
  %30 = fmul float %22, %29
  %31 = fsub float 1.000000e+00, %30
  %32 = fmul float %20, %31
  %33 = fsub float 1.000000e+00, %32
  %34 = fmul float %V9685.V6092.386.i, %33
  br label %V6138.V2547.cos.exit

V6138.V2547.cos.exit:                             ; preds = %then13.i, %else14.i
  %V9684.V6091.387.i = phi float [ %18, %then13.i ], [ %34, %else14.i ]
  %"13180.i" = fmul float %V9682.V6089.flag.i, %V9684.V6091.387.i
  %..i5 = select i1 %0, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i6 = fmul float %"11559.i", %..i5
  %V9693.V6101.x.i7 = tail call float @reduction(float %V9692.V6100.x.i6)
  %35 = fcmp oge float %V9693.V6101.x.i7, 0x400921FB00000000
  %"13183.i8" = fsub float -0.000000e+00, %..i5
  %V9698.V6105.flag.i9 = select i1 %35, float %"13183.i8", float %..i5
  %"13185.i10" = fadd float %V9693.V6101.x.i7, 0xC00921FB00000000
  %V9699.V6106.x.i11 = select i1 %35, float %"13185.i10", float %V9693.V6101.x.i7
  %36 = fcmp oge float %V9699.V6106.x.i11, 0x3FF921FB40000000
  %"13187.i12" = fsub float 0x400921FB00000000, %V9699.V6106.x.i11
  %V9700.V6107.x.i13 = select i1 %36, float %"13187.i12", float %V9699.V6106.x.i11
  %37 = fcmp ugt float %V9700.V6107.x.i13, 0x3FE921FB40000000
  br i1 %37, label %else11.i16, label %then10.i14

then10.i14:                                       ; preds = %V6138.V2547.cos.exit
  %38 = fmul float %V9700.V6107.x.i13, 0x3FC55555A0000000
  %39 = fmul float %V9700.V6107.x.i13, %38
  %40 = fmul float %V9700.V6107.x.i13, 0x3FA99999A0000000
  %41 = fmul float %V9700.V6107.x.i13, %40
  %42 = fmul float %V9700.V6107.x.i13, 0x3F98618480000000
  %43 = fmul float %V9700.V6107.x.i13, %42
  %44 = fmul float %V9700.V6107.x.i13, 0x3F8C71BB20000000
  %45 = fmul float %V9700.V6107.x.i13, %44
  %46 = fsub float 1.000000e+00, %45
  %47 = fmul float %43, %46
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %41, %48
  %50 = fsub float 1.000000e+00, %49
  %51 = fmul float %39, %50
  %52 = fsub float 1.000000e+00, %51
  %53 = fmul float %V9700.V6107.x.i13, %52
  br label %V6137.V2546.sin.exit19

else11.i16:                                       ; preds = %V6138.V2547.cos.exit
  %V9702.V6109.379.i15 = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i13
  %54 = fmul float %V9702.V6109.379.i15, 5.000000e-01
  %55 = fmul float %V9702.V6109.379.i15, %54
  %56 = fmul float %V9702.V6109.379.i15, 0x3FB55554C0000000
  %57 = fmul float %V9702.V6109.379.i15, %56
  %58 = fmul float %V9702.V6109.379.i15, 0x3FA1111000000000
  %59 = fmul float %V9702.V6109.379.i15, %58
  %60 = fmul float %V9702.V6109.379.i15, 0x3F924921C0000000
  %61 = fmul float %V9702.V6109.379.i15, %60
  %62 = fsub float 1.000000e+00, %61
  %63 = fmul float %59, %62
  %64 = fsub float 1.000000e+00, %63
  %65 = fmul float %57, %64
  %66 = fsub float 1.000000e+00, %65
  %67 = fmul float %55, %66
  %68 = fsub float 1.000000e+00, %67
  br label %V6137.V2546.sin.exit19

V6137.V2546.sin.exit19:                           ; preds = %then10.i14, %else11.i16
  %V9701.V6108.380.i17 = phi float [ %53, %then10.i14 ], [ %68, %else11.i16 ]
  %"13191.i18" = fmul float %V9698.V6105.flag.i9, %V9701.V6108.380.i17
  %V8902.V5355.656 = tail call float @read_float()
  %"11559.i20" = fmul float %V8902.V5355.656, 0x3F91DF46A0000000
  %69 = fcmp oge float %"11559.i20", 0.000000e+00
  %"13169.i21" = fsub float -0.000000e+00, %"11559.i20"
  %V9674.V6082.x.i22 = select i1 %69, float %"11559.i20", float %"13169.i21"
  %V9675.V6083.x.i23 = tail call float @reduction(float %V9674.V6082.x.i22)
  %70 = fcmp oge float %V9675.V6083.x.i23, 0x400921FB00000000
  %..i24 = select i1 %70, float -1.000000e+00, float 1.000000e+00
  %"13172.i25" = fadd float %V9675.V6083.x.i23, 0xC00921FB00000000
  %V9681.V6088.x.i26 = select i1 %70, float %"13172.i25", float %V9675.V6083.x.i23
  %71 = fcmp oge float %V9681.V6088.x.i26, 0x3FF921FB40000000
  %"13174.i27" = fsub float -0.000000e+00, %..i24
  %V9682.V6089.flag.i28 = select i1 %71, float %"13174.i27", float %..i24
  %"13176.i29" = fsub float 0x400921FB00000000, %V9681.V6088.x.i26
  %V9683.V6090.x.i30 = select i1 %71, float %"13176.i29", float %V9681.V6088.x.i26
  %72 = fcmp ugt float %V9683.V6090.x.i30, 0x3FE921FB40000000
  br i1 %72, label %else14.i33, label %then13.i31

then13.i31:                                       ; preds = %V6137.V2546.sin.exit19
  %73 = fmul float %V9683.V6090.x.i30, 5.000000e-01
  %74 = fmul float %V9683.V6090.x.i30, %73
  %75 = fmul float %V9683.V6090.x.i30, 0x3FB55554C0000000
  %76 = fmul float %V9683.V6090.x.i30, %75
  %77 = fmul float %V9683.V6090.x.i30, 0x3FA1111000000000
  %78 = fmul float %V9683.V6090.x.i30, %77
  %79 = fmul float %V9683.V6090.x.i30, 0x3F924921C0000000
  %80 = fmul float %V9683.V6090.x.i30, %79
  %81 = fsub float 1.000000e+00, %80
  %82 = fmul float %78, %81
  %83 = fsub float 1.000000e+00, %82
  %84 = fmul float %76, %83
  %85 = fsub float 1.000000e+00, %84
  %86 = fmul float %74, %85
  %87 = fsub float 1.000000e+00, %86
  br label %V6138.V2547.cos.exit36

else14.i33:                                       ; preds = %V6137.V2546.sin.exit19
  %V9685.V6092.386.i32 = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i30
  %88 = fmul float %V9685.V6092.386.i32, 0x3FC55555A0000000
  %89 = fmul float %V9685.V6092.386.i32, %88
  %90 = fmul float %V9685.V6092.386.i32, 0x3FA99999A0000000
  %91 = fmul float %V9685.V6092.386.i32, %90
  %92 = fmul float %V9685.V6092.386.i32, 0x3F98618480000000
  %93 = fmul float %V9685.V6092.386.i32, %92
  %94 = fmul float %V9685.V6092.386.i32, 0x3F8C71BB20000000
  %95 = fmul float %V9685.V6092.386.i32, %94
  %96 = fsub float 1.000000e+00, %95
  %97 = fmul float %93, %96
  %98 = fsub float 1.000000e+00, %97
  %99 = fmul float %91, %98
  %100 = fsub float 1.000000e+00, %99
  %101 = fmul float %89, %100
  %102 = fsub float 1.000000e+00, %101
  %103 = fmul float %V9685.V6092.386.i32, %102
  br label %V6138.V2547.cos.exit36

V6138.V2547.cos.exit36:                           ; preds = %then13.i31, %else14.i33
  %V9684.V6091.387.i34 = phi float [ %87, %then13.i31 ], [ %103, %else14.i33 ]
  %"13180.i35" = fmul float %V9682.V6089.flag.i28, %V9684.V6091.387.i34
  %..i = select i1 %69, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i = fmul float %"11559.i20", %..i
  %V9693.V6101.x.i = tail call float @reduction(float %V9692.V6100.x.i)
  %104 = fcmp oge float %V9693.V6101.x.i, 0x400921FB00000000
  %"13183.i" = fsub float -0.000000e+00, %..i
  %V9698.V6105.flag.i = select i1 %104, float %"13183.i", float %..i
  %"13185.i" = fadd float %V9693.V6101.x.i, 0xC00921FB00000000
  %V9699.V6106.x.i = select i1 %104, float %"13185.i", float %V9693.V6101.x.i
  %105 = fcmp oge float %V9699.V6106.x.i, 0x3FF921FB40000000
  %"13187.i" = fsub float 0x400921FB00000000, %V9699.V6106.x.i
  %V9700.V6107.x.i = select i1 %105, float %"13187.i", float %V9699.V6106.x.i
  %106 = fcmp ugt float %V9700.V6107.x.i, 0x3FE921FB40000000
  br i1 %106, label %else11.i, label %then10.i

then10.i:                                         ; preds = %V6138.V2547.cos.exit36
  %107 = fmul float %V9700.V6107.x.i, 0x3FC55555A0000000
  %108 = fmul float %V9700.V6107.x.i, %107
  %109 = fmul float %V9700.V6107.x.i, 0x3FA99999A0000000
  %110 = fmul float %V9700.V6107.x.i, %109
  %111 = fmul float %V9700.V6107.x.i, 0x3F98618480000000
  %112 = fmul float %V9700.V6107.x.i, %111
  %113 = fmul float %V9700.V6107.x.i, 0x3F8C71BB20000000
  %114 = fmul float %V9700.V6107.x.i, %113
  %115 = fsub float 1.000000e+00, %114
  %116 = fmul float %112, %115
  %117 = fsub float 1.000000e+00, %116
  %118 = fmul float %110, %117
  %119 = fsub float 1.000000e+00, %118
  %120 = fmul float %108, %119
  %121 = fsub float 1.000000e+00, %120
  %122 = fmul float %V9700.V6107.x.i, %121
  br label %V6137.V2546.sin.exit

else11.i:                                         ; preds = %V6138.V2547.cos.exit36
  %V9702.V6109.379.i = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i
  %123 = fmul float %V9702.V6109.379.i, 5.000000e-01
  %124 = fmul float %V9702.V6109.379.i, %123
  %125 = fmul float %V9702.V6109.379.i, 0x3FB55554C0000000
  %126 = fmul float %V9702.V6109.379.i, %125
  %127 = fmul float %V9702.V6109.379.i, 0x3FA1111000000000
  %128 = fmul float %V9702.V6109.379.i, %127
  %129 = fmul float %V9702.V6109.379.i, 0x3F924921C0000000
  %130 = fmul float %V9702.V6109.379.i, %129
  %131 = fsub float 1.000000e+00, %130
  %132 = fmul float %128, %131
  %133 = fsub float 1.000000e+00, %132
  %134 = fmul float %126, %133
  %135 = fsub float 1.000000e+00, %134
  %136 = fmul float %124, %135
  %137 = fsub float 1.000000e+00, %136
  br label %V6137.V2546.sin.exit

V6137.V2546.sin.exit:                             ; preds = %then10.i, %else11.i
  %V9701.V6108.380.i = phi float [ %122, %then10.i ], [ %137, %else11.i ]
  %"13191.i" = fmul float %V9698.V6105.flag.i, %V9701.V6108.380.i
  %V8907.V5353.657 = fmul float %"13180.i", %"13191.i"
  %V8909.V5352.660 = fmul float %V8907.V5353.657, 2.000000e+02
  store float %V8909.V5352.660, float* inttoptr (i32 172 to float*), align 4
  %V8913.V5349.663 = fmul float %"13191.i18", -2.000000e+02
  store float %V8913.V5349.663, float* inttoptr (i32 176 to float*), align 16
  %V8916.V5346.664 = fmul float %"13180.i", %"13180.i35"
  %V8918.V5345.667 = fmul float %V8916.V5346.664, 2.000000e+02
  store float %V8918.V5345.667, float* inttoptr (i32 180 to float*), align 4
  store float %"13180.i35", float* inttoptr (i32 166 to float*), align 4
  store i32 0, i32* inttoptr (i32 170 to i32*), align 4
  %"13209.i3" = fsub float 0.000000e+00, %"13191.i"
  store float %"13209.i3", float* inttoptr (i32 174 to float*), align 4
  %"13209.i2" = fsub float 0.000000e+00, %"13191.i18"
  %V8930.V5337.675 = fmul float %"13209.i2", %"13191.i"
  store float %V8930.V5337.675, float* inttoptr (i32 169 to float*), align 4
  %"13209.i1" = fsub float 0.000000e+00, %"13180.i"
  store float %"13209.i1", float* inttoptr (i32 173 to float*), align 4
  %V8937.V5332.680 = fmul float %"13209.i2", %"13180.i35"
  store float %V8937.V5332.680, float* inttoptr (i32 177 to float*), align 4
  %"11535" = load float, float* inttoptr (i32 73 to float*), align 4
  %"11538" = load float, float* inttoptr (i32 172 to float*), align 4
  %V8944.V5326.686 = fsub float %"11535", %"11538"
  store float %V8944.V5326.686, float* inttoptr (i32 76 to float*), align 4
  %"11543" = load float, float* inttoptr (i32 77 to float*), align 4
  %"11546" = load float, float* inttoptr (i32 176 to float*), align 16
  %V8951.V5320.692 = fsub float %"11543", %"11546"
  store float %V8951.V5320.692, float* inttoptr (i32 80 to float*), align 16
  %"11551" = load float, float* inttoptr (i32 81 to float*), align 4
  %"11554" = load float, float* inttoptr (i32 180 to float*), align 4
  %V8958.V5314.698 = fsub float %"11551", %"11554"
  store float %V8958.V5314.698, float* inttoptr (i32 84 to float*), align 4
  ret void
}

define void @V6195.V2604.read_light() {
entry:
  %V8860.V5268.nl = tail call i32 @read_int()
  %V8862.V5289.701 = tail call float @read_float()
  %"11559.i" = fmul float %V8862.V5289.701, 0x3F91DF46A0000000
  %0 = fcmp oge float %"11559.i", 0.000000e+00
  %..i1 = select i1 %0, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i = fmul float %"11559.i", %..i1
  %V9693.V6101.x.i = tail call float @reduction(float %V9692.V6100.x.i)
  %1 = fcmp oge float %V9693.V6101.x.i, 0x400921FB00000000
  %"13183.i" = fsub float -0.000000e+00, %..i1
  %V9698.V6105.flag.i = select i1 %1, float %"13183.i", float %..i1
  %"13185.i" = fadd float %V9693.V6101.x.i, 0xC00921FB00000000
  %V9699.V6106.x.i = select i1 %1, float %"13185.i", float %V9693.V6101.x.i
  %2 = fcmp oge float %V9699.V6106.x.i, 0x3FF921FB40000000
  %"13187.i" = fsub float 0x400921FB00000000, %V9699.V6106.x.i
  %V9700.V6107.x.i = select i1 %2, float %"13187.i", float %V9699.V6106.x.i
  %3 = fcmp ugt float %V9700.V6107.x.i, 0x3FE921FB40000000
  br i1 %3, label %else11.i, label %then10.i

then10.i:                                         ; preds = %entry
  %4 = fmul float %V9700.V6107.x.i, 0x3FC55555A0000000
  %5 = fmul float %V9700.V6107.x.i, %4
  %6 = fmul float %V9700.V6107.x.i, 0x3FA99999A0000000
  %7 = fmul float %V9700.V6107.x.i, %6
  %8 = fmul float %V9700.V6107.x.i, 0x3F98618480000000
  %9 = fmul float %V9700.V6107.x.i, %8
  %10 = fmul float %V9700.V6107.x.i, 0x3F8C71BB20000000
  %11 = fmul float %V9700.V6107.x.i, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  %19 = fmul float %V9700.V6107.x.i, %18
  br label %V6137.V2546.sin.exit

else11.i:                                         ; preds = %entry
  %V9702.V6109.379.i = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i
  %20 = fmul float %V9702.V6109.379.i, 5.000000e-01
  %21 = fmul float %V9702.V6109.379.i, %20
  %22 = fmul float %V9702.V6109.379.i, 0x3FB55554C0000000
  %23 = fmul float %V9702.V6109.379.i, %22
  %24 = fmul float %V9702.V6109.379.i, 0x3FA1111000000000
  %25 = fmul float %V9702.V6109.379.i, %24
  %26 = fmul float %V9702.V6109.379.i, 0x3F924921C0000000
  %27 = fmul float %V9702.V6109.379.i, %26
  %28 = fsub float 1.000000e+00, %27
  %29 = fmul float %25, %28
  %30 = fsub float 1.000000e+00, %29
  %31 = fmul float %23, %30
  %32 = fsub float 1.000000e+00, %31
  %33 = fmul float %21, %32
  %34 = fsub float 1.000000e+00, %33
  br label %V6137.V2546.sin.exit

V6137.V2546.sin.exit:                             ; preds = %then10.i, %else11.i
  %V9701.V6108.380.i = phi float [ %19, %then10.i ], [ %34, %else11.i ]
  %"13191.i" = fmul float %V9698.V6105.flag.i, %V9701.V6108.380.i
  %"13209.i" = fsub float 0.000000e+00, %"13191.i"
  store float %"13209.i", float* inttoptr (i32 83 to float*), align 4
  %V8869.V5285.705 = tail call float @read_float()
  %"11559.i17" = fmul float %V8869.V5285.705, 0x3F91DF46A0000000
  %"13169.i18" = fsub float -0.000000e+00, %"11559.i"
  %V9674.V6082.x.i19 = select i1 %0, float %"11559.i", float %"13169.i18"
  %V9675.V6083.x.i20 = tail call float @reduction(float %V9674.V6082.x.i19)
  %35 = fcmp oge float %V9675.V6083.x.i20, 0x400921FB00000000
  %..i21 = select i1 %35, float -1.000000e+00, float 1.000000e+00
  %"13172.i22" = fadd float %V9675.V6083.x.i20, 0xC00921FB00000000
  %V9681.V6088.x.i23 = select i1 %35, float %"13172.i22", float %V9675.V6083.x.i20
  %36 = fcmp oge float %V9681.V6088.x.i23, 0x3FF921FB40000000
  %"13174.i24" = fsub float -0.000000e+00, %..i21
  %V9682.V6089.flag.i25 = select i1 %36, float %"13174.i24", float %..i21
  %"13176.i26" = fsub float 0x400921FB00000000, %V9681.V6088.x.i23
  %V9683.V6090.x.i27 = select i1 %36, float %"13176.i26", float %V9681.V6088.x.i23
  %37 = fcmp ugt float %V9683.V6090.x.i27, 0x3FE921FB40000000
  br i1 %37, label %else14.i30, label %then13.i28

then13.i28:                                       ; preds = %V6137.V2546.sin.exit
  %38 = fmul float %V9683.V6090.x.i27, 5.000000e-01
  %39 = fmul float %V9683.V6090.x.i27, %38
  %40 = fmul float %V9683.V6090.x.i27, 0x3FB55554C0000000
  %41 = fmul float %V9683.V6090.x.i27, %40
  %42 = fmul float %V9683.V6090.x.i27, 0x3FA1111000000000
  %43 = fmul float %V9683.V6090.x.i27, %42
  %44 = fmul float %V9683.V6090.x.i27, 0x3F924921C0000000
  %45 = fmul float %V9683.V6090.x.i27, %44
  %46 = fsub float 1.000000e+00, %45
  %47 = fmul float %43, %46
  %48 = fsub float 1.000000e+00, %47
  %49 = fmul float %41, %48
  %50 = fsub float 1.000000e+00, %49
  %51 = fmul float %39, %50
  %52 = fsub float 1.000000e+00, %51
  br label %V6138.V2547.cos.exit33

else14.i30:                                       ; preds = %V6137.V2546.sin.exit
  %V9685.V6092.386.i29 = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i27
  %53 = fmul float %V9685.V6092.386.i29, 0x3FC55555A0000000
  %54 = fmul float %V9685.V6092.386.i29, %53
  %55 = fmul float %V9685.V6092.386.i29, 0x3FA99999A0000000
  %56 = fmul float %V9685.V6092.386.i29, %55
  %57 = fmul float %V9685.V6092.386.i29, 0x3F98618480000000
  %58 = fmul float %V9685.V6092.386.i29, %57
  %59 = fmul float %V9685.V6092.386.i29, 0x3F8C71BB20000000
  %60 = fmul float %V9685.V6092.386.i29, %59
  %61 = fsub float 1.000000e+00, %60
  %62 = fmul float %58, %61
  %63 = fsub float 1.000000e+00, %62
  %64 = fmul float %56, %63
  %65 = fsub float 1.000000e+00, %64
  %66 = fmul float %54, %65
  %67 = fsub float 1.000000e+00, %66
  %68 = fmul float %V9685.V6092.386.i29, %67
  br label %V6138.V2547.cos.exit33

V6138.V2547.cos.exit33:                           ; preds = %then13.i28, %else14.i30
  %V9684.V6091.387.i31 = phi float [ %52, %then13.i28 ], [ %68, %else14.i30 ]
  %"13180.i32" = fmul float %V9682.V6089.flag.i25, %V9684.V6091.387.i31
  %69 = fcmp oge float %"11559.i17", 0.000000e+00
  %..i2 = select i1 %69, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i3 = fmul float %"11559.i17", %..i2
  %V9693.V6101.x.i4 = tail call float @reduction(float %V9692.V6100.x.i3)
  %70 = fcmp oge float %V9693.V6101.x.i4, 0x400921FB00000000
  %"13183.i5" = fsub float -0.000000e+00, %..i2
  %V9698.V6105.flag.i6 = select i1 %70, float %"13183.i5", float %..i2
  %"13185.i7" = fadd float %V9693.V6101.x.i4, 0xC00921FB00000000
  %V9699.V6106.x.i8 = select i1 %70, float %"13185.i7", float %V9693.V6101.x.i4
  %71 = fcmp oge float %V9699.V6106.x.i8, 0x3FF921FB40000000
  %"13187.i9" = fsub float 0x400921FB00000000, %V9699.V6106.x.i8
  %V9700.V6107.x.i10 = select i1 %71, float %"13187.i9", float %V9699.V6106.x.i8
  %72 = fcmp ugt float %V9700.V6107.x.i10, 0x3FE921FB40000000
  br i1 %72, label %else11.i13, label %then10.i11

then10.i11:                                       ; preds = %V6138.V2547.cos.exit33
  %73 = fmul float %V9700.V6107.x.i10, 0x3FC55555A0000000
  %74 = fmul float %V9700.V6107.x.i10, %73
  %75 = fmul float %V9700.V6107.x.i10, 0x3FA99999A0000000
  %76 = fmul float %V9700.V6107.x.i10, %75
  %77 = fmul float %V9700.V6107.x.i10, 0x3F98618480000000
  %78 = fmul float %V9700.V6107.x.i10, %77
  %79 = fmul float %V9700.V6107.x.i10, 0x3F8C71BB20000000
  %80 = fmul float %V9700.V6107.x.i10, %79
  %81 = fsub float 1.000000e+00, %80
  %82 = fmul float %78, %81
  %83 = fsub float 1.000000e+00, %82
  %84 = fmul float %76, %83
  %85 = fsub float 1.000000e+00, %84
  %86 = fmul float %74, %85
  %87 = fsub float 1.000000e+00, %86
  %88 = fmul float %V9700.V6107.x.i10, %87
  br label %V6137.V2546.sin.exit16

else11.i13:                                       ; preds = %V6138.V2547.cos.exit33
  %V9702.V6109.379.i12 = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i10
  %89 = fmul float %V9702.V6109.379.i12, 5.000000e-01
  %90 = fmul float %V9702.V6109.379.i12, %89
  %91 = fmul float %V9702.V6109.379.i12, 0x3FB55554C0000000
  %92 = fmul float %V9702.V6109.379.i12, %91
  %93 = fmul float %V9702.V6109.379.i12, 0x3FA1111000000000
  %94 = fmul float %V9702.V6109.379.i12, %93
  %95 = fmul float %V9702.V6109.379.i12, 0x3F924921C0000000
  %96 = fmul float %V9702.V6109.379.i12, %95
  %97 = fsub float 1.000000e+00, %96
  %98 = fmul float %94, %97
  %99 = fsub float 1.000000e+00, %98
  %100 = fmul float %92, %99
  %101 = fsub float 1.000000e+00, %100
  %102 = fmul float %90, %101
  %103 = fsub float 1.000000e+00, %102
  br label %V6137.V2546.sin.exit16

V6137.V2546.sin.exit16:                           ; preds = %then10.i11, %else11.i13
  %V9701.V6108.380.i14 = phi float [ %88, %then10.i11 ], [ %103, %else11.i13 ]
  %"13191.i15" = fmul float %V9698.V6105.flag.i6, %V9701.V6108.380.i14
  %V8874.V5284.707 = fmul float %"13180.i32", %"13191.i15"
  store float %V8874.V5284.707, float* inttoptr (i32 79 to float*), align 4
  %"13169.i" = fsub float -0.000000e+00, %"11559.i17"
  %V9674.V6082.x.i = select i1 %69, float %"11559.i17", float %"13169.i"
  %V9675.V6083.x.i = tail call float @reduction(float %V9674.V6082.x.i)
  %104 = fcmp oge float %V9675.V6083.x.i, 0x400921FB00000000
  %..i = select i1 %104, float -1.000000e+00, float 1.000000e+00
  %"13172.i" = fadd float %V9675.V6083.x.i, 0xC00921FB00000000
  %V9681.V6088.x.i = select i1 %104, float %"13172.i", float %V9675.V6083.x.i
  %105 = fcmp oge float %V9681.V6088.x.i, 0x3FF921FB40000000
  %"13174.i" = fsub float -0.000000e+00, %..i
  %V9682.V6089.flag.i = select i1 %105, float %"13174.i", float %..i
  %"13176.i" = fsub float 0x400921FB00000000, %V9681.V6088.x.i
  %V9683.V6090.x.i = select i1 %105, float %"13176.i", float %V9681.V6088.x.i
  %106 = fcmp ugt float %V9683.V6090.x.i, 0x3FE921FB40000000
  br i1 %106, label %else14.i, label %then13.i

then13.i:                                         ; preds = %V6137.V2546.sin.exit16
  %107 = fmul float %V9683.V6090.x.i, 5.000000e-01
  %108 = fmul float %V9683.V6090.x.i, %107
  %109 = fmul float %V9683.V6090.x.i, 0x3FB55554C0000000
  %110 = fmul float %V9683.V6090.x.i, %109
  %111 = fmul float %V9683.V6090.x.i, 0x3FA1111000000000
  %112 = fmul float %V9683.V6090.x.i, %111
  %113 = fmul float %V9683.V6090.x.i, 0x3F924921C0000000
  %114 = fmul float %V9683.V6090.x.i, %113
  %115 = fsub float 1.000000e+00, %114
  %116 = fmul float %112, %115
  %117 = fsub float 1.000000e+00, %116
  %118 = fmul float %110, %117
  %119 = fsub float 1.000000e+00, %118
  %120 = fmul float %108, %119
  %121 = fsub float 1.000000e+00, %120
  br label %V6138.V2547.cos.exit

else14.i:                                         ; preds = %V6137.V2546.sin.exit16
  %V9685.V6092.386.i = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i
  %122 = fmul float %V9685.V6092.386.i, 0x3FC55555A0000000
  %123 = fmul float %V9685.V6092.386.i, %122
  %124 = fmul float %V9685.V6092.386.i, 0x3FA99999A0000000
  %125 = fmul float %V9685.V6092.386.i, %124
  %126 = fmul float %V9685.V6092.386.i, 0x3F98618480000000
  %127 = fmul float %V9685.V6092.386.i, %126
  %128 = fmul float %V9685.V6092.386.i, 0x3F8C71BB20000000
  %129 = fmul float %V9685.V6092.386.i, %128
  %130 = fsub float 1.000000e+00, %129
  %131 = fmul float %127, %130
  %132 = fsub float 1.000000e+00, %131
  %133 = fmul float %125, %132
  %134 = fsub float 1.000000e+00, %133
  %135 = fmul float %123, %134
  %136 = fsub float 1.000000e+00, %135
  %137 = fmul float %V9685.V6092.386.i, %136
  br label %V6138.V2547.cos.exit

V6138.V2547.cos.exit:                             ; preds = %then13.i, %else14.i
  %V9684.V6091.387.i = phi float [ %121, %then13.i ], [ %137, %else14.i ]
  %"13180.i" = fmul float %V9682.V6089.flag.i, %V9684.V6091.387.i
  %V8878.V5282.709 = fmul float %"13180.i32", %"13180.i"
  store float %V8878.V5282.709, float* inttoptr (i32 87 to float*), align 4
  %V8882.V5279.712 = tail call float @read_float()
  store float %V8882.V5279.712, float* inttoptr (i32 82 to float*), align 4
  ret void
}

define void @V6199.V2608.read_all_object() {
entry:
  br label %then.i

then.i:                                           ; preds = %else.i, %entry
  %V8603.V5012.n.tr2.i = phi i32 [ %V8608.V5016.902.i, %else.i ], [ 0, %entry ]
  %V8605.V5014.904.i = tail call i1 @V6197.V2606.read_nth_object(i32 %V8603.V5012.n.tr2.i)
  br i1 %V8605.V5014.904.i, label %else.i, label %then1.i

then1.i:                                          ; preds = %then.i
  %V8603.V5012.n.tr2.i.lcssa = phi i32 [ %V8603.V5012.n.tr2.i, %then.i ]
  store i32 %V8603.V5012.n.tr2.i.lcssa, i32* inttoptr (i32 1 to i32*), align 4
  br label %V6198.V2607.read_object.exit

else.i:                                           ; preds = %then.i
  %V8608.V5016.902.i = add nuw nsw i32 %V8603.V5012.n.tr2.i, 1
  %0 = icmp slt i32 %V8608.V5016.902.i, 60
  br i1 %0, label %then.i, label %V6198.V2607.read_object.exit.loopexit

V6198.V2607.read_object.exit.loopexit:            ; preds = %else.i
  br label %V6198.V2607.read_object.exit

V6198.V2607.read_object.exit:                     ; preds = %V6198.V2607.read_object.exit.loopexit, %then1.i
  ret void
}

define void @V6202.V2611.read_and_network(i32 %V8569.V4978.n) {
entry:
  %V8571.V4979.net1 = tail call i32* @V6200.V2609.read_net_item(i32 0)
  %"1130812" = load i32, i32* %V8571.V4979.net1, align 4
  %0 = icmp eq i32 %"1130812", -1
  br i1 %0, label %ifcont, label %else.preheader

else.preheader:                                   ; preds = %entry
  br label %else

else:                                             ; preds = %else.preheader, %else
  %V8571.V4979.net4 = phi i32* [ %V8571.V4979.net, %else ], [ %V8571.V4979.net1, %else.preheader ]
  %V8569.V4978.n.tr3 = phi i32 [ %V8577.V4983.927, %else ], [ %V8569.V4978.n, %else.preheader ]
  %"11312" = ptrtoint i32* %V8571.V4979.net4 to i32
  %"11313" = getelementptr inbounds i32, i32* inttoptr (i32 84 to i32*), i32 %V8569.V4978.n.tr3
  store i32 %"11312", i32* %"11313", align 4
  %V8577.V4983.927 = add i32 %V8569.V4978.n.tr3, 1
  %V8571.V4979.net = tail call i32* @V6200.V2609.read_net_item(i32 0)
  %"113081" = load i32, i32* %V8571.V4979.net, align 4
  %1 = icmp eq i32 %"113081", -1
  br i1 %1, label %ifcont.loopexit, label %else

ifcont.loopexit:                                  ; preds = %else
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret void
}

define i32* @V6201.V2610.read_or_network(i32 %V8578.V4987.length) {
entry:
  %V8580.V4988.net = tail call i32* @V6200.V2609.read_net_item(i32 0)
  %"113161" = load i32, i32* %V8580.V4988.net, align 4
  %0 = icmp eq i32 %"113161", -1
  %V8589.V4995.919 = add i32 %V8578.V4987.length, 1
  br i1 %0, label %then, label %else

then:                                             ; preds = %entry
  %"11320" = ptrtoint i32* %V8580.V4988.net to i32
  %"11319" = tail call i32* @create_array(i32 %V8589.V4995.919, i32 %"11320")
  ret i32* %"11319"

else:                                             ; preds = %entry
  %V8586.V4991.v = tail call i32* @V6201.V2610.read_or_network(i32 %V8589.V4995.919)
  %"11321" = ptrtoint i32* %V8580.V4988.net to i32
  %"11322" = getelementptr inbounds i32, i32* %V8586.V4991.v, i32 %V8578.V4987.length
  store i32 %"11321", i32* %"11322", align 4
  ret i32* %V8586.V4991.v
}

define i32* @V6200.V2609.read_net_item(i32 %V8590.V4999.length) {
entry:
  %V8592.V5000.item = tail call i32 @read_int()
  %0 = icmp eq i32 %V8592.V5000.item, -1
  %V8599.V5006.910 = add i32 %V8590.V4999.length, 1
  br i1 %0, label %then, label %else

then:                                             ; preds = %entry
  %"11325" = tail call i32* @create_array(i32 %V8599.V5006.910, i32 -1)
  ret i32* %"11325"

else:                                             ; preds = %entry
  %V8596.V5002.v = tail call i32* @V6200.V2609.read_net_item(i32 %V8599.V5006.910)
  %"11328" = getelementptr inbounds i32, i32* %V8596.V5002.v, i32 %V8590.V4999.length
  store i32 %V8592.V5000.item, i32* %"11328", align 4
  ret i32* %V8596.V5002.v
}

declare i32 @read_int()

define void @V6198.V2607.read_object(i32 %V8603.V5012.n) {
entry:
  %0 = icmp slt i32 %V8603.V5012.n, 60
  br i1 %0, label %then.preheader, label %ifcont3

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %else
  %V8603.V5012.n.tr2 = phi i32 [ %V8608.V5016.902, %else ], [ %V8603.V5012.n, %then.preheader ]
  %V8605.V5014.904 = tail call i1 @V6197.V2606.read_nth_object(i32 %V8603.V5012.n.tr2)
  br i1 %V8605.V5014.904, label %else, label %then1

then1:                                            ; preds = %then
  %V8603.V5012.n.tr2.lcssa = phi i32 [ %V8603.V5012.n.tr2, %then ]
  store i32 %V8603.V5012.n.tr2.lcssa, i32* inttoptr (i32 1 to i32*), align 4
  br label %ifcont3

else:                                             ; preds = %then
  %V8608.V5016.902 = add nsw i32 %V8603.V5012.n.tr2, 1
  %1 = icmp slt i32 %V8608.V5016.902, 60
  br i1 %1, label %then, label %ifcont3.loopexit

ifcont3.loopexit:                                 ; preds = %else
  br label %ifcont3

ifcont3:                                          ; preds = %ifcont3.loopexit, %entry, %then1
  ret void
}

define i1 @V6197.V2606.read_nth_object(i32 %V8610.V5019.n) {
entry:
  %V8612.V5020.texture = tail call i32 @read_int()
  %V8615.V5021.898 = icmp eq i32 %V8612.V5020.texture, -1
  br i1 %V8615.V5021.898, label %ifcont36, label %else2

else2:                                            ; preds = %entry
  %V8618.V5023.form = tail call i32 @read_int()
  %V8620.V5024.refltype = tail call i32 @read_int()
  %V8622.V5025.isrot_p = tail call i32 @read_int()
  %V8625.V5026.abc = tail call i32* @create_array(i32 3, i32 0)
  %V8628.V5145.810 = tail call float @read_float()
  %0 = bitcast i32* %V8625.V5026.abc to float*
  store float %V8628.V5145.810, float* %0, align 4
  %V8632.V5142.813 = tail call float @read_float()
  %"11371" = getelementptr inbounds i32, i32* %V8625.V5026.abc, i32 1
  %1 = bitcast i32* %"11371" to float*
  store float %V8632.V5142.813, float* %1, align 4
  %V8636.V5139.816 = tail call float @read_float()
  %"11373" = getelementptr inbounds i32, i32* %V8625.V5026.abc, i32 2
  %2 = bitcast i32* %"11373" to float*
  store float %V8636.V5139.816, float* %2, align 4
  %V8640.V5030.xyz = tail call i32* @create_array(i32 3, i32 0)
  %V8643.V5134.821 = tail call float @read_float()
  %3 = bitcast i32* %V8640.V5030.xyz to float*
  store float %V8643.V5134.821, float* %3, align 4
  %V8647.V5131.824 = tail call float @read_float()
  %"11378" = getelementptr inbounds i32, i32* %V8640.V5030.xyz, i32 1
  %4 = bitcast i32* %"11378" to float*
  store float %V8647.V5131.824, float* %4, align 4
  %V8651.V5128.827 = tail call float @read_float()
  %"11380" = getelementptr inbounds i32, i32* %V8640.V5030.xyz, i32 2
  %5 = bitcast i32* %"11380" to float*
  store float %V8651.V5128.827, float* %5, align 4
  %V8654.V5125.829 = tail call float @read_float()
  %6 = fcmp olt float %V8654.V5125.829, 0.000000e+00
  %V8658.V5035.reflparam = tail call i32* @create_array(i32 2, i32 0)
  %V8661.V5121.834 = tail call float @read_float()
  %7 = bitcast i32* %V8658.V5035.reflparam to float*
  store float %V8661.V5121.834, float* %7, align 4
  %V8665.V5118.837 = tail call float @read_float()
  %"11385" = getelementptr inbounds i32, i32* %V8658.V5035.reflparam, i32 1
  %8 = bitcast i32* %"11385" to float*
  store float %V8665.V5118.837, float* %8, align 4
  %V8669.V5038.color = tail call i32* @create_array(i32 3, i32 0)
  %V8672.V5113.842 = tail call float @read_float()
  %9 = bitcast i32* %V8669.V5038.color to float*
  store float %V8672.V5113.842, float* %9, align 4
  %V8676.V5110.845 = tail call float @read_float()
  %"11390" = getelementptr inbounds i32, i32* %V8669.V5038.color, i32 1
  %10 = bitcast i32* %"11390" to float*
  store float %V8676.V5110.845, float* %10, align 4
  %V8680.V5107.848 = tail call float @read_float()
  %"11392" = getelementptr inbounds i32, i32* %V8669.V5038.color, i32 2
  %11 = bitcast i32* %"11392" to float*
  store float %V8680.V5107.848, float* %11, align 4
  %V8684.V5042.rotation = tail call i32* @create_array(i32 3, i32 0)
  %V8687.V5086.865 = icmp ne i32 %V8622.V5025.isrot_p, 0
  br i1 %V8687.V5086.865, label %else7, label %ifcont8

else7:                                            ; preds = %else2
  %V8734.V5100.854 = tail call float @read_float()
  %"11559.i" = fmul float %V8734.V5100.854, 0x3F91DF46A0000000
  %12 = bitcast i32* %V8684.V5042.rotation to float*
  store float %"11559.i", float* %12, align 4
  %V8739.V5096.858 = tail call float @read_float()
  %"11559.i13" = fmul float %V8739.V5096.858, 0x3F91DF46A0000000
  %"11400" = getelementptr inbounds i32, i32* %V8684.V5042.rotation, i32 1
  %13 = bitcast i32* %"11400" to float*
  store float %"11559.i13", float* %13, align 4
  %V8744.V5092.862 = tail call float @read_float()
  %"11559.i14" = fmul float %V8744.V5092.862, 0x3F91DF46A0000000
  %"11403" = getelementptr inbounds i32, i32* %V8684.V5042.rotation, i32 2
  %14 = bitcast i32* %"11403" to float*
  store float %"11559.i14", float* %14, align 4
  br label %ifcont8

ifcont8:                                          ; preds = %else2, %else7
  %15 = icmp eq i32 %V8618.V5023.form, 2
  %.V8655.V5034.m_invert = or i1 %15, %6
  %V8694.V5045.ctbl = tail call i32* @create_array(i32 4, i32 0)
  %"11338" = tail call i32* @create_tuple(i32 11)
  store i32 %V8612.V5020.texture, i32* %"11338", align 4
  %"11410" = getelementptr inbounds i32, i32* %"11338", i32 1
  store i32 %V8618.V5023.form, i32* %"11410", align 4
  %"11412" = getelementptr inbounds i32, i32* %"11338", i32 2
  store i32 %V8620.V5024.refltype, i32* %"11412", align 4
  %"11414" = getelementptr inbounds i32, i32* %"11338", i32 3
  store i32 %V8622.V5025.isrot_p, i32* %"11414", align 4
  %"11415" = ptrtoint i32* %V8625.V5026.abc to i32
  %"11416" = getelementptr inbounds i32, i32* %"11338", i32 4
  store i32 %"11415", i32* %"11416", align 4
  %"11417" = ptrtoint i32* %V8640.V5030.xyz to i32
  %"11418" = getelementptr inbounds i32, i32* %"11338", i32 5
  store i32 %"11417", i32* %"11418", align 4
  %"11419" = zext i1 %.V8655.V5034.m_invert to i32
  %"11420" = getelementptr inbounds i32, i32* %"11338", i32 6
  store i32 %"11419", i32* %"11420", align 4
  %"11421" = ptrtoint i32* %V8658.V5035.reflparam to i32
  %"11422" = getelementptr inbounds i32, i32* %"11338", i32 7
  store i32 %"11421", i32* %"11422", align 4
  %"11423" = ptrtoint i32* %V8669.V5038.color to i32
  %"11424" = getelementptr inbounds i32, i32* %"11338", i32 8
  store i32 %"11423", i32* %"11424", align 4
  %"11425" = ptrtoint i32* %V8684.V5042.rotation to i32
  %"11426" = getelementptr inbounds i32, i32* %"11338", i32 9
  store i32 %"11425", i32* %"11426", align 4
  %"11427" = ptrtoint i32* %V8694.V5045.ctbl to i32
  %"11428" = getelementptr inbounds i32, i32* %"11338", i32 10
  store i32 %"11427", i32* %"11428", align 4
  %"11429" = ptrtoint i32* %"11338" to i32
  %"11430" = getelementptr inbounds i32, i32* inttoptr (i32 13 to i32*), i32 %V8610.V5019.n
  store i32 %"11429", i32* %"11430", align 4
  switch i32 %V8618.V5023.form, label %ifcont29 [
    i32 3, label %then12
    i32 2, label %then26
  ]

then12:                                           ; preds = %ifcont8
  %"1143213" = load float, float* %0, align 4
  %16 = fcmp oeq float %"1143213", 0.000000e+00
  br i1 %16, label %ifcont16, label %then14

then14:                                           ; preds = %then12
  %17 = fcmp ogt float %"1143213", 0.000000e+00
  %..i11 = select i1 %17, float 1.000000e+00, float -1.000000e+00
  %"13208.i10" = fmul float %"1143213", %"1143213"
  %"11434" = fdiv float %..i11, %"13208.i10"
  %phitmp = bitcast float %"11434" to i32
  br label %ifcont16

ifcont16:                                         ; preds = %then12, %then14
  %V8711.V5077.877 = phi i32 [ %phitmp, %then14 ], [ 0, %then12 ]
  store i32 %V8711.V5077.877, i32* %V8625.V5026.abc, align 4
  %"1143917" = load float, float* %1, align 4
  %18 = fcmp oeq float %"1143917", 0.000000e+00
  br i1 %18, label %ifcont20, label %then18

then18:                                           ; preds = %ifcont16
  %19 = fcmp ogt float %"1143917", 0.000000e+00
  %..i8 = select i1 %19, float 1.000000e+00, float -1.000000e+00
  %"13208.i7" = fmul float %"1143917", %"1143917"
  %"11441" = fdiv float %..i8, %"13208.i7"
  %phitmp4 = bitcast float %"11441" to i32
  br label %ifcont20

ifcont20:                                         ; preds = %ifcont16, %then18
  %V8718.V5070.884 = phi i32 [ %phitmp4, %then18 ], [ 0, %ifcont16 ]
  store i32 %V8718.V5070.884, i32* %"11371", align 4
  %"1144621" = load float, float* %2, align 4
  %20 = fcmp oeq float %"1144621", 0.000000e+00
  br i1 %20, label %ifcont24, label %then22

then22:                                           ; preds = %ifcont20
  %21 = fcmp ogt float %"1144621", 0.000000e+00
  %..i = select i1 %21, float 1.000000e+00, float -1.000000e+00
  %"13208.i" = fmul float %"1144621", %"1144621"
  %"11448" = fdiv float %..i, %"13208.i"
  %phitmp6 = bitcast float %"11448" to i32
  br label %ifcont24

ifcont24:                                         ; preds = %ifcont20, %then22
  %V8725.V5063.891 = phi i32 [ %phitmp6, %then22 ], [ 0, %ifcont20 ]
  store i32 %V8725.V5063.891, i32* %"11373", align 4
  br label %ifcont29

then26:                                           ; preds = %ifcont8
  %"130421.i" = load float, float* %0, align 4
  %"13208.i.i" = fmul float %"130421.i", %"130421.i"
  %"130452.i" = load float, float* %1, align 4
  %"13208.i4.i" = fmul float %"130452.i", %"130452.i"
  %V9522.V5947.485.i = fadd float %"13208.i.i", %"13208.i4.i"
  %"130483.i" = load float, float* %2, align 4
  %"13208.i3.i" = fmul float %"130483.i", %"130483.i"
  %V9526.V5946.487.i = fadd float %V9522.V5947.485.i, %"13208.i3.i"
  %22 = tail call float @llvm.sqrt.f32(float %V9526.V5946.487.i) #2
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %V6150.V2559.vecunit_sgn.exit, label %then.i

then.i:                                           ; preds = %then26
  br i1 %6, label %then4.i, label %else.i

then4.i:                                          ; preds = %then.i
  %"13051.i" = fdiv float 1.000000e+00, %22
  br label %V6150.V2559.vecunit_sgn.exit

else.i:                                           ; preds = %then.i
  %"13052.i" = fdiv float -1.000000e+00, %22
  br label %V6150.V2559.vecunit_sgn.exit

V6150.V2559.vecunit_sgn.exit:                     ; preds = %then26, %then4.i, %else.i
  %V9530.V5926.il.i = phi float [ %"13051.i", %then4.i ], [ %"13052.i", %else.i ], [ 1.000000e+00, %then26 ]
  %V9534.V5938.496.i = fmul float %"130421.i", %V9530.V5926.il.i
  store float %V9534.V5938.496.i, float* %0, align 4
  %V9539.V5934.500.i = fmul float %"130452.i", %V9530.V5926.il.i
  store float %V9539.V5934.500.i, float* %1, align 4
  %V9544.V5930.504.i = fmul float %"130483.i", %V9530.V5926.il.i
  store float %V9544.V5930.504.i, float* %2, align 4
  br label %ifcont29

ifcont29:                                         ; preds = %V6150.V2559.vecunit_sgn.exit, %ifcont8, %ifcont24
  br i1 %V8687.V5086.865, label %else34, label %ifcont36

else34:                                           ; preds = %ifcont29
  tail call void @V6196.V2605.rotate_quadratic_matrix(i32* %V8625.V5026.abc, i32* %V8684.V5042.rotation)
  br label %ifcont36

ifcont36:                                         ; preds = %entry, %ifcont29, %else34
  %"11365" = phi i1 [ false, %entry ], [ true, %ifcont29 ], [ true, %else34 ]
  ret i1 %"11365"
}

declare float @read_float()

; Function Attrs: norecurse nounwind readnone
define float @V6193.V2602.rad(float %V8959.V5368.x) #3 {
entry:
  %"11559" = fmul float %V8959.V5368.x, 0x3F91DF46A0000000
  ret float %"11559"
}

define void @V6196.V2605.rotate_quadratic_matrix(i32* nocapture %V8746.V5155.abc, i32* nocapture %V8747.V5156.rot) {
entry:
  %"11461" = bitcast i32* %V8747.V5156.rot to float*
  %"114621" = load float, float* %"11461", align 4
  %0 = fcmp oge float %"114621", 0.000000e+00
  %"13169.i" = fsub float -0.000000e+00, %"114621"
  %V9674.V6082.x.i = select i1 %0, float %"114621", float %"13169.i"
  %V9675.V6083.x.i = tail call float @reduction(float %V9674.V6082.x.i)
  %1 = fcmp oge float %V9675.V6083.x.i, 0x400921FB00000000
  %..i = select i1 %1, float -1.000000e+00, float 1.000000e+00
  %"13172.i" = fadd float %V9675.V6083.x.i, 0xC00921FB00000000
  %V9681.V6088.x.i = select i1 %1, float %"13172.i", float %V9675.V6083.x.i
  %2 = fcmp oge float %V9681.V6088.x.i, 0x3FF921FB40000000
  %"13174.i" = fsub float -0.000000e+00, %..i
  %V9682.V6089.flag.i = select i1 %2, float %"13174.i", float %..i
  %"13176.i" = fsub float 0x400921FB00000000, %V9681.V6088.x.i
  %V9683.V6090.x.i = select i1 %2, float %"13176.i", float %V9681.V6088.x.i
  %3 = fcmp ugt float %V9683.V6090.x.i, 0x3FE921FB40000000
  br i1 %3, label %else14.i, label %then13.i

then13.i:                                         ; preds = %entry
  %4 = fmul float %V9683.V6090.x.i, 5.000000e-01
  %5 = fmul float %V9683.V6090.x.i, %4
  %6 = fmul float %V9683.V6090.x.i, 0x3FB55554C0000000
  %7 = fmul float %V9683.V6090.x.i, %6
  %8 = fmul float %V9683.V6090.x.i, 0x3FA1111000000000
  %9 = fmul float %V9683.V6090.x.i, %8
  %10 = fmul float %V9683.V6090.x.i, 0x3F924921C0000000
  %11 = fmul float %V9683.V6090.x.i, %10
  %12 = fsub float 1.000000e+00, %11
  %13 = fmul float %9, %12
  %14 = fsub float 1.000000e+00, %13
  %15 = fmul float %7, %14
  %16 = fsub float 1.000000e+00, %15
  %17 = fmul float %5, %16
  %18 = fsub float 1.000000e+00, %17
  br label %V6138.V2547.cos.exit

else14.i:                                         ; preds = %entry
  %V9685.V6092.386.i = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i
  %19 = fmul float %V9685.V6092.386.i, 0x3FC55555A0000000
  %20 = fmul float %V9685.V6092.386.i, %19
  %21 = fmul float %V9685.V6092.386.i, 0x3FA99999A0000000
  %22 = fmul float %V9685.V6092.386.i, %21
  %23 = fmul float %V9685.V6092.386.i, 0x3F98618480000000
  %24 = fmul float %V9685.V6092.386.i, %23
  %25 = fmul float %V9685.V6092.386.i, 0x3F8C71BB20000000
  %26 = fmul float %V9685.V6092.386.i, %25
  %27 = fsub float 1.000000e+00, %26
  %28 = fmul float %24, %27
  %29 = fsub float 1.000000e+00, %28
  %30 = fmul float %22, %29
  %31 = fsub float 1.000000e+00, %30
  %32 = fmul float %20, %31
  %33 = fsub float 1.000000e+00, %32
  %34 = fmul float %V9685.V6092.386.i, %33
  br label %V6138.V2547.cos.exit

V6138.V2547.cos.exit:                             ; preds = %then13.i, %else14.i
  %V9684.V6091.387.i = phi float [ %18, %then13.i ], [ %34, %else14.i ]
  %"13180.i" = fmul float %V9682.V6089.flag.i, %V9684.V6091.387.i
  %"114652" = load float, float* %"11461", align 4
  %35 = fcmp oge float %"114652", 0.000000e+00
  %..i5 = select i1 %35, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i = fmul float %"114652", %..i5
  %V9693.V6101.x.i = tail call float @reduction(float %V9692.V6100.x.i)
  %36 = fcmp oge float %V9693.V6101.x.i, 0x400921FB00000000
  %"13183.i" = fsub float -0.000000e+00, %..i5
  %V9698.V6105.flag.i = select i1 %36, float %"13183.i", float %..i5
  %"13185.i" = fadd float %V9693.V6101.x.i, 0xC00921FB00000000
  %V9699.V6106.x.i = select i1 %36, float %"13185.i", float %V9693.V6101.x.i
  %37 = fcmp oge float %V9699.V6106.x.i, 0x3FF921FB40000000
  %"13187.i" = fsub float 0x400921FB00000000, %V9699.V6106.x.i
  %V9700.V6107.x.i = select i1 %37, float %"13187.i", float %V9699.V6106.x.i
  %38 = fcmp ugt float %V9700.V6107.x.i, 0x3FE921FB40000000
  br i1 %38, label %else11.i, label %then10.i

then10.i:                                         ; preds = %V6138.V2547.cos.exit
  %39 = fmul float %V9700.V6107.x.i, 0x3FC55555A0000000
  %40 = fmul float %V9700.V6107.x.i, %39
  %41 = fmul float %V9700.V6107.x.i, 0x3FA99999A0000000
  %42 = fmul float %V9700.V6107.x.i, %41
  %43 = fmul float %V9700.V6107.x.i, 0x3F98618480000000
  %44 = fmul float %V9700.V6107.x.i, %43
  %45 = fmul float %V9700.V6107.x.i, 0x3F8C71BB20000000
  %46 = fmul float %V9700.V6107.x.i, %45
  %47 = fsub float 1.000000e+00, %46
  %48 = fmul float %44, %47
  %49 = fsub float 1.000000e+00, %48
  %50 = fmul float %42, %49
  %51 = fsub float 1.000000e+00, %50
  %52 = fmul float %40, %51
  %53 = fsub float 1.000000e+00, %52
  %54 = fmul float %V9700.V6107.x.i, %53
  br label %V6137.V2546.sin.exit

else11.i:                                         ; preds = %V6138.V2547.cos.exit
  %V9702.V6109.379.i = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i
  %55 = fmul float %V9702.V6109.379.i, 5.000000e-01
  %56 = fmul float %V9702.V6109.379.i, %55
  %57 = fmul float %V9702.V6109.379.i, 0x3FB55554C0000000
  %58 = fmul float %V9702.V6109.379.i, %57
  %59 = fmul float %V9702.V6109.379.i, 0x3FA1111000000000
  %60 = fmul float %V9702.V6109.379.i, %59
  %61 = fmul float %V9702.V6109.379.i, 0x3F924921C0000000
  %62 = fmul float %V9702.V6109.379.i, %61
  %63 = fsub float 1.000000e+00, %62
  %64 = fmul float %60, %63
  %65 = fsub float 1.000000e+00, %64
  %66 = fmul float %58, %65
  %67 = fsub float 1.000000e+00, %66
  %68 = fmul float %56, %67
  %69 = fsub float 1.000000e+00, %68
  br label %V6137.V2546.sin.exit

V6137.V2546.sin.exit:                             ; preds = %then10.i, %else11.i
  %V9701.V6108.380.i = phi float [ %54, %then10.i ], [ %69, %else11.i ]
  %"13191.i" = fmul float %V9698.V6105.flag.i, %V9701.V6108.380.i
  %"114681" = getelementptr inbounds i32, i32* %V8747.V5156.rot, i32 1
  %"11468" = bitcast i32* %"114681" to float*
  %"114683" = load float, float* %"11468", align 4
  %70 = fcmp oge float %"114683", 0.000000e+00
  %"13169.i6" = fsub float -0.000000e+00, %"114683"
  %V9674.V6082.x.i7 = select i1 %70, float %"114683", float %"13169.i6"
  %V9675.V6083.x.i8 = tail call float @reduction(float %V9674.V6082.x.i7)
  %71 = fcmp oge float %V9675.V6083.x.i8, 0x400921FB00000000
  %..i9 = select i1 %71, float -1.000000e+00, float 1.000000e+00
  %"13172.i10" = fadd float %V9675.V6083.x.i8, 0xC00921FB00000000
  %V9681.V6088.x.i11 = select i1 %71, float %"13172.i10", float %V9675.V6083.x.i8
  %72 = fcmp oge float %V9681.V6088.x.i11, 0x3FF921FB40000000
  %"13174.i12" = fsub float -0.000000e+00, %..i9
  %V9682.V6089.flag.i13 = select i1 %72, float %"13174.i12", float %..i9
  %"13176.i14" = fsub float 0x400921FB00000000, %V9681.V6088.x.i11
  %V9683.V6090.x.i15 = select i1 %72, float %"13176.i14", float %V9681.V6088.x.i11
  %73 = fcmp ugt float %V9683.V6090.x.i15, 0x3FE921FB40000000
  br i1 %73, label %else14.i18, label %then13.i16

then13.i16:                                       ; preds = %V6137.V2546.sin.exit
  %74 = fmul float %V9683.V6090.x.i15, 5.000000e-01
  %75 = fmul float %V9683.V6090.x.i15, %74
  %76 = fmul float %V9683.V6090.x.i15, 0x3FB55554C0000000
  %77 = fmul float %V9683.V6090.x.i15, %76
  %78 = fmul float %V9683.V6090.x.i15, 0x3FA1111000000000
  %79 = fmul float %V9683.V6090.x.i15, %78
  %80 = fmul float %V9683.V6090.x.i15, 0x3F924921C0000000
  %81 = fmul float %V9683.V6090.x.i15, %80
  %82 = fsub float 1.000000e+00, %81
  %83 = fmul float %79, %82
  %84 = fsub float 1.000000e+00, %83
  %85 = fmul float %77, %84
  %86 = fsub float 1.000000e+00, %85
  %87 = fmul float %75, %86
  %88 = fsub float 1.000000e+00, %87
  br label %V6138.V2547.cos.exit21

else14.i18:                                       ; preds = %V6137.V2546.sin.exit
  %V9685.V6092.386.i17 = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i15
  %89 = fmul float %V9685.V6092.386.i17, 0x3FC55555A0000000
  %90 = fmul float %V9685.V6092.386.i17, %89
  %91 = fmul float %V9685.V6092.386.i17, 0x3FA99999A0000000
  %92 = fmul float %V9685.V6092.386.i17, %91
  %93 = fmul float %V9685.V6092.386.i17, 0x3F98618480000000
  %94 = fmul float %V9685.V6092.386.i17, %93
  %95 = fmul float %V9685.V6092.386.i17, 0x3F8C71BB20000000
  %96 = fmul float %V9685.V6092.386.i17, %95
  %97 = fsub float 1.000000e+00, %96
  %98 = fmul float %94, %97
  %99 = fsub float 1.000000e+00, %98
  %100 = fmul float %92, %99
  %101 = fsub float 1.000000e+00, %100
  %102 = fmul float %90, %101
  %103 = fsub float 1.000000e+00, %102
  %104 = fmul float %V9685.V6092.386.i17, %103
  br label %V6138.V2547.cos.exit21

V6138.V2547.cos.exit21:                           ; preds = %then13.i16, %else14.i18
  %V9684.V6091.387.i19 = phi float [ %88, %then13.i16 ], [ %104, %else14.i18 ]
  %"13180.i20" = fmul float %V9682.V6089.flag.i13, %V9684.V6091.387.i19
  %"114714" = load float, float* %"11468", align 4
  %105 = fcmp oge float %"114714", 0.000000e+00
  %..i22 = select i1 %105, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i23 = fmul float %"114714", %..i22
  %V9693.V6101.x.i24 = tail call float @reduction(float %V9692.V6100.x.i23)
  %106 = fcmp oge float %V9693.V6101.x.i24, 0x400921FB00000000
  %"13183.i25" = fsub float -0.000000e+00, %..i22
  %V9698.V6105.flag.i26 = select i1 %106, float %"13183.i25", float %..i22
  %"13185.i27" = fadd float %V9693.V6101.x.i24, 0xC00921FB00000000
  %V9699.V6106.x.i28 = select i1 %106, float %"13185.i27", float %V9693.V6101.x.i24
  %107 = fcmp oge float %V9699.V6106.x.i28, 0x3FF921FB40000000
  %"13187.i29" = fsub float 0x400921FB00000000, %V9699.V6106.x.i28
  %V9700.V6107.x.i30 = select i1 %107, float %"13187.i29", float %V9699.V6106.x.i28
  %108 = fcmp ugt float %V9700.V6107.x.i30, 0x3FE921FB40000000
  br i1 %108, label %else11.i33, label %then10.i31

then10.i31:                                       ; preds = %V6138.V2547.cos.exit21
  %109 = fmul float %V9700.V6107.x.i30, 0x3FC55555A0000000
  %110 = fmul float %V9700.V6107.x.i30, %109
  %111 = fmul float %V9700.V6107.x.i30, 0x3FA99999A0000000
  %112 = fmul float %V9700.V6107.x.i30, %111
  %113 = fmul float %V9700.V6107.x.i30, 0x3F98618480000000
  %114 = fmul float %V9700.V6107.x.i30, %113
  %115 = fmul float %V9700.V6107.x.i30, 0x3F8C71BB20000000
  %116 = fmul float %V9700.V6107.x.i30, %115
  %117 = fsub float 1.000000e+00, %116
  %118 = fmul float %114, %117
  %119 = fsub float 1.000000e+00, %118
  %120 = fmul float %112, %119
  %121 = fsub float 1.000000e+00, %120
  %122 = fmul float %110, %121
  %123 = fsub float 1.000000e+00, %122
  %124 = fmul float %V9700.V6107.x.i30, %123
  br label %V6137.V2546.sin.exit36

else11.i33:                                       ; preds = %V6138.V2547.cos.exit21
  %V9702.V6109.379.i32 = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i30
  %125 = fmul float %V9702.V6109.379.i32, 5.000000e-01
  %126 = fmul float %V9702.V6109.379.i32, %125
  %127 = fmul float %V9702.V6109.379.i32, 0x3FB55554C0000000
  %128 = fmul float %V9702.V6109.379.i32, %127
  %129 = fmul float %V9702.V6109.379.i32, 0x3FA1111000000000
  %130 = fmul float %V9702.V6109.379.i32, %129
  %131 = fmul float %V9702.V6109.379.i32, 0x3F924921C0000000
  %132 = fmul float %V9702.V6109.379.i32, %131
  %133 = fsub float 1.000000e+00, %132
  %134 = fmul float %130, %133
  %135 = fsub float 1.000000e+00, %134
  %136 = fmul float %128, %135
  %137 = fsub float 1.000000e+00, %136
  %138 = fmul float %126, %137
  %139 = fsub float 1.000000e+00, %138
  br label %V6137.V2546.sin.exit36

V6137.V2546.sin.exit36:                           ; preds = %then10.i31, %else11.i33
  %V9701.V6108.380.i34 = phi float [ %124, %then10.i31 ], [ %139, %else11.i33 ]
  %"13191.i35" = fmul float %V9698.V6105.flag.i26, %V9701.V6108.380.i34
  %"114742" = getelementptr inbounds i32, i32* %V8747.V5156.rot, i32 2
  %"11474" = bitcast i32* %"114742" to float*
  %"114745" = load float, float* %"11474", align 4
  %140 = fcmp oge float %"114745", 0.000000e+00
  %"13169.i37" = fsub float -0.000000e+00, %"114745"
  %V9674.V6082.x.i38 = select i1 %140, float %"114745", float %"13169.i37"
  %V9675.V6083.x.i39 = tail call float @reduction(float %V9674.V6082.x.i38)
  %141 = fcmp oge float %V9675.V6083.x.i39, 0x400921FB00000000
  %..i40 = select i1 %141, float -1.000000e+00, float 1.000000e+00
  %"13172.i41" = fadd float %V9675.V6083.x.i39, 0xC00921FB00000000
  %V9681.V6088.x.i42 = select i1 %141, float %"13172.i41", float %V9675.V6083.x.i39
  %142 = fcmp oge float %V9681.V6088.x.i42, 0x3FF921FB40000000
  %"13174.i43" = fsub float -0.000000e+00, %..i40
  %V9682.V6089.flag.i44 = select i1 %142, float %"13174.i43", float %..i40
  %"13176.i45" = fsub float 0x400921FB00000000, %V9681.V6088.x.i42
  %V9683.V6090.x.i46 = select i1 %142, float %"13176.i45", float %V9681.V6088.x.i42
  %143 = fcmp ugt float %V9683.V6090.x.i46, 0x3FE921FB40000000
  br i1 %143, label %else14.i49, label %then13.i47

then13.i47:                                       ; preds = %V6137.V2546.sin.exit36
  %144 = fmul float %V9683.V6090.x.i46, 5.000000e-01
  %145 = fmul float %V9683.V6090.x.i46, %144
  %146 = fmul float %V9683.V6090.x.i46, 0x3FB55554C0000000
  %147 = fmul float %V9683.V6090.x.i46, %146
  %148 = fmul float %V9683.V6090.x.i46, 0x3FA1111000000000
  %149 = fmul float %V9683.V6090.x.i46, %148
  %150 = fmul float %V9683.V6090.x.i46, 0x3F924921C0000000
  %151 = fmul float %V9683.V6090.x.i46, %150
  %152 = fsub float 1.000000e+00, %151
  %153 = fmul float %149, %152
  %154 = fsub float 1.000000e+00, %153
  %155 = fmul float %147, %154
  %156 = fsub float 1.000000e+00, %155
  %157 = fmul float %145, %156
  %158 = fsub float 1.000000e+00, %157
  br label %V6138.V2547.cos.exit52

else14.i49:                                       ; preds = %V6137.V2546.sin.exit36
  %V9685.V6092.386.i48 = fsub float 0x3FF921FB40000000, %V9683.V6090.x.i46
  %159 = fmul float %V9685.V6092.386.i48, 0x3FC55555A0000000
  %160 = fmul float %V9685.V6092.386.i48, %159
  %161 = fmul float %V9685.V6092.386.i48, 0x3FA99999A0000000
  %162 = fmul float %V9685.V6092.386.i48, %161
  %163 = fmul float %V9685.V6092.386.i48, 0x3F98618480000000
  %164 = fmul float %V9685.V6092.386.i48, %163
  %165 = fmul float %V9685.V6092.386.i48, 0x3F8C71BB20000000
  %166 = fmul float %V9685.V6092.386.i48, %165
  %167 = fsub float 1.000000e+00, %166
  %168 = fmul float %164, %167
  %169 = fsub float 1.000000e+00, %168
  %170 = fmul float %162, %169
  %171 = fsub float 1.000000e+00, %170
  %172 = fmul float %160, %171
  %173 = fsub float 1.000000e+00, %172
  %174 = fmul float %V9685.V6092.386.i48, %173
  br label %V6138.V2547.cos.exit52

V6138.V2547.cos.exit52:                           ; preds = %then13.i47, %else14.i49
  %V9684.V6091.387.i50 = phi float [ %158, %then13.i47 ], [ %174, %else14.i49 ]
  %"13180.i51" = fmul float %V9682.V6089.flag.i44, %V9684.V6091.387.i50
  %"114776" = load float, float* %"11474", align 4
  %175 = fcmp oge float %"114776", 0.000000e+00
  %..i53 = select i1 %175, float 1.000000e+00, float -1.000000e+00
  %V9692.V6100.x.i54 = fmul float %"114776", %..i53
  %V9693.V6101.x.i55 = tail call float @reduction(float %V9692.V6100.x.i54)
  %176 = fcmp oge float %V9693.V6101.x.i55, 0x400921FB00000000
  %"13183.i56" = fsub float -0.000000e+00, %..i53
  %V9698.V6105.flag.i57 = select i1 %176, float %"13183.i56", float %..i53
  %"13185.i58" = fadd float %V9693.V6101.x.i55, 0xC00921FB00000000
  %V9699.V6106.x.i59 = select i1 %176, float %"13185.i58", float %V9693.V6101.x.i55
  %177 = fcmp oge float %V9699.V6106.x.i59, 0x3FF921FB40000000
  %"13187.i60" = fsub float 0x400921FB00000000, %V9699.V6106.x.i59
  %V9700.V6107.x.i61 = select i1 %177, float %"13187.i60", float %V9699.V6106.x.i59
  %178 = fcmp ugt float %V9700.V6107.x.i61, 0x3FE921FB40000000
  br i1 %178, label %else11.i64, label %then10.i62

then10.i62:                                       ; preds = %V6138.V2547.cos.exit52
  %179 = fmul float %V9700.V6107.x.i61, 0x3FC55555A0000000
  %180 = fmul float %V9700.V6107.x.i61, %179
  %181 = fmul float %V9700.V6107.x.i61, 0x3FA99999A0000000
  %182 = fmul float %V9700.V6107.x.i61, %181
  %183 = fmul float %V9700.V6107.x.i61, 0x3F98618480000000
  %184 = fmul float %V9700.V6107.x.i61, %183
  %185 = fmul float %V9700.V6107.x.i61, 0x3F8C71BB20000000
  %186 = fmul float %V9700.V6107.x.i61, %185
  %187 = fsub float 1.000000e+00, %186
  %188 = fmul float %184, %187
  %189 = fsub float 1.000000e+00, %188
  %190 = fmul float %182, %189
  %191 = fsub float 1.000000e+00, %190
  %192 = fmul float %180, %191
  %193 = fsub float 1.000000e+00, %192
  %194 = fmul float %V9700.V6107.x.i61, %193
  br label %V6137.V2546.sin.exit67

else11.i64:                                       ; preds = %V6138.V2547.cos.exit52
  %V9702.V6109.379.i63 = fsub float 0x3FF921FB40000000, %V9700.V6107.x.i61
  %195 = fmul float %V9702.V6109.379.i63, 5.000000e-01
  %196 = fmul float %V9702.V6109.379.i63, %195
  %197 = fmul float %V9702.V6109.379.i63, 0x3FB55554C0000000
  %198 = fmul float %V9702.V6109.379.i63, %197
  %199 = fmul float %V9702.V6109.379.i63, 0x3FA1111000000000
  %200 = fmul float %V9702.V6109.379.i63, %199
  %201 = fmul float %V9702.V6109.379.i63, 0x3F924921C0000000
  %202 = fmul float %V9702.V6109.379.i63, %201
  %203 = fsub float 1.000000e+00, %202
  %204 = fmul float %200, %203
  %205 = fsub float 1.000000e+00, %204
  %206 = fmul float %198, %205
  %207 = fsub float 1.000000e+00, %206
  %208 = fmul float %196, %207
  %209 = fsub float 1.000000e+00, %208
  br label %V6137.V2546.sin.exit67

V6137.V2546.sin.exit67:                           ; preds = %then10.i62, %else11.i64
  %V9701.V6108.380.i65 = phi float [ %194, %then10.i62 ], [ %209, %else11.i64 ]
  %"13191.i66" = fmul float %V9698.V6105.flag.i57, %V9701.V6108.380.i65
  %V8766.V5163.m00 = fmul float %"13180.i20", %"13180.i51"
  %V8767.V5254.725 = fmul float %"13191.i", %"13191.i35"
  %V8768.V5252.726 = fmul float %V8767.V5254.725, %"13180.i51"
  %V8769.V5253.727 = fmul float %"13180.i", %"13191.i66"
  %V8770.V5164.m01 = fsub float %V8768.V5252.726, %V8769.V5253.727
  %V8771.V5251.728 = fmul float %"13180.i", %"13191.i35"
  %V8772.V5249.729 = fmul float %V8771.V5251.728, %"13180.i51"
  %V8773.V5250.730 = fmul float %"13191.i", %"13191.i66"
  %V8774.V5165.m02 = fadd float %V8772.V5249.729, %V8773.V5250.730
  %V8775.V5166.m10 = fmul float %"13180.i20", %"13191.i66"
  %V8777.V5246.732 = fmul float %V8767.V5254.725, %"13191.i66"
  %V8778.V5247.733 = fmul float %"13180.i", %"13180.i51"
  %V8779.V5167.m11 = fadd float %V8778.V5247.733, %V8777.V5246.732
  %V8781.V5243.735 = fmul float %V8771.V5251.728, %"13191.i66"
  %V8782.V5244.736 = fmul float %"13191.i", %"13180.i51"
  %V8783.V5168.m12 = fsub float %V8781.V5243.735, %V8782.V5244.736
  %"13209.i" = fsub float 0.000000e+00, %"13191.i35"
  %V8785.V5170.m21 = fmul float %"13191.i", %"13180.i20"
  %V8786.V5171.m22 = fmul float %"13180.i", %"13180.i20"
  %"11479" = bitcast i32* %V8746.V5155.abc to float*
  %"114807" = load float, float* %"11479", align 4
  %"114833" = getelementptr inbounds i32, i32* %V8746.V5155.abc, i32 1
  %"11483" = bitcast i32* %"114833" to float*
  %"114838" = load float, float* %"11483", align 4
  %"114864" = getelementptr inbounds i32, i32* %V8746.V5155.abc, i32 2
  %"11486" = bitcast i32* %"114864" to float*
  %"114869" = load float, float* %"11486", align 4
  %"13208.i75" = fmul float %V8766.V5163.m00, %V8766.V5163.m00
  %V8795.V5236.742 = fmul float %"13208.i75", %"114807"
  %"13208.i74" = fmul float %V8775.V5166.m10, %V8775.V5166.m10
  %V8797.V5237.743 = fmul float %"114838", %"13208.i74"
  %V8798.V5233.745 = fadd float %V8795.V5236.742, %V8797.V5237.743
  %"13208.i73" = fmul float %"13209.i", %"13209.i"
  %V8800.V5234.746 = fmul float %"13208.i73", %"114869"
  %V8801.V5232.748 = fadd float %V8800.V5234.746, %V8798.V5233.745
  store float %V8801.V5232.748, float* %"11479", align 4
  %"13208.i72" = fmul float %V8770.V5164.m01, %V8770.V5164.m01
  %V8805.V5227.751 = fmul float %"114807", %"13208.i72"
  %"13208.i71" = fmul float %V8779.V5167.m11, %V8779.V5167.m11
  %V8807.V5228.752 = fmul float %"114838", %"13208.i71"
  %V8808.V5224.754 = fadd float %V8805.V5227.751, %V8807.V5228.752
  %"13208.i70" = fmul float %V8785.V5170.m21, %V8785.V5170.m21
  %V8810.V5225.755 = fmul float %"13208.i70", %"114869"
  %V8811.V5223.757 = fadd float %V8810.V5225.755, %V8808.V5224.754
  store float %V8811.V5223.757, float* %"11483", align 4
  %"13208.i69" = fmul float %V8774.V5165.m02, %V8774.V5165.m02
  %V8815.V5218.760 = fmul float %"114807", %"13208.i69"
  %"13208.i68" = fmul float %V8783.V5168.m12, %V8783.V5168.m12
  %V8817.V5219.761 = fmul float %"114838", %"13208.i68"
  %V8818.V5215.763 = fadd float %V8815.V5218.760, %V8817.V5219.761
  %"13208.i" = fmul float %V8786.V5171.m22, %V8786.V5171.m22
  %V8820.V5216.764 = fmul float %"13208.i", %"114869"
  %V8821.V5214.766 = fadd float %V8820.V5216.764, %V8818.V5215.763
  store float %V8821.V5214.766, float* %"11486", align 4
  %V8825.V5212.767 = fmul float %"114807", %V8770.V5164.m01
  %V8826.V5209.769 = fmul float %V8774.V5165.m02, %V8825.V5212.767
  %V8827.V5211.768 = fmul float %"114838", %V8779.V5167.m11
  %V8828.V5210.770 = fmul float %V8783.V5168.m12, %V8827.V5211.768
  %V8829.V5206.772 = fadd float %V8826.V5209.769, %V8828.V5210.770
  %V8830.V5208.771 = fmul float %V8785.V5170.m21, %"114869"
  %V8831.V5207.773 = fmul float %V8786.V5171.m22, %V8830.V5208.771
  %V8832.V5205.775 = fadd float %V8831.V5207.773, %V8829.V5206.772
  %V8833.V5203.777 = fmul float %V8832.V5205.775, 2.000000e+00
  store float %V8833.V5203.777, float* %"11461", align 4
  %V8837.V5201.778 = fmul float %V8766.V5163.m00, %"114807"
  %V8838.V5198.780 = fmul float %V8837.V5201.778, %V8774.V5165.m02
  %V8839.V5200.779 = fmul float %"114838", %V8775.V5166.m10
  %V8840.V5199.781 = fmul float %V8839.V5200.779, %V8783.V5168.m12
  %V8841.V5195.783 = fadd float %V8838.V5198.780, %V8840.V5199.781
  %V8842.V5197.782 = fmul float %"13209.i", %"114869"
  %V8843.V5196.784 = fmul float %V8786.V5171.m22, %V8842.V5197.782
  %V8844.V5194.786 = fadd float %V8841.V5195.783, %V8843.V5196.784
  %V8845.V5192.788 = fmul float %V8844.V5194.786, 2.000000e+00
  store float %V8845.V5192.788, float* %"11468", align 4
  %V8850.V5187.791 = fmul float %V8837.V5201.778, %V8770.V5164.m01
  %V8852.V5188.792 = fmul float %V8839.V5200.779, %V8779.V5167.m11
  %V8853.V5184.794 = fadd float %V8850.V5187.791, %V8852.V5188.792
  %V8855.V5185.795 = fmul float %V8785.V5170.m21, %V8842.V5197.782
  %V8856.V5183.797 = fadd float %V8853.V5184.794, %V8855.V5185.795
  %V8857.V5181.799 = fmul float %V8856.V5183.797, 2.000000e+00
  store float %V8857.V5181.799, float* %"11474", align 4
  ret void
}

; Function Attrs: norecurse nounwind
define i32* @V6269.V2678.create_pixel() #0 {
entry:
  %V6626.V3033.m_rgb = tail call i32* @create_array(i32 3, i32 0)
  %V6647.V3054.vec.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9933.i" = ptrtoint i32* %V6647.V3054.vec.i to i32
  %V6649.V3055.array.i = tail call i32* @create_array(i32 5, i32 %"9933.i") #2
  %V6653.V3073.2286.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9935.i" = ptrtoint i32* %V6653.V3073.2286.i to i32
  %"9936.i" = getelementptr inbounds i32, i32* %V6649.V3055.array.i, i32 1
  store i32 %"9935.i", i32* %"9936.i", align 4
  %V6658.V3069.2290.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9938.i" = ptrtoint i32* %V6658.V3069.2290.i to i32
  %"9939.i" = getelementptr inbounds i32, i32* %V6649.V3055.array.i, i32 2
  store i32 %"9938.i", i32* %"9939.i", align 4
  %V6663.V3065.2294.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9941.i" = ptrtoint i32* %V6663.V3065.2294.i to i32
  %"9942.i" = getelementptr inbounds i32, i32* %V6649.V3055.array.i, i32 3
  store i32 %"9941.i", i32* %"9942.i", align 4
  %V6668.V3061.2298.i = tail call i32* @create_array(i32 3, i32 0) #2
  %"9944.i" = ptrtoint i32* %V6668.V3061.2298.i to i32
  %"9945.i" = getelementptr inbounds i32, i32* %V6649.V3055.array.i, i32 4
  store i32 %"9944.i", i32* %"9945.i", align 4
  %V6631.V3035.m_sids = tail call i32* @create_array(i32 5, i32 0)
  %V6634.V3036.m_cdif = tail call i32* @create_array(i32 5, i32 0)
  %V6647.V3054.vec.i1 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9933.i2" = ptrtoint i32* %V6647.V3054.vec.i1 to i32
  %V6649.V3055.array.i3 = tail call i32* @create_array(i32 5, i32 %"9933.i2") #2
  %V6653.V3073.2286.i4 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9935.i5" = ptrtoint i32* %V6653.V3073.2286.i4 to i32
  %"9936.i6" = getelementptr inbounds i32, i32* %V6649.V3055.array.i3, i32 1
  store i32 %"9935.i5", i32* %"9936.i6", align 4
  %V6658.V3069.2290.i7 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9938.i8" = ptrtoint i32* %V6658.V3069.2290.i7 to i32
  %"9939.i9" = getelementptr inbounds i32, i32* %V6649.V3055.array.i3, i32 2
  store i32 %"9938.i8", i32* %"9939.i9", align 4
  %V6663.V3065.2294.i10 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9941.i11" = ptrtoint i32* %V6663.V3065.2294.i10 to i32
  %"9942.i12" = getelementptr inbounds i32, i32* %V6649.V3055.array.i3, i32 3
  store i32 %"9941.i11", i32* %"9942.i12", align 4
  %V6668.V3061.2298.i13 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9944.i14" = ptrtoint i32* %V6668.V3061.2298.i13 to i32
  %"9945.i15" = getelementptr inbounds i32, i32* %V6649.V3055.array.i3, i32 4
  store i32 %"9944.i14", i32* %"9945.i15", align 4
  %V6647.V3054.vec.i16 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9933.i17" = ptrtoint i32* %V6647.V3054.vec.i16 to i32
  %V6649.V3055.array.i18 = tail call i32* @create_array(i32 5, i32 %"9933.i17") #2
  %V6653.V3073.2286.i19 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9935.i20" = ptrtoint i32* %V6653.V3073.2286.i19 to i32
  %"9936.i21" = getelementptr inbounds i32, i32* %V6649.V3055.array.i18, i32 1
  store i32 %"9935.i20", i32* %"9936.i21", align 4
  %V6658.V3069.2290.i22 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9938.i23" = ptrtoint i32* %V6658.V3069.2290.i22 to i32
  %"9939.i24" = getelementptr inbounds i32, i32* %V6649.V3055.array.i18, i32 2
  store i32 %"9938.i23", i32* %"9939.i24", align 4
  %V6663.V3065.2294.i25 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9941.i26" = ptrtoint i32* %V6663.V3065.2294.i25 to i32
  %"9942.i27" = getelementptr inbounds i32, i32* %V6649.V3055.array.i18, i32 3
  store i32 %"9941.i26", i32* %"9942.i27", align 4
  %V6668.V3061.2298.i28 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9944.i29" = ptrtoint i32* %V6668.V3061.2298.i28 to i32
  %"9945.i30" = getelementptr inbounds i32, i32* %V6649.V3055.array.i18, i32 4
  store i32 %"9944.i29", i32* %"9945.i30", align 4
  %V6641.V3039.m_gid = tail call i32* @create_array(i32 1, i32 0)
  %V6647.V3054.vec.i31 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9933.i32" = ptrtoint i32* %V6647.V3054.vec.i31 to i32
  %V6649.V3055.array.i33 = tail call i32* @create_array(i32 5, i32 %"9933.i32") #2
  %V6653.V3073.2286.i34 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9935.i35" = ptrtoint i32* %V6653.V3073.2286.i34 to i32
  %"9936.i36" = getelementptr inbounds i32, i32* %V6649.V3055.array.i33, i32 1
  store i32 %"9935.i35", i32* %"9936.i36", align 4
  %V6658.V3069.2290.i37 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9938.i38" = ptrtoint i32* %V6658.V3069.2290.i37 to i32
  %"9939.i39" = getelementptr inbounds i32, i32* %V6649.V3055.array.i33, i32 2
  store i32 %"9938.i38", i32* %"9939.i39", align 4
  %V6663.V3065.2294.i40 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9941.i41" = ptrtoint i32* %V6663.V3065.2294.i40 to i32
  %"9942.i42" = getelementptr inbounds i32, i32* %V6649.V3055.array.i33, i32 3
  store i32 %"9941.i41", i32* %"9942.i42", align 4
  %V6668.V3061.2298.i43 = tail call i32* @create_array(i32 3, i32 0) #2
  %"9944.i44" = ptrtoint i32* %V6668.V3061.2298.i43 to i32
  %"9945.i45" = getelementptr inbounds i32, i32* %V6649.V3055.array.i33, i32 4
  store i32 %"9944.i44", i32* %"9945.i45", align 4
  %"9893" = tail call i32* @create_tuple(i32 8)
  %"9916" = ptrtoint i32* %V6626.V3033.m_rgb to i32
  store i32 %"9916", i32* %"9893", align 4
  %"9918" = ptrtoint i32* %V6649.V3055.array.i to i32
  %"9919" = getelementptr inbounds i32, i32* %"9893", i32 1
  store i32 %"9918", i32* %"9919", align 4
  %"9920" = ptrtoint i32* %V6631.V3035.m_sids to i32
  %"9921" = getelementptr inbounds i32, i32* %"9893", i32 2
  store i32 %"9920", i32* %"9921", align 4
  %"9922" = ptrtoint i32* %V6634.V3036.m_cdif to i32
  %"9923" = getelementptr inbounds i32, i32* %"9893", i32 3
  store i32 %"9922", i32* %"9923", align 4
  %"9924" = ptrtoint i32* %V6649.V3055.array.i3 to i32
  %"9925" = getelementptr inbounds i32, i32* %"9893", i32 4
  store i32 %"9924", i32* %"9925", align 4
  %"9926" = ptrtoint i32* %V6649.V3055.array.i18 to i32
  %"9927" = getelementptr inbounds i32, i32* %"9893", i32 5
  store i32 %"9926", i32* %"9927", align 4
  %"9928" = ptrtoint i32* %V6641.V3039.m_gid to i32
  %"9929" = getelementptr inbounds i32, i32* %"9893", i32 6
  store i32 %"9928", i32* %"9929", align 4
  %"9930" = ptrtoint i32* %V6649.V3055.array.i33 to i32
  %"9931" = getelementptr inbounds i32, i32* %"9893", i32 7
  store i32 %"9930", i32* %"9931", align 4
  ret i32* %"9893"
}

; Function Attrs: nounwind
define i32* @V6270.V2679.init_line_elements(i32* %V6615.V3024.line, i32 %V6616.V3025.n) #2 {
entry:
  %0 = icmp sgt i32 %V6616.V3025.n, -1
  br i1 %0, label %then.preheader, label %ifcont

then.preheader:                                   ; preds = %entry
  br label %then

then:                                             ; preds = %then.preheader, %then
  %V6616.V3025.n.tr1 = phi i32 [ %V6622.V3028.2315, %then ], [ %V6616.V3025.n, %then.preheader ]
  %V6619.V3030.2313 = tail call i32* @V6269.V2678.create_pixel()
  %"9889" = ptrtoint i32* %V6619.V3030.2313 to i32
  %"9890" = getelementptr inbounds i32, i32* %V6615.V3024.line, i32 %V6616.V3025.n.tr1
  store i32 %"9889", i32* %"9890", align 4
  %V6622.V3028.2315 = add nsw i32 %V6616.V3025.n.tr1, -1
  %1 = icmp sgt i32 %V6616.V3025.n.tr1, 0
  br i1 %1, label %then, label %ifcont.loopexit

ifcont.loopexit:                                  ; preds = %then
  br label %ifcont

ifcont:                                           ; preds = %ifcont.loopexit, %entry
  ret i32* %V6615.V3024.line
}

; Function Attrs: norecurse nounwind
define i32* @V6268.V2677.create_float5x3array() #0 {
entry:
  %V6647.V3054.vec = tail call i32* @create_array(i32 3, i32 0)
  %"9933" = ptrtoint i32* %V6647.V3054.vec to i32
  %V6649.V3055.array = tail call i32* @create_array(i32 5, i32 %"9933")
  %V6653.V3073.2286 = tail call i32* @create_array(i32 3, i32 0)
  %"9935" = ptrtoint i32* %V6653.V3073.2286 to i32
  %"9936" = getelementptr inbounds i32, i32* %V6649.V3055.array, i32 1
  store i32 %"9935", i32* %"9936", align 4
  %V6658.V3069.2290 = tail call i32* @create_array(i32 3, i32 0)
  %"9938" = ptrtoint i32* %V6658.V3069.2290 to i32
  %"9939" = getelementptr inbounds i32, i32* %V6649.V3055.array, i32 2
  store i32 %"9938", i32* %"9939", align 4
  %V6663.V3065.2294 = tail call i32* @create_array(i32 3, i32 0)
  %"9941" = ptrtoint i32* %V6663.V3065.2294 to i32
  %"9942" = getelementptr inbounds i32, i32* %V6649.V3055.array, i32 3
  store i32 %"9941", i32* %"9942", align 4
  %V6668.V3061.2298 = tail call i32* @create_array(i32 3, i32 0)
  %"9944" = ptrtoint i32* %V6668.V3061.2298 to i32
  %"9945" = getelementptr inbounds i32, i32* %V6649.V3055.array, i32 4
  store i32 %"9944", i32* %"9945", align 4
  ret i32* %V6649.V3055.array
}

; Function Attrs: norecurse nounwind
define void @V6155.V2564.vecmul(i32* nocapture %V9412.V5821.dest, i32* nocapture readonly %V9413.V5822.v) #0 {
entry:
  %"12937" = bitcast i32* %V9412.V5821.dest to float*
  %"129381" = load float, float* %"12937", align 4
  %"12940" = bitcast i32* %V9413.V5822.v to float*
  %"129412" = load float, float* %"12940", align 4
  %V9419.V5838.575 = fmul float %"129381", %"129412"
  store float %V9419.V5838.575, float* %"12937", align 4
  %"129461" = getelementptr inbounds i32, i32* %V9412.V5821.dest, i32 1
  %"12946" = bitcast i32* %"129461" to float*
  %"129463" = load float, float* %"12946", align 4
  %"129492" = getelementptr inbounds i32, i32* %V9413.V5822.v, i32 1
  %"12949" = bitcast i32* %"129492" to float*
  %"129494" = load float, float* %"12949", align 4
  %V9426.V5832.581 = fmul float %"129463", %"129494"
  store float %V9426.V5832.581, float* %"12946", align 4
  %"129543" = getelementptr inbounds i32, i32* %V9412.V5821.dest, i32 2
  %"12954" = bitcast i32* %"129543" to float*
  %"129545" = load float, float* %"12954", align 4
  %"129574" = getelementptr inbounds i32, i32* %V9413.V5822.v, i32 2
  %"12957" = bitcast i32* %"129574" to float*
  %"129576" = load float, float* %"12957", align 4
  %V9433.V5826.587 = fmul float %"129545", %"129576"
  store float %V9433.V5826.587, float* %"12954", align 4
  ret void
}

; Function Attrs: norecurse nounwind
define void @V6149.V2558.vecunit(i32* nocapture %V9548.V5957.v) #0 {
entry:
  %"13070" = bitcast i32* %V9548.V5957.v to float*
  %"130711" = load float, float* %"13070", align 4
  %"13208.i" = fmul float %"130711", %"130711"
  %"130741" = getelementptr inbounds i32, i32* %V9548.V5957.v, i32 1
  %"13074" = bitcast i32* %"130741" to float*
  %"130742" = load float, float* %"13074", align 4
  %"13208.i4" = fmul float %"130742", %"130742"
  %V9556.V5976.460 = fadd float %"13208.i", %"13208.i4"
  %"130772" = getelementptr inbounds i32, i32* %V9548.V5957.v, i32 2
  %"13077" = bitcast i32* %"130772" to float*
  %"130773" = load float, float* %"13077", align 4
  %"13208.i3" = fmul float %"130773", %"130773"
  %V9560.V5975.462 = fadd float %V9556.V5976.460, %"13208.i3"
  %0 = tail call float @llvm.sqrt.f32(float %V9560.V5975.462) #2
  %V9562.V5958.il = fdiv float 1.000000e+00, %0
  %V9566.V5970.468 = fmul float %"130711", %V9562.V5958.il
  store float %V9566.V5970.468, float* %"13070", align 4
  %V9571.V5966.472 = fmul float %"130742", %V9562.V5958.il
  store float %V9571.V5966.472, float* %"13074", align 4
  %V9576.V5962.476 = fmul float %"130773", %V9562.V5958.il
  store float %V9576.V5962.476, float* %"13077", align 4
  ret void
}

; Function Attrs: norecurse nounwind readonly
define float @V6148.V2557.vecdist2(i32* nocapture readonly %V9577.V5986.p, i32* nocapture readonly %V9578.V5987.q) #1 {
entry:
  %"13095" = bitcast i32* %V9577.V5986.p to float*
  %"130961" = load float, float* %"13095", align 4
  %"13098" = bitcast i32* %V9578.V5987.q to float*
  %"130992" = load float, float* %"13098", align 4
  %V9583.V6002.437 = fsub float %"130961", %"130992"
  %"13208.i" = fmul float %V9583.V6002.437, %V9583.V6002.437
  %"131021" = getelementptr inbounds i32, i32* %V9577.V5986.p, i32 1
  %"13102" = bitcast i32* %"131021" to float*
  %"131023" = load float, float* %"13102", align 4
  %"131052" = getelementptr inbounds i32, i32* %V9578.V5987.q, i32 1
  %"13105" = bitcast i32* %"131052" to float*
  %"131054" = load float, float* %"13105", align 4
  %V9589.V5997.442 = fsub float %"131023", %"131054"
  %"13208.i6" = fmul float %V9589.V5997.442, %V9589.V5997.442
  %V9591.V5988.450 = fadd float %"13208.i", %"13208.i6"
  %"131083" = getelementptr inbounds i32, i32* %V9577.V5986.p, i32 2
  %"13108" = bitcast i32* %"131083" to float*
  %"131085" = load float, float* %"13108", align 4
  %"131114" = getelementptr inbounds i32, i32* %V9578.V5987.q, i32 2
  %"13111" = bitcast i32* %"131114" to float*
  %"131116" = load float, float* %"13111", align 4
  %V9596.V5990.449 = fsub float %"131085", %"131116"
  %"13208.i5" = fmul float %V9596.V5990.449, %V9596.V5990.449
  %"13113" = fadd float %V9591.V5988.450, %"13208.i5"
  ret float %"13113"
}

define void @main() {
entry:
  tail call void @V6287.V2696.rt(i32 512, i32 512)
  ret void
}

; Function Attrs: norecurse nounwind readnone
define float @float_of_int(i32 %x) #3 {
  %1 = sitofp i32 %x to float
  ret float %1
}

; Function Attrs: norecurse nounwind readnone
define i32 @int_of_float(float %y) #3 {
  %1 = fptosi float %y to i32
  ret i32 %1
}

; Function Attrs: norecurse nounwind readnone
define float @floor(float %y) #3 {
  %1 = fptosi float %y to i32
  %2 = sitofp i32 %1 to float
  ret float %2
}

; Function Attrs: norecurse nounwind readnone
define float @sqrt(float %y) #3 {
  %1 = tail call float @llvm.sqrt.f32(float %y)
  ret float %1
}

; Function Attrs: nounwind readnone
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: norecurse nounwind readnone
define float @kernel_cos(float %x) #3 {
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
define float @kernel_sin(float %x) #3 {
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
define i32* @mymalloc(i32 %x) #6 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %x
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  ret i32* %3
}

; Function Attrs: norecurse nounwind
define i32* @create_tuple(i32 %x) #6 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %x
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  ret i32* %3
}

; Function Attrs: norecurse nounwind
define i32* @create_array(i32 %a, i32 %b) #6 {
  %1 = load i32, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %2 = add nsw i32 %1, %a
  store i32 %2, i32* inttoptr (i32 1 to i32*), align 4, !tbaa !1
  %3 = inttoptr i32 %1 to i32*
  %4 = icmp sgt i32 %a, 0
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  %min.iters.check = icmp ult i32 %a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader5, label %min.iters.checked

.lr.ph.preheader5:                                ; preds = %middle.block, %min.iters.checked, %.lr.ph.preheader
  %i.01.ph = phi i32 [ %n.vec, %middle.block ], [ 0, %.lr.ph.preheader ], [ 0, %min.iters.checked ]
  br label %.lr.ph

min.iters.checked:                                ; preds = %.lr.ph.preheader
  %n.vec = and i32 %a, -8
  %cmp.zero = icmp eq i32 %n.vec, 0
  br i1 %cmp.zero, label %.lr.ph.preheader5, label %vector.ph

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
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader5

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %0
  ret i32* %3

.lr.ph:                                           ; preds = %.lr.ph.preheader5, %.lr.ph
  %i.01 = phi i32 [ %11, %.lr.ph ], [ %i.01.ph, %.lr.ph.preheader5 ]
  %10 = getelementptr inbounds i32, i32* %3, i32 %i.01
  store i32 %b, i32* %10, align 4, !tbaa !1
  %11 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %11, %a
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8
}

attributes #0 = { norecurse nounwind }
attributes #1 = { norecurse nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { norecurse nounwind readnone }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }
attributes #6 = { norecurse nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
