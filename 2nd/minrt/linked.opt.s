	.text
	.file	"linked.opt.ll"
	.globl	V6287.V2696.rt          # -- Begin function V6287.V2696.rt
	.p2align	2
	.type	V6287.V2696.rt,@function
V6287.V2696.rt:                         # @V6287.V2696.rt
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 7
	store %fp, %sp, 0
	store %lr, %fp, 6               # 4-byte Folded Spill
	store %r3, %r0, 155
	store %r4, %r0, 159
	slawi	%r5, %r3, 1
	store %r5, %r0, 157
	slawi	%r4, %r4, 1
	store %r4, %r0, 161
	itof	%r3, %r3
	liw %r4, 1124073472
	fdiv	%r3, %r4, %r3
	store %r3, %r0, 159
	load %r3, %r0, 155
	store %r3, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	addi	%r4, %r3, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	bl create_array
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r5, %r0, 155
	addi	%r3, %r5, -2
	cmpdi %r3,0
	blt	.LBB0_4
	jump	.LBB0_1
.LBB0_1:                                # %then.i.i.preheader
	srawi	%r3, %r3, 2
	load %r4, %fp, 3                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	addi	%r4, %r5, -1
.LBB0_2:                                # %then.i.i
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r3, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r4, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB0_2
	jump	.LBB0_3
.LBB0_3:                                # %V6271.V2680.create_pixelline.exit.loopexit
	load %r5, %r0, 155
.LBB0_4:                                # %V6271.V2680.create_pixelline.exit
	store %r5, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	addi	%r4, %r3, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	bl create_array
	store %r3, %fp, 4               # 4-byte Folded Spill
	load %r5, %r0, 155
	addi	%r3, %r5, -2
	cmpdi %r3,0
	blt	.LBB0_8
	jump	.LBB0_5
.LBB0_5:                                # %then.i.i12.preheader
	srawi	%r3, %r3, 2
	load %r4, %fp, 4                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	addi	%r4, %r5, -1
.LBB0_6:                                # %then.i.i12
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 2               # 4-byte Folded Spill
	store %r3, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r4, %fp, 2                # 4-byte Folded Reload
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB0_6
	jump	.LBB0_7
.LBB0_7:                                # %V6271.V2680.create_pixelline.exit13.loopexit
	load %r5, %r0, 155
.LBB0_8:                                # %V6271.V2680.create_pixelline.exit13
	store %r5, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	addi	%r4, %r3, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	load %r3, %r0, 155
	addi	%r4, %r3, -2
	cmpdi %r4,0
	blt	.LBB0_11
	jump	.LBB0_9
.LBB0_9:                                # %then.i.i25.preheader
	srawi	%r4, %r4, 2
	load %r5, %fp, 1                # 4-byte Folded Reload
	add	%r4, %r5, %r4
	addi	%r3, %r3, -1
.LBB0_10:                               # %then.i.i25
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 5               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r3, %fp, 2                # 4-byte Folded Reload
	addi	%r4, %r4, -4
	addi	%r3, %r3, -1
	cmpdi %r3,0
	bgt	.LBB0_10
	jump	.LBB0_11
.LBB0_11:                               # %V6271.V2680.create_pixelline.exit26
	bl V6203.V2612.read_parameter
	li %r3, 80
	bl print_char
	li %r3, 51
	bl print_char
	li %r3, 10
	bl print_char
	load %r3, %r0, 155
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 159
	bl print_int
	li %r3, 32
	bl print_char
	li %r3, 255
	bl print_int
	li %r3, 10
	bl print_char
	bl V6282.V2691.init_dirvecs
	load %r3, %r0, 79
	load %r4, %r0, 248
	store %r3, %r4, 0
	load %r3, %r0, 83
	store %r3, %r4, 4
	load %r3, %r0, 87
	store %r3, %r4, 8
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	li %r3, 248
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %r0, 1
	addi	%r3, %r3, -1
	bl V6286.V2695.setup_reflections
	li %r4, 0
	load %r3, %r0, 161
	sub	%r3, %r4, %r3
	itof	%r3, %r3
	load %r4, %r0, 159
	fmul	%r3, %r4, %r3
	load %r4, %r0, 169
	fmul	%r4, %r4, %r3
	load %r5, %r0, 172
	fadd	%r6, %r5, %r4
	load %r4, %r0, 173
	fmul	%r4, %r3, %r4
	load %r5, %r0, 176
	fadd	%r7, %r4, %r5
	load %r4, %r0, 177
	fmul	%r3, %r3, %r4
	load %r4, %r0, 180
	fadd	%r8, %r3, %r4
	load %r3, %r0, 155
	addi	%r4, %r3, -1
	load %r3, %fp, 4                # 4-byte Folded Reload
	li %r5, 0
	bl V6264.V2673.pretrace_pixels
	li %r4, 0
	load %r6, %fp, 4                # 4-byte Folded Reload
	load %r3, %r0, 159
	cmpdi %r3,1
	load %r5, %fp, 3                # 4-byte Folded Reload
	load %r9, %fp, 1                # 4-byte Folded Reload
	blt	.LBB0_18
	jump	.LBB0_12
.LBB0_12:                               # %then.i.preheader
	li %r7, 2
.LBB0_13:                               # %then.i
                                        # =>This Inner Loop Header: Depth=1
	store %r7, %fp, 5               # 4-byte Folded Spill
	addi	%r3, %r3, -1
	cmpd %r3,%r4
	store %r9, %fp, 4               # 4-byte Folded Spill
	store %r5, %fp, 3               # 4-byte Folded Spill
	store %r6, %fp, 2               # 4-byte Folded Spill
	ble	.LBB0_15
	jump	.LBB0_14
.LBB0_14:                               # %then1.i
                                        #   in Loop: Header=BB0_13 Depth=1
	load %r3, %r0, 161
	sub	%r3, %r4, %r3
	addi	%r3, %r3, 1
	itof	%r3, %r3
	load %r6, %r0, 159
	fmul	%r3, %r6, %r3
	load %r6, %r0, 177
	fmul	%r8, %r3, %r6
	load %r5, %r0, 173
	fmul	%r5, %r3, %r5
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r6, %r0, 169
	fmul	%r3, %r6, %r3
	load %r6, %r0, 172
	fadd	%r6, %r6, %r3
	load %r3, %r0, 176
	fadd	%r7, %r5, %r3
	load %r3, %r0, 180
	fadd	%r8, %r8, %r3
	load %r3, %r0, 155
	addi	%r4, %r3, -1
	addi	%r3, %r9, 0
	load %r5, %fp, 5                # 4-byte Folded Reload
	bl V6264.V2673.pretrace_pixels
	load %r6, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	load %r5, %fp, 3                # 4-byte Folded Reload
.LBB0_15:                               # %ifcont.i
                                        #   in Loop: Header=BB0_13 Depth=1
	addi	%r3, %r4, 1
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 0
	addi	%r7, %r9, 0
	bl V6266.V2675.scan_pixel
	load %r7, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r7, 2
	addi	%r7, %r7, -3
	cmpdi %r3,4
	bgt	.LBB0_17
# %bb.16:                               # %ifcont.i
                                        #   in Loop: Header=BB0_13 Depth=1
	addi	%r7, %r3, 0
.LBB0_17:                               # %ifcont.i
                                        #   in Loop: Header=BB0_13 Depth=1
	load %r3, %r0, 159
	load %r4, %fp, 1                # 4-byte Folded Reload
	cmpd %r3,%r4
	load %r9, %fp, 3                # 4-byte Folded Reload
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r6, %fp, 4                # 4-byte Folded Reload
	bgt	.LBB0_13
	jump	.LBB0_18
.LBB0_18:                               # %V6267.V2676.scan_line.exit
	load %lr, %fp, 6                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end0:
	.size	V6287.V2696.rt, .Lfunc_end0-V6287.V2696.rt
                                        # -- End function
	.globl	V6271.V2680.create_pixelline # -- Begin function V6271.V2680.create_pixelline
	.p2align	2
	.type	V6271.V2680.create_pixelline,@function
V6271.V2680.create_pixelline:           # @V6271.V2680.create_pixelline
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	load %r3, %r0, 155
	store %r3, %fp, 3               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	addi	%r4, %r3, 0
	load %r3, %fp, 3                # 4-byte Folded Reload
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	load %r3, %r0, 155
	addi	%r4, %r3, -2
	cmpdi %r4,0
	blt	.LBB1_3
	jump	.LBB1_1
.LBB1_1:                                # %then.i.preheader
	srawi	%r4, %r4, 2
	load %r5, %fp, 1                # 4-byte Folded Reload
	add	%r4, %r5, %r4
	addi	%r3, %r3, -1
.LBB1_2:                                # %then.i
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 3               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r3, %fp, 2                # 4-byte Folded Reload
	addi	%r4, %r4, -4
	addi	%r3, %r3, -1
	cmpdi %r3,0
	bgt	.LBB1_2
	jump	.LBB1_3
.LBB1_3:                                # %V6270.V2679.init_line_elements.exit
	load %r3, %fp, 1                # 4-byte Folded Reload
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end1:
	.size	V6271.V2680.create_pixelline, .Lfunc_end1-V6271.V2680.create_pixelline
                                        # -- End function
	.globl	V6203.V2612.read_parameter # -- Begin function V6203.V2612.read_parameter
	.p2align	2
	.type	V6203.V2612.read_parameter,@function
V6203.V2612.read_parameter:             # @V6203.V2612.read_parameter
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	bl V6194.V2603.read_screen_settings
	bl V6195.V2604.read_light
	li %r3, 0
.LBB2_1:                                # %then.i.i
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 1               # 4-byte Folded Spill
	bl V6197.V2606.read_nth_object
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB2_3
	jump	.LBB2_2
.LBB2_3:                                # %else.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	load %r3, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	cmpdi %r3,60
	blt	.LBB2_1
	jump	.LBB2_4
.LBB2_2:                                # %then1.i.i
	load %r3, %fp, 1                # 4-byte Folded Reload
	store %r3, %r0, 1
	jump	.LBB2_4
.LBB2_4:                                # %V6199.V2608.read_all_object.exit
	li %r3, 0
	bl V6200.V2609.read_net_item
	load %r4, %r3, 0
	cmpdi %r4,-1
	beq	.LBB2_7
	jump	.LBB2_5
.LBB2_5:                                # %else.i.preheader
	li %r5, 84
.LBB2_6:                                # %else.i
                                        # =>This Inner Loop Header: Depth=1
	store %r5, %fp, 1               # 4-byte Folded Spill
	store %r3, %r5, 0
	li %r3, 0
	bl V6200.V2609.read_net_item
	load %r5, %fp, 1                # 4-byte Folded Reload
	addi	%r5, %r5, 4
	load %r4, %r3, 0
	cmpdi %r4,-1
	bne	.LBB2_6
	jump	.LBB2_7
.LBB2_7:                                # %V6202.V2611.read_and_network.exit
	li %r3, 0
	bl V6201.V2610.read_or_network
	store %r3, %r0, 135
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end2:
	.size	V6203.V2612.read_parameter, .Lfunc_end2-V6203.V2612.read_parameter
                                        # -- End function
	.globl	V6260.V2669.write_ppm_header # -- Begin function V6260.V2669.write_ppm_header
	.p2align	2
	.type	V6260.V2669.write_ppm_header,@function
V6260.V2669.write_ppm_header:           # @V6260.V2669.write_ppm_header
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	li %r3, 80
	bl print_char
	li %r3, 51
	bl print_char
	li %r3, 10
	bl print_char
	load %r3, %r0, 155
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 159
	bl print_int
	li %r3, 32
	bl print_char
	li %r3, 255
	bl print_int
	li %r3, 10
	bl print_char
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end3:
	.size	V6260.V2669.write_ppm_header, .Lfunc_end3-V6260.V2669.write_ppm_header
                                        # -- End function
	.globl	V6282.V2691.init_dirvecs # -- Begin function V6282.V2691.init_dirvecs
	.p2align	2
	.type	V6282.V2691.init_dirvecs,@function
V6282.V2691.init_dirvecs:               # @V6282.V2691.init_dirvecs
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	li %r3, 4
	bl V6279.V2688.create_dirvecs
	li %r3, 9
	li %r4, 0
	li %r5, 0
	bl V6276.V2685.calc_dirvec_rows
	li %r4, 120
	load %r3, %r0, 196
	addi	%r3, %r3, 476
.LBB4_1:                                # %then.i.i
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB4_1
	jump	.LBB4_2
.LBB4_2:                                # %V6280.V2689.init_dirvec_constants.exit.i
	li %r4, 120
	load %r3, %r0, 192
	addi	%r3, %r3, 476
.LBB4_3:                                # %then.i.i.1
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB4_3
	jump	.LBB4_4
.LBB4_4:                                # %V6280.V2689.init_dirvec_constants.exit.i.1
	li %r4, 120
	load %r3, %r0, 188
	addi	%r3, %r3, 476
.LBB4_5:                                # %then.i.i.2
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB4_5
	jump	.LBB4_6
.LBB4_6:                                # %V6280.V2689.init_dirvec_constants.exit.i.2
	li %r4, 120
	load %r3, %r0, 184
	addi	%r3, %r3, 476
.LBB4_7:                                # %then.i.i.3
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB4_7
	jump	.LBB4_8
.LBB4_8:                                # %V6280.V2689.init_dirvec_constants.exit.i.3
	li %r4, 120
	load %r3, %r0, 180
	addi	%r3, %r3, 476
.LBB4_9:                                # %then.i.i.4
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB4_9
	jump	.LBB4_10
.LBB4_10:                               # %V6280.V2689.init_dirvec_constants.exit.i.4
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end4:
	.size	V6282.V2691.init_dirvecs, .Lfunc_end4-V6282.V2691.init_dirvecs
                                        # -- End function
	.globl	V6188.V2597.d_vec       # -- Begin function V6188.V2597.d_vec
	.p2align	2
	.type	V6188.V2597.d_vec,@function
V6188.V2597.d_vec:                      # @V6188.V2597.d_vec
# %bb.0:                                # %entry
	load %r3, %r3, 0
	blr
.Lfunc_end5:
	.size	V6188.V2597.d_vec, .Lfunc_end5-V6188.V2597.d_vec
                                        # -- End function
	.globl	V6147.V2556.veccpy      # -- Begin function V6147.V2556.veccpy
	.p2align	2
	.type	V6147.V2556.veccpy,@function
V6147.V2556.veccpy:                     # @V6147.V2556.veccpy
# %bb.0:                                # %entry
	load %r5, %r4, 0
	store %r5, %r3, 0
	load %r5, %r4, 4
	store %r5, %r3, 4
	load %r4, %r4, 8
	store %r4, %r3, 8
	blr
.Lfunc_end6:
	.size	V6147.V2556.veccpy, .Lfunc_end6-V6147.V2556.veccpy
                                        # -- End function
	.globl	V6222.V2631.setup_dirvec_constants # -- Begin function V6222.V2631.setup_dirvec_constants
	.p2align	2
	.type	V6222.V2631.setup_dirvec_constants,@function
V6222.V2631.setup_dirvec_constants:     # @V6222.V2631.setup_dirvec_constants
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end7:
	.size	V6222.V2631.setup_dirvec_constants, .Lfunc_end7-V6222.V2631.setup_dirvec_constants
                                        # -- End function
	.globl	V6286.V2695.setup_reflections # -- Begin function V6286.V2695.setup_reflections
	.p2align	2
	.type	V6286.V2695.setup_reflections,@function
V6286.V2695.setup_reflections:          # @V6286.V2695.setup_reflections
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 14
	store %fp, %sp, 0
	store %lr, %fp, 13              # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB8_7
	jump	.LBB8_1
.LBB8_1:                                # %then
	srawi	%r6, %r3, 2
	load %r4, %r6, 13
	load %r5, %r4, 8
	cmpdi %r5,2
	bne	.LBB8_7
	jump	.LBB8_2
.LBB8_2:                                # %then2
	load %r5, %r4, 28
	load %r7, %r5, 0
	liw %r5, 1065353216
	cmpf %r7,%r5
	bge	.LBB8_7
	jump	.LBB8_3
.LBB8_3:                                # %else
	load %r5, %r4, 4
	cmpdi %r5,2
	beq	.LBB8_6
	jump	.LBB8_4
.LBB8_4:                                # %else
	cmpdi %r5,1
	bne	.LBB8_7
	jump	.LBB8_5
.LBB8_5:                                # %then4
	bl V6284.V2693.setup_rect_reflection
	jump	.LBB8_7
.LBB8_6:                                # %then6
	load %r3, %r4, 16
	load %r4, %r3, 8
	store %r4, %fp, 9               # 4-byte Folded Spill
	load %r4, %r3, 0
	store %r4, %fp, 8               # 4-byte Folded Spill
	load %r3, %r3, 4
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r3, %r0, 435
	store %r3, %fp, 12              # 4-byte Folded Spill
	load %r3, %r0, 87
	store %r3, %fp, 7               # 4-byte Folded Spill
	load %r3, %r0, 79
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r3, %r0, 83
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	store %r6, %fp, 10              # 4-byte Folded Spill
	store %r7, %fp, 11              # 4-byte Folded Spill
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	fmul	%r8, %r9, %r7
	load %r5, %fp, 8                # 4-byte Folded Reload
	load %r6, %fp, 5                # 4-byte Folded Reload
	fmul	%r4, %r6, %r5
	fadd	%r8, %r4, %r8
	load %r10, %fp, 9               # 4-byte Folded Reload
	load %r11, %fp, 7               # 4-byte Folded Reload
	fmul	%r4, %r11, %r10
	fadd	%r8, %r8, %r4
	fadd	%r4, %r10, %r10
	fmul	%r4, %r4, %r8
	fsub	%r4, %r4, %r11
	load %r10, %fp, 3               # 4-byte Folded Reload
	store %r10, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %r10, 8
	fadd	%r4, %r7, %r7
	fmul	%r4, %r4, %r8
	fsub	%r4, %r4, %r9
	store %r4, %r10, 4
	fadd	%r4, %r5, %r5
	fmul	%r4, %r4, %r8
	fsub	%r4, %r4, %r6
	store %r4, %r10, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	li %r3, 1
	load %r4, %fp, 10               # 4-byte Folded Reload
	or	%r3, %r4, %r3
	store %r3, %fp, 10              # 4-byte Folded Spill
	liw %r3, 1065353216
	load %r4, %fp, 11               # 4-byte Folded Reload
	fsub	%r3, %r3, %r4
	store %r3, %fp, 11              # 4-byte Folded Spill
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 10               # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r5, %fp, 12               # 4-byte Folded Reload
	srawi	%r4, %r5, 2
	store %r3, %r4, 255
	addi	%r3, %r5, 1
	store %r3, %r0, 435
.LBB8_7:                                # %ifcont13
	load %lr, %fp, 13               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end8:
	.size	V6286.V2695.setup_reflections, .Lfunc_end8-V6286.V2695.setup_reflections
                                        # -- End function
	.globl	V6265.V2674.pretrace_line # -- Begin function V6265.V2674.pretrace_line
	.p2align	2
	.type	V6265.V2674.pretrace_line,@function
V6265.V2674.pretrace_line:              # @V6265.V2674.pretrace_line
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	load %r6, %r0, 161
	sub	%r4, %r4, %r6
	itof	%r4, %r4
	load %r6, %r0, 159
	fmul	%r4, %r6, %r4
	load %r6, %r0, 177
	fmul	%r8, %r4, %r6
	load %r6, %r0, 173
	fmul	%r7, %r4, %r6
	load %r6, %r0, 169
	fmul	%r4, %r6, %r4
	load %r6, %r0, 172
	fadd	%r6, %r6, %r4
	load %r4, %r0, 176
	fadd	%r7, %r7, %r4
	load %r4, %r0, 180
	fadd	%r8, %r8, %r4
	load %r4, %r0, 155
	addi	%r4, %r4, -1
	bl V6264.V2673.pretrace_pixels
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end9:
	.size	V6265.V2674.pretrace_line, .Lfunc_end9-V6265.V2674.pretrace_line
                                        # -- End function
	.globl	V6267.V2676.scan_line   # -- Begin function V6267.V2676.scan_line
	.p2align	2
	.type	V6267.V2676.scan_line,@function
V6267.V2676.scan_line:                  # @V6267.V2676.scan_line
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 7
	store %fp, %sp, 0
	store %lr, %fp, 6               # 4-byte Folded Spill
	addi	%r8, %r4, 0
	addi	%r4, %r3, 0
	load %r3, %r0, 159
	cmpd %r3,%r4
	ble	.LBB10_7
	jump	.LBB10_1
.LBB10_1:                               # %then.preheader
	addi	%r9, %r6, 0
.LBB10_2:                               # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r7, %fp, 5               # 4-byte Folded Spill
	addi	%r7, %r5, 0
	addi	%r3, %r3, -1
	cmpd %r3,%r4
	store %r9, %fp, 4               # 4-byte Folded Spill
	store %r8, %fp, 3               # 4-byte Folded Spill
	store %r5, %fp, 2               # 4-byte Folded Spill
	ble	.LBB10_4
	jump	.LBB10_3
.LBB10_3:                               # %then1
                                        #   in Loop: Header=BB10_2 Depth=1
	load %r3, %r0, 161
	sub	%r3, %r4, %r3
	addi	%r3, %r3, 1
	itof	%r3, %r3
	store %r4, %fp, 1               # 4-byte Folded Spill
	load %r4, %r0, 159
	fmul	%r3, %r4, %r3
	load %r4, %r0, 177
	fmul	%r4, %r3, %r4
	load %r5, %r0, 173
	fmul	%r5, %r3, %r5
	load %r6, %r0, 169
	fmul	%r3, %r6, %r3
	load %r6, %r0, 172
	fadd	%r6, %r6, %r3
	load %r3, %r0, 176
	fadd	%r7, %r5, %r3
	load %r3, %r0, 180
	fadd	%r8, %r4, %r3
	load %r3, %r0, 155
	addi	%r4, %r3, -1
	addi	%r3, %r9, 0
	load %r5, %fp, 5                # 4-byte Folded Reload
	bl V6264.V2673.pretrace_pixels
	load %r4, %fp, 1                # 4-byte Folded Reload
	load %r7, %fp, 2                # 4-byte Folded Reload
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
.LBB10_4:                               # %ifcont
                                        #   in Loop: Header=BB10_2 Depth=1
	addi	%r3, %r4, 1
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 0
	addi	%r5, %r8, 0
	addi	%r6, %r7, 0
	addi	%r7, %r9, 0
	bl V6266.V2675.scan_pixel
	load %r7, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r7, 2
	addi	%r7, %r7, -3
	cmpdi %r3,4
	bgt	.LBB10_6
# %bb.5:                                # %ifcont
                                        #   in Loop: Header=BB10_2 Depth=1
	addi	%r7, %r3, 0
.LBB10_6:                               # %ifcont
                                        #   in Loop: Header=BB10_2 Depth=1
	load %r3, %r0, 159
	load %r4, %fp, 1                # 4-byte Folded Reload
	cmpd %r3,%r4
	load %r9, %fp, 3                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r5, %fp, 4                # 4-byte Folded Reload
	bgt	.LBB10_2
	jump	.LBB10_7
.LBB10_7:                               # %ifcont3
	load %lr, %fp, 6                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end10:
	.size	V6267.V2676.scan_line, .Lfunc_end10-V6267.V2676.scan_line
                                        # -- End function
	.globl	V6266.V2675.scan_pixel  # -- Begin function V6266.V2675.scan_pixel
	.p2align	2
	.type	V6266.V2675.scan_pixel,@function
V6266.V2675.scan_pixel:                 # @V6266.V2675.scan_pixel
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 10
	store %fp, %sp, 0
	store %lr, %fp, 9               # 4-byte Folded Spill
	store %r7, %fp, 2               # 4-byte Folded Spill
	store %r6, %fp, 4               # 4-byte Folded Spill
	store %r5, %fp, 1               # 4-byte Folded Spill
	store %r4, %fp, 3               # 4-byte Folded Spill
	load %r4, %r0, 155
	cmpd %r4,%r3
	ble	.LBB11_35
	jump	.LBB11_1
.LBB11_1:                               # %then.lr.ph
	load %r4, %fp, 3                # 4-byte Folded Reload
	cmpdi %r4,0
	bgt	.LBB11_3
	jump	.LBB11_2
.LBB11_3:                               # %then.us.preheader
	addi	%r4, %r4, 1
	store %r4, %fp, 5               # 4-byte Folded Spill
	srawi	%r4, %r3, 2
	load %r5, %fp, 4                # 4-byte Folded Reload
	add	%r6, %r5, %r4
.LBB11_4:                               # %then.us
                                        # =>This Inner Loop Header: Depth=1
	load %r4, %r6, 0
	load %r5, %r4, 0
	load %r4, %r5, 0
	store %r4, %r0, 152
	load %r4, %r5, 4
	store %r4, %r0, 156
	load %r4, %r5, 8
	store %r4, %r0, 160
	addi	%r7, %r3, 1
	load %r4, %r0, 159
	load %r5, %fp, 5                # 4-byte Folded Reload
	cmpd %r5,%r4
	store %r6, %fp, 8               # 4-byte Folded Spill
	store %r7, %fp, 7               # 4-byte Folded Spill
	bge	.LBB11_7
	jump	.LBB11_5
.LBB11_5:                               # %V6256.V2665.neighbors_exist.exit.us
                                        #   in Loop: Header=BB11_4 Depth=1
	load %r4, %r0, 155
	cmpdi %r3,1
	blt	.LBB11_7
	jump	.LBB11_6
.LBB11_6:                               # %V6256.V2665.neighbors_exist.exit.us
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpd %r7,%r4
	blt	.LBB11_8
	jump	.LBB11_7
.LBB11_8:                               # %else.us
                                        #   in Loop: Header=BB11_4 Depth=1
	load %r4, %fp, 3                # 4-byte Folded Reload
	load %r5, %fp, 1                # 4-byte Folded Reload
	load %r6, %fp, 4                # 4-byte Folded Reload
	load %r7, %fp, 2                # 4-byte Folded Reload
	li %r8, 0
	bl V6259.V2668.try_exploit_neighbors
.LBB11_9:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	load %r3, %r0, 152
	ftoi	%r3, %r3
	li %r4, 0
	store %r4, %fp, 6               # 4-byte Folded Spill
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB11_11
# %bb.10:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	addi	%r4, %r3, 0
.LBB11_11:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_13
# %bb.12:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	addi	%r3, %r4, 0
.LBB11_13:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 156
	ftoi	%r3, %r3
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB11_15
# %bb.14:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	addi	%r4, %r3, 0
.LBB11_15:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_17
# %bb.16:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	addi	%r3, %r4, 0
.LBB11_17:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 160
	ftoi	%r3, %r3
	cmpdi %r3,0
	blt	.LBB11_19
# %bb.18:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	store %r3, %fp, 6               # 4-byte Folded Spill
.LBB11_19:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_21
# %bb.20:                               # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	load %r3, %fp, 6                # 4-byte Folded Reload
.LBB11_21:                              # %ifcont.us
                                        #   in Loop: Header=BB11_4 Depth=1
	bl print_int
	li %r3, 10
	bl print_char
	load %r6, %fp, 8                # 4-byte Folded Reload
	addi	%r6, %r6, 4
	load %r3, %r0, 155
	load %r4, %fp, 7                # 4-byte Folded Reload
	cmpd %r3,%r4
	addi	%r3, %r4, 0
	bgt	.LBB11_4
	jump	.LBB11_35
.LBB11_7:                               # %then2.us
                                        #   in Loop: Header=BB11_4 Depth=1
	load %r3, %r6, 0
	li %r4, 0
	bl V6255.V2664.do_without_neighbors
	jump	.LBB11_9
.LBB11_2:                               # %then.preheader
	srawi	%r4, %r3, 2
	load %r5, %fp, 4                # 4-byte Folded Reload
	add	%r5, %r5, %r4
	jump	.LBB11_22
.LBB11_22:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %r5, 0
	load %r3, %r3, 0
	load %r4, %r3, 0
	store %r4, %r0, 152
	load %r4, %r3, 4
	store %r4, %r0, 156
	load %r3, %r3, 8
	store %r3, %r0, 160
	store %r5, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	li %r4, 0
	store %r4, %fp, 6               # 4-byte Folded Spill
	li %r4, 0
	bl V6255.V2664.do_without_neighbors
	load %r3, %r0, 152
	ftoi	%r3, %r3
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB11_24
# %bb.23:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	addi	%r4, %r3, 0
.LBB11_24:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_26
# %bb.25:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	addi	%r3, %r4, 0
.LBB11_26:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 156
	ftoi	%r3, %r3
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB11_28
# %bb.27:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	addi	%r4, %r3, 0
.LBB11_28:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_30
# %bb.29:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	addi	%r3, %r4, 0
.LBB11_30:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 160
	ftoi	%r3, %r3
	cmpdi %r3,0
	blt	.LBB11_32
# %bb.31:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	store %r3, %fp, 6               # 4-byte Folded Spill
.LBB11_32:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB11_34
# %bb.33:                               # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	load %r3, %fp, 6                # 4-byte Folded Reload
.LBB11_34:                              # %then
                                        #   in Loop: Header=BB11_22 Depth=1
	bl print_int
	li %r3, 10
	bl print_char
	load %r5, %fp, 7                # 4-byte Folded Reload
	addi	%r5, %r5, 4
	load %r3, %fp, 8                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	load %r4, %r0, 155
	cmpd %r4,%r3
	bgt	.LBB11_22
	jump	.LBB11_35
.LBB11_35:                              # %ifcont5
	load %lr, %fp, 9                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end11:
	.size	V6266.V2675.scan_pixel, .Lfunc_end11-V6266.V2675.scan_pixel
                                        # -- End function
	.globl	V6143.V2552.add_mod5    # -- Begin function V6143.V2552.add_mod5
	.p2align	2
	.type	V6143.V2552.add_mod5,@function
V6143.V2552.add_mod5:                   # @V6143.V2552.add_mod5
# %bb.0:                                # %entry
	add	%r4, %r4, %r3
	addi	%r3, %r4, -5
	cmpdi %r4,4
	bgt	.LBB12_2
# %bb.1:                                # %entry
	addi	%r3, %r4, 0
.LBB12_2:                               # %entry
	blr
.Lfunc_end12:
	.size	V6143.V2552.add_mod5, .Lfunc_end12-V6143.V2552.add_mod5
                                        # -- End function
	.globl	V6179.V2588.p_rgb       # -- Begin function V6179.V2588.p_rgb
	.p2align	2
	.type	V6179.V2588.p_rgb,@function
V6179.V2588.p_rgb:                      # @V6179.V2588.p_rgb
# %bb.0:                                # %entry
	load %r3, %r3, 0
	blr
.Lfunc_end13:
	.size	V6179.V2588.p_rgb, .Lfunc_end13-V6179.V2588.p_rgb
                                        # -- End function
	.globl	V6256.V2665.neighbors_exist # -- Begin function V6256.V2665.neighbors_exist
	.p2align	2
	.type	V6256.V2665.neighbors_exist,@function
V6256.V2665.neighbors_exist:            # @V6256.V2665.neighbors_exist
# %bb.0:                                # %entry
	load %r6, %r0, 159
	li %r5, 0
	cmpdi %r4,1
	blt	.LBB14_7
	jump	.LBB14_1
.LBB14_1:                               # %entry
	addi	%r4, %r4, 1
	cmpd %r4,%r6
	bge	.LBB14_7
	jump	.LBB14_2
.LBB14_2:                               # %then1
	addi	%r5, %r3, 1
	load %r6, %r0, 155
	li %r4, 1
	cmpd %r5,%r6
	li %r5, 1
	blt	.LBB14_4
# %bb.3:                                # %then1
	li %r5, 0
.LBB14_4:                               # %then1
	cmpdi %r3,0
	bgt	.LBB14_6
# %bb.5:                                # %then1
	li %r4, 0
.LBB14_6:                               # %then1
	and	%r5, %r4, %r5
.LBB14_7:                               # %ifcont9
	addi	%r3, %r5, 0
	blr
.Lfunc_end14:
	.size	V6256.V2665.neighbors_exist, .Lfunc_end14-V6256.V2665.neighbors_exist
                                        # -- End function
	.globl	V6255.V2664.do_without_neighbors # -- Begin function V6255.V2664.do_without_neighbors
	.p2align	2
	.type	V6255.V2664.do_without_neighbors,@function
V6255.V2664.do_without_neighbors:       # @V6255.V2664.do_without_neighbors
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	cmpdi %r4,4
	bgt	.LBB15_6
	jump	.LBB15_1
.LBB15_1:                               # %then.lr.ph
	addi	%r7, %r3, 0
	srawi	%r6, %r4, 2
	li %r5, 1
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB15_2:                               # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %r7, 8
	add	%r3, %r3, %r6
	load %r3, %r3, 0
	cmpdi %r3,0
	blt	.LBB15_6
	jump	.LBB15_3
.LBB15_3:                               # %then2
                                        #   in Loop: Header=BB15_2 Depth=1
	load %r3, %r7, 12
	add	%r3, %r3, %r6
	load %r3, %r3, 0
	and	%r3, %r3, %r5
	cmpdi %r3,0
	beq	.LBB15_5
	jump	.LBB15_4
.LBB15_4:                               # %else
                                        #   in Loop: Header=BB15_2 Depth=1
	load %r3, %r7, 20
	add	%r3, %r3, %r6
	load %r3, %r3, 0
	store %r4, %fp, 3               # 4-byte Folded Spill
	load %r4, %r3, 0
	load %r5, %r7, 16
	store %r5, %fp, 2               # 4-byte Folded Spill
	load %r5, %r7, 4
	store %r6, %fp, 4               # 4-byte Folded Spill
	load %r6, %r7, 28
	store %r4, %r0, 149
	load %r4, %r3, 4
	store %r4, %r0, 153
	load %r3, %r3, 8
	store %r3, %r0, 157
	load %r3, %fp, 4                # 4-byte Folded Reload
	add	%r3, %r6, %r3
	load %r4, %fp, 4                # 4-byte Folded Reload
	add	%r4, %r5, %r4
	load %r5, %r4, 0
	load %r4, %r3, 0
	load %r3, %r7, 24
	load %r3, %r3, 0
	bl V6252.V2661.trace_diffuse_ray_80percent
	load %r6, %fp, 4                # 4-byte Folded Reload
	load %r7, %fp, 1                # 4-byte Folded Reload
	load %r3, %fp, 2                # 4-byte Folded Reload
	add	%r3, %r3, %r6
	load %r3, %r3, 0
	load %r4, %r3, 0
	load %r5, %r0, 149
	fmul	%r4, %r4, %r5
	load %r5, %r0, 152
	fadd	%r4, %r5, %r4
	store %r4, %r0, 152
	load %r4, %r3, 4
	load %r5, %r0, 153
	fmul	%r4, %r4, %r5
	load %r5, %r0, 156
	fadd	%r4, %r5, %r4
	li %r5, 1
	store %r4, %r0, 156
	load %r3, %r3, 8
	load %r4, %r0, 157
	fmul	%r3, %r3, %r4
	load %r4, %r0, 160
	fadd	%r3, %r4, %r3
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r3, %r0, 160
.LBB15_5:                               # %ifcont
                                        #   in Loop: Header=BB15_2 Depth=1
	addi	%r6, %r6, 4
	addi	%r4, %r4, 1
	cmpdi %r4,5
	blt	.LBB15_2
	jump	.LBB15_6
.LBB15_6:                               # %ifcont8
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end15:
	.size	V6255.V2664.do_without_neighbors, .Lfunc_end15-V6255.V2664.do_without_neighbors
                                        # -- End function
	.globl	V6259.V2668.try_exploit_neighbors # -- Begin function V6259.V2668.try_exploit_neighbors
	.p2align	2
	.type	V6259.V2668.try_exploit_neighbors,@function
V6259.V2668.try_exploit_neighbors:      # @V6259.V2668.try_exploit_neighbors
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 13
	store %fp, %sp, 0
	store %lr, %fp, 12              # 4-byte Folded Spill
	cmpdi %r8,4
	bgt	.LBB16_11
	jump	.LBB16_1
.LBB16_1:                               # %then.lr.ph
	addi	%r4, %r5, 0
	addi	%r10, %r3, 0
	srawi	%r3, %r3, 2
	add	%r11, %r6, %r3
	add	%r12, %r7, %r3
	add	%r13, %r5, %r3
	srawi	%r14, %r8, 2
	addi	%r15, %r11, 4
	addi	%r16, %r11, -4
	li %r17, 1
	store %r7, %fp, 9               # 4-byte Folded Spill
	store %r6, %fp, 8               # 4-byte Folded Spill
	store %r5, %fp, 7               # 4-byte Folded Spill
	store %r10, %fp, 6              # 4-byte Folded Spill
	store %r11, %fp, 5              # 4-byte Folded Spill
	store %r12, %fp, 4              # 4-byte Folded Spill
	store %r13, %fp, 3              # 4-byte Folded Spill
	store %r15, %fp, 2              # 4-byte Folded Spill
	store %r16, %fp, 1              # 4-byte Folded Spill
.LBB16_2:                               # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %r11, 0
	load %r5, %r3, 8
	add	%r5, %r5, %r14
	load %r9, %r5, 0
	cmpdi %r9,0
	blt	.LBB16_11
	jump	.LBB16_3
.LBB16_3:                               # %then2
                                        #   in Loop: Header=BB16_2 Depth=1
	load %r5, %r13, 0
	load %r5, %r5, 8
	add	%r5, %r5, %r14
	load %r5, %r5, 0
	cmpd %r5,%r9
	bne	.LBB16_7
	jump	.LBB16_4
.LBB16_4:                               # %then.i
                                        #   in Loop: Header=BB16_2 Depth=1
	load %r5, %r12, 0
	load %r5, %r5, 8
	add	%r5, %r5, %r14
	load %r5, %r5, 0
	cmpd %r5,%r9
	bne	.LBB16_7
	jump	.LBB16_5
.LBB16_5:                               # %then4.i
                                        #   in Loop: Header=BB16_2 Depth=1
	load %r5, %r16, 0
	load %r5, %r5, 8
	add	%r5, %r5, %r14
	load %r5, %r5, 0
	cmpd %r5,%r9
	bne	.LBB16_7
	jump	.LBB16_6
.LBB16_6:                               # %V6258.V2667.neighbors_are_available.exit
                                        #   in Loop: Header=BB16_2 Depth=1
	load %r5, %r15, 0
	load %r5, %r5, 8
	add	%r5, %r5, %r14
	load %r5, %r5, 0
	cmpd %r5,%r9
	beq	.LBB16_8
	jump	.LBB16_7
.LBB16_8:                               # %else
                                        #   in Loop: Header=BB16_2 Depth=1
	load %r3, %r3, 12
	add	%r3, %r3, %r14
	load %r3, %r3, 0
	and	%r3, %r3, %r17
	cmpdi %r3,0
	beq	.LBB16_10
	jump	.LBB16_9
.LBB16_9:                               # %else7
                                        #   in Loop: Header=BB16_2 Depth=1
	addi	%r3, %r10, 0
	addi	%r5, %r6, 0
	addi	%r6, %r7, 0
	addi	%r7, %r8, 0
	store %r8, %fp, 11              # 4-byte Folded Spill
	store %r14, %fp, 10             # 4-byte Folded Spill
	bl V6254.V2663.calc_diffuse_using_5points
	li %r17, 1
	load %r16, %fp, 1               # 4-byte Folded Reload
	load %r15, %fp, 2               # 4-byte Folded Reload
	load %r14, %fp, 10              # 4-byte Folded Reload
	load %r13, %fp, 3               # 4-byte Folded Reload
	load %r12, %fp, 4               # 4-byte Folded Reload
	load %r11, %fp, 5               # 4-byte Folded Reload
	load %r10, %fp, 6               # 4-byte Folded Reload
	load %r4, %fp, 7                # 4-byte Folded Reload
	load %r6, %fp, 8                # 4-byte Folded Reload
	load %r7, %fp, 9                # 4-byte Folded Reload
	load %r8, %fp, 11               # 4-byte Folded Reload
.LBB16_10:                              # %ifcont
                                        #   in Loop: Header=BB16_2 Depth=1
	addi	%r14, %r14, 4
	addi	%r8, %r8, 1
	cmpdi %r8,5
	blt	.LBB16_2
	jump	.LBB16_11
.LBB16_7:                               # %then3
	addi	%r4, %r8, 0
	bl V6255.V2664.do_without_neighbors
	jump	.LBB16_11
.LBB16_11:                              # %ifcont12
	load %lr, %fp, 12               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end16:
	.size	V6259.V2668.try_exploit_neighbors, .Lfunc_end16-V6259.V2668.try_exploit_neighbors
                                        # -- End function
	.globl	V6262.V2671.write_rgb   # -- Begin function V6262.V2671.write_rgb
	.p2align	2
	.type	V6262.V2671.write_rgb,@function
V6262.V2671.write_rgb:                  # @V6262.V2671.write_rgb
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	load %r3, %r0, 152
	ftoi	%r3, %r3
	li %r4, 0
	store %r4, %fp, 1               # 4-byte Folded Spill
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB17_2
# %bb.1:                                # %entry
	addi	%r4, %r3, 0
.LBB17_2:                               # %entry
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB17_4
# %bb.3:                                # %entry
	addi	%r3, %r4, 0
.LBB17_4:                               # %entry
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 156
	ftoi	%r3, %r3
	cmpdi %r3,0
	li %r4, 0
	blt	.LBB17_6
# %bb.5:                                # %entry
	addi	%r4, %r3, 0
.LBB17_6:                               # %entry
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB17_8
# %bb.7:                                # %entry
	addi	%r3, %r4, 0
.LBB17_8:                               # %entry
	bl print_int
	li %r3, 32
	bl print_char
	load %r3, %r0, 160
	ftoi	%r3, %r3
	cmpdi %r3,0
	blt	.LBB17_10
# %bb.9:                                # %entry
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB17_10:                              # %entry
	cmpdi %r3,255
	li %r3, 255
	bgt	.LBB17_12
# %bb.11:                               # %entry
	load %r3, %fp, 1                # 4-byte Folded Reload
.LBB17_12:                              # %entry
	bl print_int
	li %r3, 10
	bl print_char
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end17:
	.size	V6262.V2671.write_rgb, .Lfunc_end17-V6262.V2671.write_rgb
                                        # -- End function
	.globl	V6261.V2670.write_rgb_element # -- Begin function V6261.V2670.write_rgb_element
	.p2align	2
	.type	V6261.V2670.write_rgb_element,@function
V6261.V2670.write_rgb_element:          # @V6261.V2670.write_rgb_element
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	ftoi	%r5, %r3
	li %r4, 0
	cmpdi %r5,0
	blt	.LBB18_2
# %bb.1:                                # %entry
	addi	%r4, %r5, 0
.LBB18_2:                               # %entry
	li %r3, 255
	cmpdi %r5,255
	bgt	.LBB18_4
# %bb.3:                                # %entry
	addi	%r3, %r4, 0
.LBB18_4:                               # %entry
	bl print_int
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end18:
	.size	V6261.V2670.write_rgb_element, .Lfunc_end18-V6261.V2670.write_rgb_element
                                        # -- End function
	.globl	V6257.V2666.get_surface_id # -- Begin function V6257.V2666.get_surface_id
	.p2align	2
	.type	V6257.V2666.get_surface_id,@function
V6257.V2666.get_surface_id:             # @V6257.V2666.get_surface_id
# %bb.0:                                # %entry
	srawi	%r4, %r4, 2
	load %r3, %r3, 8
	add	%r3, %r3, %r4
	load %r3, %r3, 0
	blr
.Lfunc_end19:
	.size	V6257.V2666.get_surface_id, .Lfunc_end19-V6257.V2666.get_surface_id
                                        # -- End function
	.globl	V6258.V2667.neighbors_are_available # -- Begin function V6258.V2667.neighbors_are_available
	.p2align	2
	.type	V6258.V2667.neighbors_are_available,@function
V6258.V2667.neighbors_are_available:    # @V6258.V2667.neighbors_are_available
# %bb.0:                                # %entry
	srawi	%r8, %r3, 2
	add	%r5, %r5, %r8
	add	%r3, %r4, %r8
	load %r3, %r3, 0
	load %r3, %r3, 8
	srawi	%r4, %r7, 2
	add	%r9, %r3, %r4
	load %r3, %r5, 0
	load %r3, %r3, 8
	add	%r7, %r3, %r4
	li %r3, 0
	load %r7, %r7, 0
	load %r9, %r9, 0
	cmpd %r9,%r7
	bne	.LBB20_5
	jump	.LBB20_1
.LBB20_1:                               # %then
	add	%r6, %r6, %r8
	load %r6, %r6, 0
	load %r6, %r6, 8
	add	%r6, %r6, %r4
	load %r6, %r6, 0
	cmpd %r6,%r7
	bne	.LBB20_5
	jump	.LBB20_2
.LBB20_2:                               # %then4
	load %r6, %r5, -4
	load %r6, %r6, 8
	add	%r6, %r6, %r4
	load %r6, %r6, 0
	cmpd %r6,%r7
	bne	.LBB20_5
	jump	.LBB20_3
.LBB20_3:                               # %then6
	load %r3, %r5, 4
	load %r3, %r3, 8
	add	%r3, %r3, %r4
	load %r4, %r3, 0
	li %r3, 1
	cmpd %r4,%r7
	beq	.LBB20_5
# %bb.4:                                # %then6
	li %r3, 0
.LBB20_5:                               # %ifcont14
	blr
.Lfunc_end20:
	.size	V6258.V2667.neighbors_are_available, .Lfunc_end20-V6258.V2667.neighbors_are_available
                                        # -- End function
	.globl	V6182.V2591.p_calc_diffuse # -- Begin function V6182.V2591.p_calc_diffuse
	.p2align	2
	.type	V6182.V2591.p_calc_diffuse,@function
V6182.V2591.p_calc_diffuse:             # @V6182.V2591.p_calc_diffuse
# %bb.0:                                # %entry
	load %r3, %r3, 12
	blr
.Lfunc_end21:
	.size	V6182.V2591.p_calc_diffuse, .Lfunc_end21-V6182.V2591.p_calc_diffuse
                                        # -- End function
	.globl	V6254.V2663.calc_diffuse_using_5points # -- Begin function V6254.V2663.calc_diffuse_using_5points
	.p2align	2
	.type	V6254.V2663.calc_diffuse_using_5points,@function
V6254.V2663.calc_diffuse_using_5points: # @V6254.V2663.calc_diffuse_using_5points
# %bb.0:                                # %entry
	srawi	%r8, %r3, 2
	add	%r4, %r4, %r8
	add	%r3, %r5, %r8
	add	%r5, %r6, %r8
	load %r5, %r5, 0
	load %r5, %r5, 20
	load %r6, %r3, 4
	load %r6, %r6, 20
	load %r8, %r3, 0
	load %r8, %r8, 20
	load %r9, %r3, -4
	load %r9, %r9, 20
	load %r4, %r4, 0
	load %r10, %r4, 20
	srawi	%r4, %r7, 2
	add	%r7, %r10, %r4
	load %r7, %r7, 0
	load %r10, %r7, 0
	store %r10, %r0, 149
	load %r10, %r7, 4
	store %r10, %r0, 153
	load %r7, %r7, 8
	store %r7, %r0, 157
	add	%r7, %r9, %r4
	load %r7, %r7, 0
	load %r9, %r7, 0
	load %r10, %r0, 149
	fadd	%r9, %r10, %r9
	store %r9, %r0, 149
	load %r9, %r7, 4
	load %r10, %r0, 153
	fadd	%r9, %r10, %r9
	store %r9, %r0, 153
	load %r7, %r7, 8
	load %r9, %r0, 157
	fadd	%r7, %r9, %r7
	store %r7, %r0, 157
	add	%r7, %r8, %r4
	load %r7, %r7, 0
	load %r8, %r7, 0
	load %r9, %r0, 149
	fadd	%r8, %r9, %r8
	store %r8, %r0, 149
	load %r8, %r7, 4
	load %r9, %r0, 153
	fadd	%r8, %r9, %r8
	store %r8, %r0, 153
	load %r7, %r7, 8
	load %r8, %r0, 157
	fadd	%r7, %r8, %r7
	store %r7, %r0, 157
	add	%r6, %r6, %r4
	load %r6, %r6, 0
	load %r7, %r6, 0
	load %r8, %r0, 149
	fadd	%r7, %r8, %r7
	store %r7, %r0, 149
	load %r7, %r6, 4
	load %r8, %r0, 153
	fadd	%r7, %r8, %r7
	store %r7, %r0, 153
	load %r6, %r6, 8
	load %r7, %r0, 157
	fadd	%r6, %r7, %r6
	store %r6, %r0, 157
	add	%r5, %r5, %r4
	load %r5, %r5, 0
	load %r6, %r5, 0
	load %r7, %r0, 149
	fadd	%r6, %r7, %r6
	store %r6, %r0, 149
	load %r6, %r5, 4
	load %r7, %r0, 153
	fadd	%r6, %r7, %r6
	store %r6, %r0, 153
	load %r5, %r5, 8
	load %r6, %r0, 157
	fadd	%r5, %r6, %r5
	store %r5, %r0, 157
	load %r3, %r3, 0
	load %r3, %r3, 16
	add	%r3, %r3, %r4
	load %r3, %r3, 0
	load %r4, %r3, 0
	load %r5, %r0, 149
	fmul	%r4, %r4, %r5
	load %r5, %r0, 152
	fadd	%r4, %r5, %r4
	store %r4, %r0, 152
	load %r4, %r3, 4
	load %r5, %r0, 153
	fmul	%r4, %r4, %r5
	load %r5, %r0, 156
	fadd	%r4, %r5, %r4
	store %r4, %r0, 156
	load %r3, %r3, 8
	load %r4, %r0, 157
	fmul	%r3, %r3, %r4
	load %r4, %r0, 160
	fadd	%r3, %r4, %r3
	store %r3, %r0, 160
	blr
.Lfunc_end22:
	.size	V6254.V2663.calc_diffuse_using_5points, .Lfunc_end22-V6254.V2663.calc_diffuse_using_5points
                                        # -- End function
	.globl	V6184.V2593.p_received_ray_20percent # -- Begin function V6184.V2593.p_received_ray_20percent
	.p2align	2
	.type	V6184.V2593.p_received_ray_20percent,@function
V6184.V2593.p_received_ray_20percent:   # @V6184.V2593.p_received_ray_20percent
# %bb.0:                                # %entry
	load %r3, %r3, 20
	blr
.Lfunc_end23:
	.size	V6184.V2593.p_received_ray_20percent, .Lfunc_end23-V6184.V2593.p_received_ray_20percent
                                        # -- End function
	.globl	V6154.V2563.vecadd      # -- Begin function V6154.V2563.vecadd
	.p2align	2
	.type	V6154.V2563.vecadd,@function
V6154.V2563.vecadd:                     # @V6154.V2563.vecadd
# %bb.0:                                # %entry
	load %r5, %r4, 0
	load %r6, %r3, 0
	fadd	%r5, %r6, %r5
	store %r5, %r3, 0
	load %r5, %r3, 4
	load %r6, %r4, 4
	fadd	%r5, %r5, %r6
	store %r5, %r3, 4
	load %r4, %r4, 8
	load %r5, %r3, 8
	fadd	%r4, %r5, %r4
	store %r4, %r3, 8
	blr
.Lfunc_end24:
	.size	V6154.V2563.vecadd, .Lfunc_end24-V6154.V2563.vecadd
                                        # -- End function
	.globl	V6183.V2592.p_energy    # -- Begin function V6183.V2592.p_energy
	.p2align	2
	.type	V6183.V2592.p_energy,@function
V6183.V2592.p_energy:                   # @V6183.V2592.p_energy
# %bb.0:                                # %entry
	load %r3, %r3, 16
	blr
.Lfunc_end25:
	.size	V6183.V2592.p_energy, .Lfunc_end25-V6183.V2592.p_energy
                                        # -- End function
	.globl	V6157.V2566.vecaccumv   # -- Begin function V6157.V2566.vecaccumv
	.p2align	2
	.type	V6157.V2566.vecaccumv,@function
V6157.V2566.vecaccumv:                  # @V6157.V2566.vecaccumv
# %bb.0:                                # %entry
	load %r6, %r5, 0
	load %r7, %r4, 0
	fmul	%r6, %r7, %r6
	load %r7, %r3, 0
	fadd	%r6, %r7, %r6
	store %r6, %r3, 0
	load %r6, %r5, 4
	load %r7, %r4, 4
	fmul	%r6, %r7, %r6
	load %r7, %r3, 4
	fadd	%r6, %r7, %r6
	store %r6, %r3, 4
	load %r5, %r5, 8
	load %r4, %r4, 8
	fmul	%r4, %r4, %r5
	load %r5, %r3, 8
	fadd	%r4, %r5, %r4
	store %r4, %r3, 8
	blr
.Lfunc_end26:
	.size	V6157.V2566.vecaccumv, .Lfunc_end26-V6157.V2566.vecaccumv
                                        # -- End function
	.globl	V6181.V2590.p_surface_ids # -- Begin function V6181.V2590.p_surface_ids
	.p2align	2
	.type	V6181.V2590.p_surface_ids,@function
V6181.V2590.p_surface_ids:              # @V6181.V2590.p_surface_ids
# %bb.0:                                # %entry
	load %r3, %r3, 8
	blr
.Lfunc_end27:
	.size	V6181.V2590.p_surface_ids, .Lfunc_end27-V6181.V2590.p_surface_ids
                                        # -- End function
	.globl	V6253.V2662.calc_diffuse_using_1point # -- Begin function V6253.V2662.calc_diffuse_using_1point
	.p2align	2
	.type	V6253.V2662.calc_diffuse_using_1point,@function
V6253.V2662.calc_diffuse_using_1point:  # @V6253.V2662.calc_diffuse_using_1point
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	srawi	%r8, %r4, 2
	store %r8, %fp, 1               # 4-byte Folded Spill
	load %r4, %r3, 20
	add	%r4, %r4, %r8
	load %r4, %r4, 0
	load %r5, %r4, 0
	load %r6, %r3, 16
	store %r6, %fp, 2               # 4-byte Folded Spill
	load %r6, %r3, 4
	load %r7, %r3, 28
	store %r5, %r0, 149
	load %r5, %r4, 4
	store %r5, %r0, 153
	load %r4, %r4, 8
	store %r4, %r0, 157
	add	%r4, %r7, %r8
	add	%r5, %r6, %r8
	load %r5, %r5, 0
	load %r4, %r4, 0
	load %r3, %r3, 24
	load %r3, %r3, 0
	bl V6252.V2661.trace_diffuse_ray_80percent
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %fp, 1                # 4-byte Folded Reload
	add	%r3, %r3, %r4
	load %r3, %r3, 0
	load %r4, %r3, 0
	load %r5, %r0, 149
	fmul	%r4, %r4, %r5
	load %r5, %r0, 152
	fadd	%r4, %r5, %r4
	store %r4, %r0, 152
	load %r4, %r3, 4
	load %r5, %r0, 153
	fmul	%r4, %r4, %r5
	load %r5, %r0, 156
	fadd	%r4, %r5, %r4
	store %r4, %r0, 156
	load %r3, %r3, 8
	load %r4, %r0, 157
	fmul	%r3, %r3, %r4
	load %r4, %r0, 160
	fadd	%r3, %r4, %r3
	store %r3, %r0, 160
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end28:
	.size	V6253.V2662.calc_diffuse_using_1point, .Lfunc_end28-V6253.V2662.calc_diffuse_using_1point
                                        # -- End function
	.globl	V6187.V2596.p_nvectors  # -- Begin function V6187.V2596.p_nvectors
	.p2align	2
	.type	V6187.V2596.p_nvectors,@function
V6187.V2596.p_nvectors:                 # @V6187.V2596.p_nvectors
# %bb.0:                                # %entry
	load %r3, %r3, 28
	blr
.Lfunc_end29:
	.size	V6187.V2596.p_nvectors, .Lfunc_end29-V6187.V2596.p_nvectors
                                        # -- End function
	.globl	V6180.V2589.p_intersection_points # -- Begin function V6180.V2589.p_intersection_points
	.p2align	2
	.type	V6180.V2589.p_intersection_points,@function
V6180.V2589.p_intersection_points:      # @V6180.V2589.p_intersection_points
# %bb.0:                                # %entry
	load %r3, %r3, 4
	blr
.Lfunc_end30:
	.size	V6180.V2589.p_intersection_points, .Lfunc_end30-V6180.V2589.p_intersection_points
                                        # -- End function
	.globl	V6185.V2594.p_group_id  # -- Begin function V6185.V2594.p_group_id
	.p2align	2
	.type	V6185.V2594.p_group_id,@function
V6185.V2594.p_group_id:                 # @V6185.V2594.p_group_id
# %bb.0:                                # %entry
	load %r3, %r3, 24
	load %r3, %r3, 0
	blr
.Lfunc_end31:
	.size	V6185.V2594.p_group_id, .Lfunc_end31-V6185.V2594.p_group_id
                                        # -- End function
	.globl	V6252.V2661.trace_diffuse_ray_80percent # -- Begin function V6252.V2661.trace_diffuse_ray_80percent
	.p2align	2
	.type	V6252.V2661.trace_diffuse_ray_80percent,@function
V6252.V2661.trace_diffuse_ray_80percent: # @V6252.V2661.trace_diffuse_ray_80percent
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 9
	store %fp, %sp, 0
	store %lr, %fp, 8               # 4-byte Folded Spill
	addi	%r8, %r4, 0
	store %r3, %fp, 1               # 4-byte Folded Spill
	cmpdi %r3,0
	store %r5, %fp, 2               # 4-byte Folded Spill
	bne	.LBB32_2
	jump	.LBB32_1
.LBB32_2:                               # %else2
	load %r3, %r5, 0
	load %r4, %r0, 180
	store %r4, %fp, 6               # 4-byte Folded Spill
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	store %r8, %fp, 7               # 4-byte Folded Spill
	bl V6223.V2632.setup_startp_constants
	load %r8, %fp, 7                # 4-byte Folded Reload
	li %r4, 118
	load %r3, %fp, 6                # 4-byte Folded Reload
	addi	%r9, %r3, 476
	addi	%r3, %r8, 8
	store %r3, %fp, 6               # 4-byte Folded Spill
	addi	%r3, %r8, 4
	store %r3, %fp, 5               # 4-byte Folded Spill
.LBB32_3:                               # %then.i.i
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 4               # 4-byte Folded Spill
	load %r3, %r9, -4
	load %r4, %r8, 4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %r8, 8
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 3               # 4-byte Folded Spill
	blt	.LBB32_5
	jump	.LBB32_4
.LBB32_5:                               # %else.i.i
                                        #   in Loop: Header=BB32_3 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r9, 0
	bl V6249.V2658.trace_diffuse_ray
.LBB32_6:                               # %ifcont.i.i
                                        #   in Loop: Header=BB32_3 Depth=1
	load %r9, %fp, 3                # 4-byte Folded Reload
	addi	%r9, %r9, -8
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r4, %r4, -2
	cmpdi %r4,-1
	load %r8, %fp, 7                # 4-byte Folded Reload
	bgt	.LBB32_3
	jump	.LBB32_7
.LBB32_4:                               # %then2.i.i
                                        #   in Loop: Header=BB32_3 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	jump	.LBB32_6
.LBB32_7:                               # %V6251.V2660.trace_diffuse_rays.exit
	load %r3, %fp, 1                # 4-byte Folded Reload
	cmpdi %r3,1
	load %r5, %fp, 2                # 4-byte Folded Reload
	beq	.LBB32_14
	jump	.LBB32_8
.LBB32_1:                               # %entry.else8_crit_edge
	addi	%r3, %r8, 8
	store %r3, %fp, 6               # 4-byte Folded Spill
	addi	%r3, %r8, 4
	store %r3, %fp, 5               # 4-byte Folded Spill
	jump	.LBB32_8
.LBB32_8:                               # %else8
	store %r8, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	load %r4, %r0, 184
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6223.V2632.setup_startp_constants
	load %r8, %fp, 7                # 4-byte Folded Reload
	li %r9, 118
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r10, %r3, 476
.LBB32_9:                               # %then.i.i42
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r4, %r3, 0
	load %r3, %r10, -4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %fp, 6                # 4-byte Folded Reload
	load %r6, %r6, 0
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 4               # 4-byte Folded Spill
	store %r10, %fp, 3              # 4-byte Folded Spill
	blt	.LBB32_11
	jump	.LBB32_10
.LBB32_11:                              # %else.i.i50
                                        #   in Loop: Header=BB32_9 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r10, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 3               # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	load %r8, %fp, 7                # 4-byte Folded Reload
.LBB32_12:                              # %ifcont.i.i52
                                        #   in Loop: Header=BB32_9 Depth=1
	addi	%r10, %r10, -8
	addi	%r9, %r9, -2
	cmpdi %r9,-1
	bgt	.LBB32_9
	jump	.LBB32_13
.LBB32_10:                              # %then2.i.i44
                                        #   in Loop: Header=BB32_9 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 3               # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	load %r8, %fp, 7                # 4-byte Folded Reload
	jump	.LBB32_12
.LBB32_13:                              # %V6251.V2660.trace_diffuse_rays.exit53
	load %r3, %fp, 1                # 4-byte Folded Reload
	cmpdi %r3,2
	load %r5, %fp, 2                # 4-byte Folded Reload
	beq	.LBB32_20
	jump	.LBB32_14
.LBB32_14:                              # %else14
	store %r8, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	load %r4, %r0, 188
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6223.V2632.setup_startp_constants
	load %r8, %fp, 7                # 4-byte Folded Reload
	li %r9, 118
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r10, %r3, 476
.LBB32_15:                              # %then.i.i88
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r4, %r3, 0
	load %r3, %r10, -4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %fp, 6                # 4-byte Folded Reload
	load %r6, %r6, 0
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 4               # 4-byte Folded Spill
	store %r10, %fp, 3              # 4-byte Folded Spill
	blt	.LBB32_17
	jump	.LBB32_16
.LBB32_17:                              # %else.i.i96
                                        #   in Loop: Header=BB32_15 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r10, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 3               # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	load %r8, %fp, 7                # 4-byte Folded Reload
.LBB32_18:                              # %ifcont.i.i98
                                        #   in Loop: Header=BB32_15 Depth=1
	addi	%r10, %r10, -8
	addi	%r9, %r9, -2
	cmpdi %r9,-1
	bgt	.LBB32_15
	jump	.LBB32_19
.LBB32_16:                              # %then2.i.i90
                                        #   in Loop: Header=BB32_15 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 3               # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	load %r8, %fp, 7                # 4-byte Folded Reload
	jump	.LBB32_18
.LBB32_19:                              # %V6251.V2660.trace_diffuse_rays.exit99
	load %r3, %fp, 1                # 4-byte Folded Reload
	cmpdi %r3,3
	load %r5, %fp, 2                # 4-byte Folded Reload
	beq	.LBB32_26
	jump	.LBB32_20
.LBB32_20:                              # %else20
	store %r8, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	load %r4, %r0, 192
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6223.V2632.setup_startp_constants
	load %r8, %fp, 7                # 4-byte Folded Reload
	li %r3, 118
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r9, %r4, 476
.LBB32_21:                              # %then.i.i134
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 4               # 4-byte Folded Spill
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r4, %r3, 0
	load %r3, %r9, -4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %fp, 6                # 4-byte Folded Reload
	load %r6, %r6, 0
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 3               # 4-byte Folded Spill
	blt	.LBB32_23
	jump	.LBB32_22
.LBB32_23:                              # %else.i.i142
                                        #   in Loop: Header=BB32_21 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r9, 0
	bl V6249.V2658.trace_diffuse_ray
.LBB32_24:                              # %ifcont.i.i144
                                        #   in Loop: Header=BB32_21 Depth=1
	load %r9, %fp, 3                # 4-byte Folded Reload
	addi	%r9, %r9, -8
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r3, -2
	cmpdi %r3,-1
	load %r8, %fp, 7                # 4-byte Folded Reload
	bgt	.LBB32_21
	jump	.LBB32_25
.LBB32_22:                              # %then2.i.i136
                                        #   in Loop: Header=BB32_21 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	jump	.LBB32_24
.LBB32_25:                              # %V6251.V2660.trace_diffuse_rays.exit145
	load %r3, %fp, 1                # 4-byte Folded Reload
	cmpdi %r3,4
	load %r5, %fp, 2                # 4-byte Folded Reload
	beq	.LBB32_31
	jump	.LBB32_26
.LBB32_26:                              # %else26
	store %r8, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	load %r4, %r0, 196
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6223.V2632.setup_startp_constants
	load %r7, %fp, 7                # 4-byte Folded Reload
	li %r8, 118
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r9, %r3, 476
.LBB32_27:                              # %then.i.i180
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r4, %r3, 0
	load %r3, %r9, -4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r7, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %fp, 6                # 4-byte Folded Reload
	load %r6, %r6, 0
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r8, %fp, 4               # 4-byte Folded Spill
	store %r9, %fp, 3               # 4-byte Folded Spill
	blt	.LBB32_29
	jump	.LBB32_28
.LBB32_29:                              # %else.i.i188
                                        #   in Loop: Header=BB32_27 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r9, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r9, %fp, 3                # 4-byte Folded Reload
	load %r8, %fp, 4                # 4-byte Folded Reload
	load %r7, %fp, 7                # 4-byte Folded Reload
.LBB32_30:                              # %ifcont.i.i190
                                        #   in Loop: Header=BB32_27 Depth=1
	addi	%r9, %r9, -8
	addi	%r8, %r8, -2
	cmpdi %r8,-1
	bgt	.LBB32_27
	jump	.LBB32_31
.LBB32_28:                              # %then2.i.i182
                                        #   in Loop: Header=BB32_27 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r9, %fp, 3                # 4-byte Folded Reload
	load %r8, %fp, 4                # 4-byte Folded Reload
	load %r7, %fp, 7                # 4-byte Folded Reload
	jump	.LBB32_30
.LBB32_31:                              # %ifcont27
	load %lr, %fp, 8                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end32:
	.size	V6252.V2661.trace_diffuse_ray_80percent, .Lfunc_end32-V6252.V2661.trace_diffuse_ray_80percent
                                        # -- End function
	.globl	V6251.V2660.trace_diffuse_rays # -- Begin function V6251.V2660.trace_diffuse_rays
	.p2align	2
	.type	V6251.V2660.trace_diffuse_rays,@function
V6251.V2660.trace_diffuse_rays:         # @V6251.V2660.trace_diffuse_rays
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r5, 0
	store %r3, %r0, 163
	load %r3, %r5, 4
	store %r3, %r0, 167
	load %r3, %r5, 8
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6223.V2632.setup_startp_constants
	li %r9, 118
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r10, %r3, 476
.LBB33_1:                               # %then.i
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %r10, -4
	load %r8, %fp, 1                # 4-byte Folded Reload
	load %r4, %r8, 4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %r8, 8
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 3               # 4-byte Folded Spill
	store %r10, %fp, 2              # 4-byte Folded Spill
	blt	.LBB33_3
	jump	.LBB33_2
.LBB33_3:                               # %else.i
                                        #   in Loop: Header=BB33_1 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r10, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 2               # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
.LBB33_4:                               # %ifcont.i
                                        #   in Loop: Header=BB33_1 Depth=1
	addi	%r10, %r10, -8
	addi	%r9, %r9, -2
	cmpdi %r9,-1
	bgt	.LBB33_1
	jump	.LBB33_5
.LBB33_2:                               # %then2.i
                                        #   in Loop: Header=BB33_1 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 2               # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
	jump	.LBB33_4
.LBB33_5:                               # %V6250.V2659.iter_trace_diffuse_rays.exit
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end33:
	.size	V6251.V2660.trace_diffuse_rays, .Lfunc_end33-V6251.V2660.trace_diffuse_rays
                                        # -- End function
	.globl	V6224.V2633.setup_startp # -- Begin function V6224.V2633.setup_startp
	.p2align	2
	.type	V6224.V2633.setup_startp,@function
V6224.V2633.setup_startp:               # @V6224.V2633.setup_startp
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	load %r4, %r3, 0
	store %r4, %r0, 163
	load %r4, %r3, 4
	store %r4, %r0, 167
	load %r4, %r3, 8
	store %r4, %r0, 171
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6223.V2632.setup_startp_constants
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end34:
	.size	V6224.V2633.setup_startp, .Lfunc_end34-V6224.V2633.setup_startp
                                        # -- End function
	.globl	V6250.V2659.iter_trace_diffuse_rays # -- Begin function V6250.V2659.iter_trace_diffuse_rays
	.p2align	2
	.type	V6250.V2659.iter_trace_diffuse_rays,@function
V6250.V2659.iter_trace_diffuse_rays:    # @V6250.V2659.iter_trace_diffuse_rays
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	cmpdi %r6,0
	blt	.LBB35_6
	jump	.LBB35_1
.LBB35_1:                               # %then.lr.ph
	srawi	%r4, %r6, 2
	add	%r3, %r3, %r4
	addi	%r10, %r3, 4
.LBB35_2:                               # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %r10, -4
	load %r9, %fp, 1                # 4-byte Folded Reload
	load %r4, %r9, 4
	load %r5, %r3, 0
	load %r7, %r5, 4
	fmul	%r4, %r7, %r4
	load %r8, %r9, 0
	load %r7, %r5, 0
	fmul	%r7, %r7, %r8
	fadd	%r4, %r7, %r4
	load %r7, %r9, 8
	load %r5, %r5, 8
	fmul	%r5, %r5, %r7
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r6, %fp, 3               # 4-byte Folded Spill
	store %r10, %fp, 2              # 4-byte Folded Spill
	blt	.LBB35_4
	jump	.LBB35_3
.LBB35_4:                               # %else
                                        #   in Loop: Header=BB35_2 Depth=1
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r10, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 2               # 4-byte Folded Reload
	load %r6, %fp, 3                # 4-byte Folded Reload
.LBB35_5:                               # %ifcont
                                        #   in Loop: Header=BB35_2 Depth=1
	addi	%r10, %r10, -8
	addi	%r6, %r6, -2
	cmpdi %r6,-1
	bgt	.LBB35_2
	jump	.LBB35_6
.LBB35_3:                               # %then2
                                        #   in Loop: Header=BB35_2 Depth=1
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 2               # 4-byte Folded Reload
	load %r6, %fp, 3                # 4-byte Folded Reload
	jump	.LBB35_5
.LBB35_6:                               # %ifcont6
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end35:
	.size	V6250.V2659.iter_trace_diffuse_rays, .Lfunc_end35-V6250.V2659.iter_trace_diffuse_rays
                                        # -- End function
	.globl	V6151.V2560.veciprod    # -- Begin function V6151.V2560.veciprod
	.p2align	2
	.type	V6151.V2560.veciprod,@function
V6151.V2560.veciprod:                   # @V6151.V2560.veciprod
# %bb.0:                                # %entry
	load %r5, %r4, 4
	load %r6, %r3, 4
	fmul	%r5, %r6, %r5
	load %r6, %r4, 0
	load %r7, %r3, 0
	fmul	%r6, %r7, %r6
	fadd	%r5, %r6, %r5
	load %r4, %r4, 8
	load %r3, %r3, 8
	fmul	%r3, %r3, %r4
	fadd	%r3, %r5, %r3
	blr
.Lfunc_end36:
	.size	V6151.V2560.veciprod, .Lfunc_end36-V6151.V2560.veciprod
                                        # -- End function
	.globl	V6133.V2542.fisneg      # -- Begin function V6133.V2542.fisneg
	.p2align	2
	.type	V6133.V2542.fisneg,@function
V6133.V2542.fisneg:                     # @V6133.V2542.fisneg
# %bb.0:                                # %entry
	addi	%r4, %r3, 0
	liw %r5, 0
	li %r3, 1
	cmpf %r4,%r5
	blt	.LBB37_2
# %bb.1:                                # %entry
	li %r3, 0
.LBB37_2:                               # %entry
	blr
.Lfunc_end37:
	.size	V6133.V2542.fisneg, .Lfunc_end37-V6133.V2542.fisneg
                                        # -- End function
	.globl	V6249.V2658.trace_diffuse_ray # -- Begin function V6249.V2658.trace_diffuse_ray
	.p2align	2
	.type	V6249.V2658.trace_diffuse_ray,@function
V6249.V2658.trace_diffuse_ray:          # @V6249.V2658.trace_diffuse_ray
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	store %r4, %fp, 3               # 4-byte Folded Spill
	addi	%r5, %r3, 0
	liw %r3, 1315859240
	store %r3, %r0, 138
	load %r4, %r0, 135
	li %r3, 0
	store %r5, %fp, 2               # 4-byte Folded Spill
	bl V6239.V2648.trace_or_matrix_fast
	load %r3, %r0, 138
	liw %r4, -1110651699
	cmpf %r3,%r4
	ble	.LBB38_15
	jump	.LBB38_1
.LBB38_1:                               # %entry
	liw %r4, 1287568416
	cmpf %r3,%r4
	bge	.LBB38_15
	jump	.LBB38_2
.LBB38_2:                               # %else
	load %r3, %r0, 142
	srawi	%r3, %r3, 2
	load %r7, %r3, 13
	load %r3, %r7, 4
	cmpdi %r3,2
	store %r7, %fp, 1               # 4-byte Folded Spill
	beq	.LBB38_9
	jump	.LBB38_3
.LBB38_3:                               # %else
	cmpdi %r3,1
	bne	.LBB38_10
	jump	.LBB38_4
.LBB38_4:                               # %then.i
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r4, %r3, 0
	load %r3, %r0, 137
	li %r5, 0
	store %r5, %r0, 143
	store %r5, %r0, 147
	store %r5, %r0, 151
	srawi	%r3, %r3, 2
	add	%r4, %r4, %r3
	load %r6, %r4, -4
	liw %r4, 0
	liw %r5, -1082130432
	cmpf %r6,%r4
	bgt	.LBB38_6
# %bb.5:                                # %then.i
	liw %r5, 1065353216
.LBB38_6:                               # %then.i
	cmpf %r6,%r4
	beq	.LBB38_8
# %bb.7:                                # %then.i
	addi	%r4, %r5, 0
.LBB38_8:                               # %then.i
	store %r4, %r3, 139
	jump	.LBB38_11
.LBB38_9:                               # %then1.i
	load %r3, %r7, 16
	load %r3, %r3, 0
	liw %r4, 0
	fsub	%r3, %r4, %r3
	store %r3, %r0, 143
	load %r3, %r7, 16
	load %r3, %r3, 4
	fsub	%r3, %r4, %r3
	store %r3, %r0, 147
	load %r3, %r7, 16
	load %r3, %r3, 8
	fsub	%r3, %r4, %r3
	store %r3, %r0, 151
	jump	.LBB38_11
.LBB38_10:                              # %else2.i
	addi	%r3, %r7, 0
	bl V6243.V2652.get_nvector_second
	load %r7, %fp, 1                # 4-byte Folded Reload
.LBB38_11:                              # %V6244.V2653.get_nvector.exit
	addi	%r3, %r7, 0
	li %r4, 139
	bl V6245.V2654.utexture
	load %r4, %r0, 135
	li %r3, 0
	bl V6232.V2641.shadow_check_one_or_matrix
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB38_15
	jump	.LBB38_12
.LBB38_12:                              # %else3
	load %r6, %fp, 1                # 4-byte Folded Reload
	load %r3, %r0, 83
	load %r4, %r0, 147
	fmul	%r3, %r4, %r3
	load %r4, %r0, 79
	load %r5, %r0, 143
	fmul	%r4, %r5, %r4
	fadd	%r3, %r4, %r3
	load %r4, %r0, 87
	load %r5, %r0, 151
	fmul	%r4, %r5, %r4
	fadd	%r3, %r3, %r4
	liw %r4, 0
	fsub	%r3, %r4, %r3
	cmpf %r3,%r4
	bgt	.LBB38_14
# %bb.13:                               # %else3
	liw %r3, 0
.LBB38_14:                              # %else3
	load %r4, %fp, 3                # 4-byte Folded Reload
	fmul	%r3, %r3, %r4
	load %r4, %r6, 28
	load %r4, %r4, 0
	fmul	%r3, %r4, %r3
	load %r4, %r0, 146
	fmul	%r4, %r4, %r3
	load %r5, %r0, 149
	fadd	%r4, %r5, %r4
	store %r4, %r0, 149
	load %r4, %r0, 150
	fmul	%r4, %r4, %r3
	load %r5, %r0, 153
	fadd	%r4, %r5, %r4
	store %r4, %r0, 153
	load %r4, %r0, 154
	fmul	%r3, %r3, %r4
	load %r4, %r0, 157
	fadd	%r3, %r4, %r3
	store %r3, %r0, 157
.LBB38_15:                              # %ifcont7
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end38:
	.size	V6249.V2658.trace_diffuse_ray, .Lfunc_end38-V6249.V2658.trace_diffuse_ray
                                        # -- End function
	.globl	V6240.V2649.judge_intersection_fast # -- Begin function V6240.V2649.judge_intersection_fast
	.p2align	2
	.type	V6240.V2649.judge_intersection_fast,@function
V6240.V2649.judge_intersection_fast:    # @V6240.V2649.judge_intersection_fast
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	addi	%r5, %r3, 0
	liw %r3, 1315859240
	store %r3, %r0, 138
	load %r4, %r0, 135
	li %r3, 0
	bl V6239.V2648.trace_or_matrix_fast
	liw %r4, 1287568416
	li %r3, 1
	load %r5, %r0, 138
	cmpf %r5,%r4
	li %r4, 1
	blt	.LBB39_2
# %bb.1:                                # %entry
	li %r4, 0
.LBB39_2:                               # %entry
	liw %r6, -1110651699
	cmpf %r5,%r6
	bgt	.LBB39_4
# %bb.3:                                # %entry
	li %r3, 0
.LBB39_4:                               # %entry
	and	%r3, %r3, %r4
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end39:
	.size	V6240.V2649.judge_intersection_fast, .Lfunc_end39-V6240.V2649.judge_intersection_fast
                                        # -- End function
	.globl	V6244.V2653.get_nvector # -- Begin function V6244.V2653.get_nvector
	.p2align	2
	.type	V6244.V2653.get_nvector,@function
V6244.V2653.get_nvector:                # @V6244.V2653.get_nvector
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	load %r5, %r3, 4
	cmpdi %r5,2
	beq	.LBB40_7
	jump	.LBB40_1
.LBB40_1:                               # %entry
	cmpdi %r5,1
	bne	.LBB40_8
	jump	.LBB40_2
.LBB40_2:                               # %then
	load %r3, %r0, 137
	li %r5, 0
	store %r5, %r0, 143
	store %r5, %r0, 147
	store %r5, %r0, 151
	srawi	%r3, %r3, 2
	add	%r4, %r4, %r3
	load %r6, %r4, -4
	liw %r4, 0
	liw %r5, -1082130432
	cmpf %r6,%r4
	bgt	.LBB40_4
# %bb.3:                                # %then
	liw %r5, 1065353216
.LBB40_4:                               # %then
	cmpf %r6,%r4
	beq	.LBB40_6
# %bb.5:                                # %then
	addi	%r4, %r5, 0
.LBB40_6:                               # %then
	store %r4, %r3, 139
	jump	.LBB40_9
.LBB40_7:                               # %then1
	load %r4, %r3, 16
	load %r4, %r4, 0
	liw %r5, 0
	fsub	%r4, %r5, %r4
	store %r4, %r0, 143
	load %r4, %r3, 16
	load %r4, %r4, 4
	fsub	%r4, %r5, %r4
	store %r4, %r0, 147
	load %r3, %r3, 16
	load %r3, %r3, 8
	fsub	%r3, %r5, %r3
	store %r3, %r0, 151
	jump	.LBB40_9
.LBB40_8:                               # %else2
	bl V6243.V2652.get_nvector_second
.LBB40_9:                               # %ifcont3
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end40:
	.size	V6244.V2653.get_nvector, .Lfunc_end40-V6244.V2653.get_nvector
                                        # -- End function
	.globl	V6245.V2654.utexture    # -- Begin function V6245.V2654.utexture
	.p2align	2
	.type	V6245.V2654.utexture,@function
V6245.V2654.utexture:                   # @V6245.V2654.utexture
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 7
	store %fp, %sp, 0
	store %lr, %fp, 6               # 4-byte Folded Spill
	addi	%r10, %r4, 0
	addi	%r8, %r3, 0
	load %r3, %r3, 32
	load %r4, %r3, 0
	load %r3, %r8, 0
	store %r4, %r0, 146
	load %r4, %r8, 32
	load %r4, %r4, 4
	store %r4, %r0, 150
	load %r4, %r8, 32
	load %r4, %r4, 8
	store %r4, %r0, 154
	cmpdi %r3,2
	bgt	.LBB41_3
	jump	.LBB41_1
.LBB41_1:                               # %entry
	cmpdi %r3,1
	beq	.LBB41_5
	jump	.LBB41_2
.LBB41_2:                               # %entry
	cmpdi %r3,2
	beq	.LBB41_12
	jump	.LBB41_71
.LBB41_12:                              # %then11
	load %r3, %r10, 4
	liw %r4, 1048576000
	fmul	%r3, %r3, %r4
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB41_14
# %bb.13:                               # %then11
	liw %r5, -1082130432
.LBB41_14:                              # %then11
	store %r5, %fp, 4               # 4-byte Folded Spill
	fmul	%r3, %r3, %r5
	bl reduction
	load %r6, %fp, 4                # 4-byte Folded Reload
	fsub	%r4, %r0, %r6
	liw %r5, 1078530008
	cmpf %r3,%r5
	bge	.LBB41_16
# %bb.15:                               # %then11
	addi	%r4, %r6, 0
.LBB41_16:                              # %then11
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r5
	bge	.LBB41_18
# %bb.17:                               # %then11
	addi	%r6, %r3, 0
.LBB41_18:                              # %then11
	fsub	%r3, %r5, %r6
	liw %r5, 1070141402
	cmpf %r6,%r5
	bge	.LBB41_20
# %bb.19:                               # %then11
	addi	%r3, %r6, 0
.LBB41_20:                              # %then11
	liw %r5, 1061752794
	cmpf %r3,%r5
	bgt	.LBB41_22
	jump	.LBB41_21
.LBB41_22:                              # %else11.i
	liw %r5, 1070141402
	fsub	%r3, %r5, %r3
	liw %r5, -1123514240
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1131263730
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r3, %r6
	fmul	%r3, %r3, %r6
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	fadd	%r3, %r3, %r7
.LBB41_23:                              # %V6137.V2546.sin.exit
	fmul	%r3, %r4, %r3
	fmul	%r3, %r3, %r3
	liw %r4, 1132396544
	fmul	%r5, %r3, %r4
	store %r5, %r0, 146
	liw %r5, 1065353216
	fsub	%r3, %r5, %r3
	fmul	%r3, %r3, %r4
	store %r3, %r0, 150
	jump	.LBB41_71
.LBB41_3:                               # %entry
	cmpdi %r3,3
	beq	.LBB41_24
	jump	.LBB41_4
.LBB41_4:                               # %entry
	cmpdi %r3,4
	beq	.LBB41_38
	jump	.LBB41_71
.LBB41_38:                              # %then18
	load %r3, %r10, 8
	load %r4, %r8, 20
	load %r5, %r4, 8
	fsub	%r3, %r3, %r5
	load %r5, %r8, 16
	load %r6, %r5, 8
	fsqrt	%r6, %r6
	fmul	%r3, %r3, %r6
	load %r6, %r10, 0
	load %r4, %r4, 0
	fsub	%r4, %r6, %r4
	load %r5, %r5, 0
	fsqrt	%r5, %r5
	fmul	%r5, %r4, %r5
	liw %r4, 0
	cmpf %r5,%r4
	addi	%r6, %r5, 0
	bgt	.LBB41_40
# %bb.39:                               # %then18
	fsub	%r6, %r0, %r5
.LBB41_40:                              # %then18
	fmul	%r4, %r3, %r3
	fmul	%r7, %r5, %r5
	fadd	%r9, %r7, %r4
	liw %r4, 1097859072
	liw %r7, 953267991
	cmpf %r6,%r7
	blt	.LBB41_53
	jump	.LBB41_41
.LBB41_41:                              # %then21
	fdiv	%r3, %r3, %r5
	liw %r4, 0
	cmpf %r3,%r4
	bgt	.LBB41_43
# %bb.42:                               # %then21
	fsub	%r3, %r0, %r3
.LBB41_43:                              # %then21
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB41_45
# %bb.44:                               # %then21
	liw %r5, -1082130432
.LBB41_45:                              # %then21
	fmul	%r3, %r3, %r5
	liw %r4, 1054867456
	cmpf %r3,%r4
	store %r10, %fp, 4              # 4-byte Folded Spill
	store %r8, %fp, 3               # 4-byte Folded Spill
	store %r9, %fp, 2               # 4-byte Folded Spill
	store %r5, %fp, 1               # 4-byte Folded Spill
	bgt	.LBB41_47
	jump	.LBB41_46
.LBB41_47:                              # %else2.i14
	liw %r4, 1065353216
	cmpf %r3,%r4
	bgt	.LBB41_49
	jump	.LBB41_48
.LBB41_49:                              # %else4.i21
	liw %r4, 1075479162
	cmpf %r3,%r4
	bgt	.LBB41_51
	jump	.LBB41_50
.LBB41_51:                              # %else6.i31
	liw %r4, 1065353216
	fdiv	%r3, %r4, %r3
	bl kernel_atan
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	load %r10, %fp, 4               # 4-byte Folded Reload
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r9, %fp, 2                # 4-byte Folded Reload
	load %r5, %fp, 1                # 4-byte Folded Reload
.LBB41_52:                              # %V6139.V2548.atan.exit34
	fmul	%r3, %r5, %r3
	liw %r4, 1106247680
	fmul	%r3, %r3, %r4
	liw %r4, 1078530011
	fdiv	%r4, %r3, %r4
.LBB41_53:                              # %ifcont23
	liw %r3, 0
	cmpf %r9,%r3
	addi	%r5, %r9, 0
	bgt	.LBB41_55
# %bb.54:                               # %ifcont23
	fsub	%r5, %r0, %r9
.LBB41_55:                              # %ifcont23
	ftoi	%r3, %r4
	itof	%r3, %r3
	fsub	%r6, %r4, %r3
	liw %r3, 1097859072
	liw %r4, 953267991
	cmpf %r5,%r4
	blt	.LBB41_68
	jump	.LBB41_56
.LBB41_56:                              # %then25
	load %r3, %r10, 4
	load %r4, %r8, 20
	load %r4, %r4, 4
	fsub	%r3, %r3, %r4
	load %r4, %r8, 16
	load %r4, %r4, 4
	fsqrt	%r4, %r4
	fmul	%r3, %r4, %r3
	fdiv	%r3, %r3, %r9
	liw %r4, 0
	cmpf %r3,%r4
	bgt	.LBB41_58
# %bb.57:                               # %then25
	fsub	%r3, %r0, %r3
.LBB41_58:                              # %then25
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB41_60
# %bb.59:                               # %then25
	liw %r5, -1082130432
.LBB41_60:                              # %then25
	fmul	%r3, %r3, %r5
	liw %r4, 1054867456
	cmpf %r3,%r4
	store %r6, %fp, 1               # 4-byte Folded Spill
	store %r5, %fp, 4               # 4-byte Folded Spill
	bgt	.LBB41_62
	jump	.LBB41_61
.LBB41_62:                              # %else2.i
	liw %r4, 1065353216
	cmpf %r3,%r4
	bgt	.LBB41_64
	jump	.LBB41_63
.LBB41_64:                              # %else4.i
	liw %r4, 1075479162
	cmpf %r3,%r4
	bgt	.LBB41_66
	jump	.LBB41_65
.LBB41_66:                              # %else6.i
	liw %r4, 1065353216
	fdiv	%r3, %r4, %r3
	bl kernel_atan
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	load %r6, %fp, 1                # 4-byte Folded Reload
	load %r5, %fp, 4                # 4-byte Folded Reload
.LBB41_67:                              # %V6139.V2548.atan.exit
	fmul	%r3, %r5, %r3
	liw %r4, 1106247680
	fmul	%r3, %r3, %r4
	liw %r4, 1078530011
	fdiv	%r3, %r3, %r4
.LBB41_68:                              # %ifcont27
	liw %r4, 1056964608
	fsub	%r5, %r4, %r6
	fmul	%r5, %r5, %r5
	liw %r6, 1041865114
	fsub	%r5, %r6, %r5
	ftoi	%r6, %r3
	itof	%r6, %r6
	fsub	%r3, %r3, %r6
	fsub	%r3, %r4, %r3
	fmul	%r3, %r3, %r3
	fsub	%r5, %r5, %r3
	liw %r3, 1132396544
	fmul	%r3, %r5, %r3
	liw %r4, 1050253722
	fdiv	%r3, %r3, %r4
	addi	%r4, %fp, 5
	store %r3, %r4, 0
	liw %r6, 0
	li %r3, 0
	load %r4, %fp, 5
	cmpf %r5,%r6
	blt	.LBB41_70
# %bb.69:                               # %ifcont27
	addi	%r3, %r4, 0
.LBB41_70:                              # %ifcont27
	store %r3, %r0, 154
.LBB41_71:                              # %ifcont35
	load %lr, %fp, 6                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB41_5:                               # %then
	load %r3, %r8, 20
	load %r4, %r10, 8
	load %r5, %r3, 8
	fsub	%r4, %r4, %r5
	liw %r5, 1028443341
	fmul	%r6, %r4, %r5
	ftoi	%r6, %r6
	itof	%r7, %r6
	liw %r6, 1101004800
	fmul	%r7, %r7, %r6
	fsub	%r9, %r4, %r7
	liw %r7, 1092616192
	liw %r4, 1132396544
	cmpf %r9,%r7
	liw %r8, 0
	blt	.LBB41_7
# %bb.6:                                # %then
	liw %r8, 1132396544
.LBB41_7:                               # %then
	cmpf %r9,%r7
	blt	.LBB41_9
# %bb.8:                                # %then
	liw %r4, 0
.LBB41_9:                               # %then
	load %r9, %r10, 0
	load %r3, %r3, 0
	fsub	%r3, %r9, %r3
	fmul	%r5, %r3, %r5
	ftoi	%r5, %r5
	itof	%r5, %r5
	fmul	%r5, %r5, %r6
	fsub	%r3, %r3, %r5
	cmpf %r3,%r7
	blt	.LBB41_11
# %bb.10:                               # %then
	addi	%r4, %r8, 0
.LBB41_11:                              # %then
	store %r4, %r0, 150
	jump	.LBB41_71
.LBB41_24:                              # %then14
	load %r3, %r8, 20
	load %r4, %r10, 0
	load %r5, %r3, 0
	fsub	%r4, %r4, %r5
	load %r5, %r10, 8
	load %r3, %r3, 8
	fsub	%r3, %r5, %r3
	fmul	%r3, %r3, %r3
	fmul	%r4, %r4, %r4
	fadd	%r3, %r4, %r3
	fsqrt	%r3, %r3
	liw %r4, 1092616192
	fdiv	%r3, %r3, %r4
	ftoi	%r4, %r3
	itof	%r4, %r4
	fsub	%r4, %r3, %r4
	liw %r3, 1078530011
	fmul	%r3, %r4, %r3
	liw %r5, 0
	cmpf %r3,%r5
	bge	.LBB41_26
# %bb.25:                               # %then14
	liw %r3, -1068953637
	fmul	%r3, %r4, %r3
.LBB41_26:                              # %then14
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB41_28
# %bb.27:                               # %then14
	liw %r5, 1065353216
.LBB41_28:                              # %then14
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB41_30
# %bb.29:                               # %then14
	addi	%r6, %r3, 0
.LBB41_30:                              # %then14
	liw %r7, 1070141402
	fsub	%r3, %r0, %r5
	cmpf %r6,%r7
	bge	.LBB41_32
# %bb.31:                               # %then14
	addi	%r3, %r5, 0
.LBB41_32:                              # %then14
	fsub	%r4, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB41_34
# %bb.33:                               # %then14
	addi	%r4, %r6, 0
.LBB41_34:                              # %then14
	liw %r5, 1061752794
	cmpf %r4,%r5
	bgt	.LBB41_36
	jump	.LBB41_35
.LBB41_36:                              # %else14.i
	liw %r5, 1070141402
	fsub	%r4, %r5, %r4
	liw %r5, -1128068060
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1134326311
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
.LBB41_37:                              # %V6138.V2547.cos.exit
	fmul	%r3, %r3, %r4
	fmul	%r3, %r3, %r3
	liw %r4, 1132396544
	fmul	%r5, %r3, %r4
	store %r5, %r0, 150
	liw %r5, 1065353216
	fsub	%r3, %r5, %r3
	fmul	%r3, %r3, %r4
	store %r3, %r0, 154
	jump	.LBB41_71
.LBB41_21:                              # %then10.i
	liw %r5, -1128068060
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1134326311
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	jump	.LBB41_23
.LBB41_35:                              # %then13.i
	liw %r5, -1123514240
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1131263730
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r4, %r6
	fmul	%r4, %r4, %r6
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r7
	jump	.LBB41_37
.LBB41_46:                              # %then1.i13
	bl kernel_atan
	load %r5, %fp, 1                # 4-byte Folded Reload
	load %r9, %fp, 2                # 4-byte Folded Reload
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r10, %fp, 4               # 4-byte Folded Reload
	jump	.LBB41_52
.LBB41_61:                              # %then1.i
	bl kernel_atan
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r6, %fp, 1                # 4-byte Folded Reload
	jump	.LBB41_67
.LBB41_48:                              # %then3.i20
	fadd	%r5, %r3, %r4
	fsub	%r3, %r4, %r3
	fdiv	%r3, %r3, %r5
	bl kernel_atan
	load %r5, %fp, 1                # 4-byte Folded Reload
	load %r9, %fp, 2                # 4-byte Folded Reload
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r10, %fp, 4               # 4-byte Folded Reload
	liw %r4, 1061752794
	fsub	%r3, %r4, %r3
	jump	.LBB41_52
.LBB41_63:                              # %then3.i
	fadd	%r5, %r3, %r4
	fsub	%r3, %r4, %r3
	fdiv	%r3, %r3, %r5
	bl kernel_atan
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r6, %fp, 1                # 4-byte Folded Reload
	liw %r4, 1061752794
	fsub	%r3, %r4, %r3
	jump	.LBB41_67
.LBB41_50:                              # %then5.i27
	liw %r4, 1065353216
	fadd	%r4, %r3, %r4
	liw %r5, -1082130432
	fadd	%r3, %r3, %r5
	fdiv	%r3, %r3, %r4
	bl kernel_atan
	liw %r4, 1061752794
	fadd	%r3, %r3, %r4
	load %r10, %fp, 4               # 4-byte Folded Reload
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r9, %fp, 2                # 4-byte Folded Reload
	load %r5, %fp, 1                # 4-byte Folded Reload
	jump	.LBB41_52
.LBB41_65:                              # %then5.i
	liw %r4, 1065353216
	fadd	%r4, %r3, %r4
	liw %r5, -1082130432
	fadd	%r3, %r3, %r5
	fdiv	%r3, %r3, %r4
	bl kernel_atan
	liw %r4, 1061752794
	fadd	%r3, %r3, %r4
	load %r6, %fp, 1                # 4-byte Folded Reload
	load %r5, %fp, 4                # 4-byte Folded Reload
	jump	.LBB41_67
.Lfunc_end41:
	.size	V6245.V2654.utexture, .Lfunc_end41-V6245.V2654.utexture
                                        # -- End function
	.globl	V6232.V2641.shadow_check_one_or_matrix # -- Begin function V6232.V2641.shadow_check_one_or_matrix
	.p2align	2
	.type	V6232.V2641.shadow_check_one_or_matrix,@function
V6232.V2641.shadow_check_one_or_matrix: # @V6232.V2641.shadow_check_one_or_matrix
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 7
	store %fp, %sp, 0
	store %lr, %fp, 6               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
.LBB42_1:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_16 Depth 2
                                        #     Child Loop BB42_20 Depth 2
	srawi	%r5, %r3, 2
	load %r4, %fp, 2                # 4-byte Folded Reload
	add	%r4, %r4, %r5
	load %r5, %r4, 0
	load %r4, %r5, 0
	cmpdi %r4,99
	store %r3, %fp, 4               # 4-byte Folded Spill
	store %r5, %fp, 3               # 4-byte Folded Spill
	beq	.LBB42_3
	jump	.LBB42_2
.LBB42_2:                               # %tailrecurse
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpdi %r4,-1
	beq	.LBB42_22
	jump	.LBB42_4
.LBB42_4:                               # %else4
                                        #   in Loop: Header=BB42_1 Depth=1
	srawi	%r4, %r4, 2
	load %r3, %r4, 13
	load %r5, %r3, 20
	load %r6, %r5, 8
	load %r7, %r0, 147
	fsub	%r8, %r7, %r6
	load %r6, %r5, 4
	load %r7, %r0, 143
	fsub	%r7, %r7, %r6
	load %r5, %r5, 0
	load %r6, %r0, 139
	fsub	%r6, %r6, %r5
	load %r5, %r0, 252
	add	%r4, %r5, %r4
	load %r5, %r4, 0
	load %r4, %r3, 4
	cmpdi %r4,2
	beq	.LBB42_7
	jump	.LBB42_5
.LBB42_5:                               # %else4
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpdi %r4,1
	bne	.LBB42_9
	jump	.LBB42_6
.LBB42_6:                               # %then.i
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r4, %r0, 248
	bl V6211.V2620.solver_rect_fast
	jump	.LBB42_10
.LBB42_3:                               # %tailrecurse.else18_crit_edge
                                        #   in Loop: Header=BB42_1 Depth=1
	addi	%r3, %r5, 4
	store %r3, %fp, 1               # 4-byte Folded Spill
	jump	.LBB42_17
.LBB42_17:                              # %else18
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %fp, 1                # 4-byte Folded Reload
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB42_21
	jump	.LBB42_18
.LBB42_18:                              # %else.i15.preheader
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r4, %fp, 3                # 4-byte Folded Reload
	addi	%r4, %r4, 8
	jump	.LBB42_20
.LBB42_20:                              # %else.i15
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 5               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	bl V6230.V2639.shadow_check_and_group
	addi	%r4, %r3, 0
	li %r3, 1
	and	%r4, %r4, %r3
	cmpdi %r4,0
	bne	.LBB42_23
	jump	.LBB42_19
.LBB42_19:                              # %tailrecurse.i8
                                        #   in Loop: Header=BB42_20 Depth=2
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB42_21
	jump	.LBB42_20
.LBB42_7:                               # %then6.i
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %r5, 0
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB42_21
	jump	.LBB42_8
.LBB42_8:                               # %V6214.V2623.solver_fast.exit.thread19
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %r5, 8
	fmul	%r3, %r7, %r3
	load %r4, %r5, 4
	fmul	%r4, %r6, %r4
	fadd	%r3, %r4, %r3
	load %r4, %r5, 12
	fmul	%r4, %r8, %r4
	fadd	%r3, %r3, %r4
	store %r3, %r0, 136
	jump	.LBB42_12
.LBB42_9:                               # %else7.i
                                        #   in Loop: Header=BB42_1 Depth=1
	addi	%r4, %r5, 0
	addi	%r5, %r6, 0
	addi	%r6, %r7, 0
	addi	%r7, %r8, 0
	bl V6213.V2622.solver_second_fast
.LBB42_10:                              # %V6214.V2623.solver_fast.exit
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpdi %r3,0
	beq	.LBB42_21
	jump	.LBB42_11
.LBB42_11:                              # %else8thread-pre-split
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %r0, 136
.LBB42_12:                              # %else8
                                        #   in Loop: Header=BB42_1 Depth=1
	liw %r4, -1110651699
	cmpf %r3,%r4
	bge	.LBB42_21
	jump	.LBB42_13
.LBB42_13:                              # %else10
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %fp, 3                # 4-byte Folded Reload
	load %r3, %r3, 4
	cmpdi %r3,-1
	beq	.LBB42_21
	jump	.LBB42_14
.LBB42_14:                              # %else.i.preheader
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r4, %fp, 3                # 4-byte Folded Reload
	addi	%r5, %r4, 4
	store %r5, %fp, 1               # 4-byte Folded Spill
	addi	%r4, %r4, 8
	jump	.LBB42_16
.LBB42_16:                              # %else.i
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 5               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	bl V6230.V2639.shadow_check_and_group
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	beq	.LBB42_15
	jump	.LBB42_17
.LBB42_15:                              # %tailrecurse.i
                                        #   in Loop: Header=BB42_16 Depth=2
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB42_21
	jump	.LBB42_16
.LBB42_21:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB42_1 Depth=1
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	jump	.LBB42_1
.LBB42_22:                              # %ifcont23.loopexit29
	li %r3, 0
.LBB42_23:                              # %ifcont23
	load %lr, %fp, 6                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end42:
	.size	V6232.V2641.shadow_check_one_or_matrix, .Lfunc_end42-V6232.V2641.shadow_check_one_or_matrix
                                        # -- End function
	.globl	V6129.V2538.fneg        # -- Begin function V6129.V2538.fneg
	.p2align	2
	.type	V6129.V2538.fneg,@function
V6129.V2538.fneg:                       # @V6129.V2538.fneg
# %bb.0:                                # %entry
	liw %r4, 0
	fsub	%r3, %r4, %r3
	blr
.Lfunc_end43:
	.size	V6129.V2538.fneg, .Lfunc_end43-V6129.V2538.fneg
                                        # -- End function
	.globl	V6134.V2543.fispos      # -- Begin function V6134.V2543.fispos
	.p2align	2
	.type	V6134.V2543.fispos,@function
V6134.V2543.fispos:                     # @V6134.V2543.fispos
# %bb.0:                                # %entry
	addi	%r4, %r3, 0
	liw %r5, 0
	li %r3, 1
	cmpf %r4,%r5
	bgt	.LBB44_2
# %bb.1:                                # %entry
	li %r3, 0
.LBB44_2:                               # %entry
	blr
.Lfunc_end44:
	.size	V6134.V2543.fispos, .Lfunc_end44-V6134.V2543.fispos
                                        # -- End function
	.globl	V6170.V2579.o_diffuse   # -- Begin function V6170.V2579.o_diffuse
	.p2align	2
	.type	V6170.V2579.o_diffuse,@function
V6170.V2579.o_diffuse:                  # @V6170.V2579.o_diffuse
# %bb.0:                                # %entry
	load %r3, %r3, 28
	load %r3, %r3, 0
	blr
.Lfunc_end45:
	.size	V6170.V2579.o_diffuse, .Lfunc_end45-V6170.V2579.o_diffuse
                                        # -- End function
	.globl	V6153.V2562.vecaccum    # -- Begin function V6153.V2562.vecaccum
	.p2align	2
	.type	V6153.V2562.vecaccum,@function
V6153.V2562.vecaccum:                   # @V6153.V2562.vecaccum
# %bb.0:                                # %entry
	load %r6, %r5, 0
	fmul	%r6, %r6, %r4
	load %r7, %r3, 0
	fadd	%r6, %r7, %r6
	store %r6, %r3, 0
	load %r6, %r5, 4
	fmul	%r6, %r6, %r4
	load %r7, %r3, 4
	fadd	%r6, %r7, %r6
	store %r6, %r3, 4
	load %r5, %r5, 8
	fmul	%r4, %r5, %r4
	load %r5, %r3, 8
	fadd	%r4, %r5, %r4
	store %r4, %r3, 8
	blr
.Lfunc_end46:
	.size	V6153.V2562.vecaccum, .Lfunc_end46-V6153.V2562.vecaccum
                                        # -- End function
	.globl	V6214.V2623.solver_fast # -- Begin function V6214.V2623.solver_fast
	.p2align	2
	.type	V6214.V2623.solver_fast,@function
V6214.V2623.solver_fast:                # @V6214.V2623.solver_fast
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	srawi	%r9, %r3, 2
	load %r6, %r5, 8
	load %r3, %r9, 13
	load %r10, %r3, 20
	load %r7, %r10, 8
	fsub	%r8, %r6, %r7
	load %r6, %r5, 4
	load %r7, %r10, 4
	fsub	%r7, %r6, %r7
	load %r5, %r5, 0
	load %r6, %r10, 0
	fsub	%r6, %r5, %r6
	load %r5, %r4, 4
	add	%r5, %r5, %r9
	load %r5, %r5, 0
	load %r9, %r3, 4
	cmpdi %r9,2
	beq	.LBB47_3
	jump	.LBB47_1
.LBB47_1:                               # %entry
	cmpdi %r9,1
	bne	.LBB47_5
	jump	.LBB47_2
.LBB47_2:                               # %then
	load %r4, %r4, 0
	bl V6211.V2620.solver_rect_fast
	jump	.LBB47_6
.LBB47_3:                               # %then6
	li %r3, 0
	load %r4, %r5, 0
	liw %r9, 0
	cmpf %r4,%r9
	bge	.LBB47_6
	jump	.LBB47_4
.LBB47_4:                               # %else.i
	load %r3, %r5, 8
	fmul	%r3, %r7, %r3
	load %r4, %r5, 4
	fmul	%r4, %r6, %r4
	fadd	%r3, %r4, %r3
	load %r4, %r5, 12
	fmul	%r4, %r8, %r4
	fadd	%r3, %r3, %r4
	store %r3, %r0, 136
	li %r3, 1
	jump	.LBB47_6
.LBB47_5:                               # %else7
	addi	%r4, %r5, 0
	addi	%r5, %r6, 0
	addi	%r6, %r7, 0
	addi	%r7, %r8, 0
	bl V6213.V2622.solver_second_fast
.LBB47_6:                               # %ifcont8
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end47:
	.size	V6214.V2623.solver_fast, .Lfunc_end47-V6214.V2623.solver_fast
                                        # -- End function
	.globl	V6136.V2545.fless       # -- Begin function V6136.V2545.fless
	.p2align	2
	.type	V6136.V2545.fless,@function
V6136.V2545.fless:                      # @V6136.V2545.fless
# %bb.0:                                # %entry
	addi	%r5, %r3, 0
	li %r3, 1
	cmpf %r5,%r4
	blt	.LBB48_2
# %bb.1:                                # %entry
	li %r3, 0
.LBB48_2:                               # %entry
	blr
.Lfunc_end48:
	.size	V6136.V2545.fless, .Lfunc_end48-V6136.V2545.fless
                                        # -- End function
	.globl	V6231.V2640.shadow_check_one_or_group # -- Begin function V6231.V2640.shadow_check_one_or_group
	.p2align	2
	.type	V6231.V2640.shadow_check_one_or_group,@function
V6231.V2640.shadow_check_one_or_group:  # @V6231.V2640.shadow_check_one_or_group
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	add	%r5, %r4, %r3
	li %r3, 0
	load %r4, %r5, 0
	cmpdi %r4,-1
	beq	.LBB49_4
	jump	.LBB49_1
.LBB49_1:                               # %else.preheader
	addi	%r3, %r5, 4
	store %r3, %fp, 1               # 4-byte Folded Spill
	jump	.LBB49_3
.LBB49_3:                               # %else
                                        # =>This Inner Loop Header: Depth=1
	srawi	%r3, %r4, 2
	load %r4, %r3, 84
	li %r3, 0
	bl V6230.V2639.shadow_check_and_group
	addi	%r4, %r3, 0
	li %r3, 1
	and	%r4, %r4, %r3
	cmpdi %r4,0
	beq	.LBB49_2
	jump	.LBB49_4
.LBB49_2:                               # %tailrecurse
                                        #   in Loop: Header=BB49_3 Depth=1
	li %r3, 0
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r5, %r4, 4
	load %r4, %r4, 0
	cmpdi %r4,-1
	store %r5, %fp, 1               # 4-byte Folded Spill
	beq	.LBB49_4
	jump	.LBB49_3
.LBB49_4:                               # %ifcont5
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end49:
	.size	V6231.V2640.shadow_check_one_or_group, .Lfunc_end49-V6231.V2640.shadow_check_one_or_group
                                        # -- End function
	.globl	V6230.V2639.shadow_check_and_group # -- Begin function V6230.V2639.shadow_check_and_group
	.p2align	2
	.type	V6230.V2639.shadow_check_and_group,@function
V6230.V2639.shadow_check_and_group:     # @V6230.V2639.shadow_check_and_group
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 10
	store %fp, %sp, 0
	store %lr, %fp, 9               # 4-byte Folded Spill
	store %r3, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	store %r4, %fp, 2               # 4-byte Folded Spill
	add	%r3, %r4, %r3
	li %r4, 0
	store %r4, %fp, 4               # 4-byte Folded Spill
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB50_16
	jump	.LBB50_1
.LBB50_1:                               # %else.preheader
	load %r4, %fp, 2                # 4-byte Folded Reload
	addi	%r4, %r4, 4
	store %r4, %fp, 1               # 4-byte Folded Spill
.LBB50_2:                               # %else
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_14 Depth 2
	srawi	%r9, %r3, 2
	load %r3, %r9, 13
	load %r4, %r3, 20
	load %r5, %r4, 8
	load %r6, %r0, 147
	fsub	%r8, %r6, %r5
	load %r5, %r4, 4
	load %r6, %r0, 143
	fsub	%r7, %r6, %r5
	load %r4, %r4, 0
	load %r5, %r0, 139
	fsub	%r6, %r5, %r4
	load %r4, %r0, 252
	add	%r4, %r4, %r9
	load %r5, %r4, 0
	load %r4, %r3, 4
	cmpdi %r4,2
	beq	.LBB50_5
	jump	.LBB50_3
.LBB50_3:                               # %else
                                        #   in Loop: Header=BB50_2 Depth=1
	store %r9, %fp, 8               # 4-byte Folded Spill
	cmpdi %r4,1
	bne	.LBB50_7
	jump	.LBB50_4
.LBB50_4:                               # %then.i
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r4, %r0, 248
	bl V6211.V2620.solver_rect_fast
	jump	.LBB50_8
.LBB50_5:                               # %then6.i
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r3, %r5, 0
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB50_10
	jump	.LBB50_6
.LBB50_6:                               # %V6214.V2623.solver_fast.exit.thread3
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r3, %r5, 8
	fmul	%r3, %r7, %r3
	load %r4, %r5, 4
	fmul	%r4, %r6, %r4
	fadd	%r3, %r4, %r3
	load %r4, %r5, 12
	fmul	%r4, %r8, %r4
	fadd	%r4, %r3, %r4
	store %r4, %r0, 136
	jump	.LBB50_9
.LBB50_7:                               # %else7.i
                                        #   in Loop: Header=BB50_2 Depth=1
	addi	%r4, %r5, 0
	addi	%r5, %r6, 0
	addi	%r6, %r7, 0
	addi	%r7, %r8, 0
	bl V6213.V2622.solver_second_fast
.LBB50_8:                               # %V6214.V2623.solver_fast.exit
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r4, %r0, 136
	cmpdi %r3,0
	load %r9, %fp, 8                # 4-byte Folded Reload
	beq	.LBB50_10
	jump	.LBB50_9
.LBB50_9:                               # %else6
                                        #   in Loop: Header=BB50_2 Depth=1
	liw %r3, -1102263091
	cmpf %r4,%r3
	blt	.LBB50_11
	jump	.LBB50_10
.LBB50_11:                              # %else13
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r5, %r0, 87
	load %r6, %r0, 147
	load %r7, %r0, 83
	load %r8, %r0, 143
	load %r9, %r0, 79
	load %r10, %r0, 139
	li %r3, 1
	store %r3, %fp, 4               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB50_16
	jump	.LBB50_12
.LBB50_12:                              # %else.i.preheader
                                        #   in Loop: Header=BB50_2 Depth=1
	liw %r11, 1008981770
	fadd	%r4, %r4, %r11
	fmul	%r5, %r4, %r5
	fadd	%r5, %r5, %r6
	store %r5, %fp, 7               # 4-byte Folded Spill
	fmul	%r5, %r4, %r7
	fadd	%r5, %r5, %r8
	store %r5, %fp, 6               # 4-byte Folded Spill
	fmul	%r4, %r4, %r9
	fadd	%r4, %r4, %r10
	store %r4, %fp, 5               # 4-byte Folded Spill
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %fp, 8               # 4-byte Folded Spill
	jump	.LBB50_14
.LBB50_14:                              # %else.i
                                        #   Parent Loop BB50_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r4, %fp, 5                # 4-byte Folded Reload
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r6, %fp, 7                # 4-byte Folded Reload
	bl V6228.V2637.is_outside
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	beq	.LBB50_13
	jump	.LBB50_15
.LBB50_13:                              # %tailrecurse.i
                                        #   in Loop: Header=BB50_14 Depth=2
	load %r3, %fp, 8                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	store %r4, %fp, 8               # 4-byte Folded Spill
	beq	.LBB50_16
	jump	.LBB50_14
.LBB50_10:                              # %then8
                                        #   in Loop: Header=BB50_2 Depth=1
	addi	%r3, %r9, 13
	load %r3, %r3, 0
	load %r3, %r3, 24
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	li %r3, 0
	store %r3, %fp, 4               # 4-byte Folded Spill
	beq	.LBB50_16
	jump	.LBB50_15
.LBB50_15:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB50_2 Depth=1
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	store %r3, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %fp, 2                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	load %r3, %r3, 0
	cmpdi %r3,-1
	li %r4, 0
	store %r4, %fp, 4               # 4-byte Folded Spill
	bne	.LBB50_2
	jump	.LBB50_16
.LBB50_16:                              # %ifcont18
	load %r3, %fp, 4                # 4-byte Folded Reload
	load %lr, %fp, 9                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end50:
	.size	V6230.V2639.shadow_check_and_group, .Lfunc_end50-V6230.V2639.shadow_check_and_group
                                        # -- End function
	.globl	V6161.V2570.o_isinvert  # -- Begin function V6161.V2570.o_isinvert
	.p2align	2
	.type	V6161.V2570.o_isinvert,@function
V6161.V2570.o_isinvert:                 # @V6161.V2570.o_isinvert
# %bb.0:                                # %entry
	load %r3, %r3, 24
	li %r4, 1
	and	%r3, %r3, %r4
	blr
.Lfunc_end51:
	.size	V6161.V2570.o_isinvert, .Lfunc_end51-V6161.V2570.o_isinvert
                                        # -- End function
	.globl	V6229.V2638.check_all_inside # -- Begin function V6229.V2638.check_all_inside
	.p2align	2
	.type	V6229.V2638.check_all_inside,@function
V6229.V2638.check_all_inside:           # @V6229.V2638.check_all_inside
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	store %r7, %fp, 3               # 4-byte Folded Spill
	store %r6, %fp, 2               # 4-byte Folded Spill
	store %r5, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	add	%r5, %r4, %r3
	li %r3, 1
	load %r4, %r5, 0
	cmpdi %r4,-1
	beq	.LBB52_4
	jump	.LBB52_1
.LBB52_1:                               # %else.preheader
	addi	%r3, %r5, 4
	store %r3, %fp, 4               # 4-byte Folded Spill
	jump	.LBB52_3
.LBB52_3:                               # %else
                                        # =>This Inner Loop Header: Depth=1
	srawi	%r3, %r4, 2
	load %r3, %r3, 13
	load %r4, %fp, 1                # 4-byte Folded Reload
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r6, %fp, 3                # 4-byte Folded Reload
	bl V6228.V2637.is_outside
	li %r4, 1
	and	%r4, %r3, %r4
	li %r3, 0
	cmpdi %r4,0
	beq	.LBB52_2
	jump	.LBB52_4
.LBB52_2:                               # %tailrecurse
                                        #   in Loop: Header=BB52_3 Depth=1
	li %r3, 1
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r5, %r4, 4
	load %r4, %r4, 0
	cmpdi %r4,-1
	store %r5, %fp, 4               # 4-byte Folded Spill
	beq	.LBB52_4
	jump	.LBB52_3
.LBB52_4:                               # %ifcont5
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end52:
	.size	V6229.V2638.check_all_inside, .Lfunc_end52-V6229.V2638.check_all_inside
                                        # -- End function
	.globl	V6228.V2637.is_outside  # -- Begin function V6228.V2637.is_outside
	.p2align	2
	.type	V6228.V2637.is_outside,@function
V6228.V2637.is_outside:                 # @V6228.V2637.is_outside
# %bb.0:                                # %entry
	load %r7, %r3, 20
	load %r8, %r7, 8
	fsub	%r6, %r6, %r8
	load %r8, %r7, 4
	fsub	%r5, %r5, %r8
	load %r7, %r7, 0
	fsub	%r4, %r4, %r7
	load %r7, %r3, 4
	cmpdi %r7,2
	beq	.LBB53_13
	jump	.LBB53_1
.LBB53_1:                               # %entry
	cmpdi %r7,1
	bne	.LBB53_16
	jump	.LBB53_2
.LBB53_2:                               # %then
	liw %r7, 0
	cmpf %r4,%r7
	bgt	.LBB53_4
# %bb.3:                                # %then
	fsub	%r4, %r0, %r4
.LBB53_4:                               # %then
	li %r7, 1
	load %r8, %r3, 16
	load %r9, %r8, 0
	cmpf %r4,%r9
	li %r4, 1
	bge	.LBB53_12
	jump	.LBB53_5
.LBB53_5:                               # %else.i
	liw %r4, 0
	cmpf %r5,%r4
	bgt	.LBB53_7
# %bb.6:                                # %else.i
	fsub	%r5, %r0, %r5
.LBB53_7:                               # %else.i
	load %r4, %r8, 4
	cmpf %r5,%r4
	li %r4, 1
	bge	.LBB53_12
	jump	.LBB53_8
.LBB53_8:                               # %else2.i
	liw %r4, 0
	cmpf %r6,%r4
	bgt	.LBB53_10
# %bb.9:                                # %else2.i
	fsub	%r6, %r0, %r6
.LBB53_10:                              # %else2.i
	load %r5, %r8, 8
	li %r4, 1
	cmpf %r6,%r5
	bge	.LBB53_12
# %bb.11:                               # %else2.i
	li %r4, 0
.LBB53_12:                              # %V6225.V2634.is_rect_outside.exit
	load %r3, %r3, 24
	and	%r3, %r3, %r7
	xor	%r3, %r4, %r3
	jump	.LBB53_23
.LBB53_13:                              # %then1
	load %r7, %r3, 16
	load %r8, %r7, 4
	fmul	%r5, %r5, %r8
	load %r8, %r7, 0
	fmul	%r4, %r4, %r8
	fadd	%r4, %r4, %r5
	load %r5, %r7, 8
	fmul	%r5, %r6, %r5
	fadd	%r5, %r4, %r5
	liw %r6, 0
	li %r4, 1
	cmpf %r5,%r6
	li %r5, 1
	blt	.LBB53_15
# %bb.14:                               # %then1
	li %r5, 0
.LBB53_15:                              # %then1
	load %r3, %r3, 24
	and	%r3, %r3, %r4
	xor	%r3, %r3, %r5
	xor	%r3, %r3, %r4
	jump	.LBB53_23
.LBB53_16:                              # %else2
	fmul	%r8, %r5, %r5
	load %r9, %r3, 16
	load %r10, %r9, 4
	fmul	%r8, %r8, %r10
	fmul	%r10, %r4, %r4
	load %r11, %r9, 0
	fmul	%r10, %r10, %r11
	fadd	%r8, %r10, %r8
	fmul	%r10, %r6, %r6
	load %r9, %r9, 8
	fmul	%r9, %r10, %r9
	fadd	%r8, %r8, %r9
	load %r9, %r3, 12
	cmpdi %r9,0
	beq	.LBB53_18
	jump	.LBB53_17
.LBB53_17:                              # %else.i.i
	load %r9, %r3, 36
	fmul	%r10, %r4, %r6
	load %r11, %r9, 4
	fmul	%r10, %r10, %r11
	fmul	%r6, %r5, %r6
	load %r11, %r9, 0
	fmul	%r6, %r6, %r11
	fadd	%r6, %r8, %r6
	fadd	%r6, %r6, %r10
	fmul	%r4, %r4, %r5
	load %r5, %r9, 8
	fmul	%r4, %r4, %r5
	fadd	%r8, %r6, %r4
.LBB53_18:                              # %V6227.V2636.is_second_outside.exit
	liw %r4, -1082130432
	fadd	%r5, %r8, %r4
	cmpdi %r7,3
	beq	.LBB53_20
# %bb.19:                               # %V6227.V2636.is_second_outside.exit
	addi	%r5, %r8, 0
.LBB53_20:                              # %V6227.V2636.is_second_outside.exit
	liw %r6, 0
	li %r4, 1
	cmpf %r5,%r6
	li %r5, 1
	blt	.LBB53_22
# %bb.21:                               # %V6227.V2636.is_second_outside.exit
	li %r5, 0
.LBB53_22:                              # %V6227.V2636.is_second_outside.exit
	load %r3, %r3, 24
	and	%r3, %r3, %r4
	xor	%r3, %r3, %r5
	xor	%r3, %r3, %r4
.LBB53_23:                              # %ifcont3
	blr
.Lfunc_end53:
	.size	V6228.V2637.is_outside, .Lfunc_end53-V6228.V2637.is_outside
                                        # -- End function
	.globl	V6167.V2576.o_param_x   # -- Begin function V6167.V2576.o_param_x
	.p2align	2
	.type	V6167.V2576.o_param_x,@function
V6167.V2576.o_param_x:                  # @V6167.V2576.o_param_x
# %bb.0:                                # %entry
	load %r3, %r3, 20
	load %r3, %r3, 0
	blr
.Lfunc_end54:
	.size	V6167.V2576.o_param_x, .Lfunc_end54-V6167.V2576.o_param_x
                                        # -- End function
	.globl	V6168.V2577.o_param_y   # -- Begin function V6168.V2577.o_param_y
	.p2align	2
	.type	V6168.V2577.o_param_y,@function
V6168.V2577.o_param_y:                  # @V6168.V2577.o_param_y
# %bb.0:                                # %entry
	load %r3, %r3, 20
	load %r3, %r3, 4
	blr
.Lfunc_end55:
	.size	V6168.V2577.o_param_y, .Lfunc_end55-V6168.V2577.o_param_y
                                        # -- End function
	.globl	V6169.V2578.o_param_z   # -- Begin function V6169.V2578.o_param_z
	.p2align	2
	.type	V6169.V2578.o_param_z,@function
V6169.V2578.o_param_z:                  # @V6169.V2578.o_param_z
# %bb.0:                                # %entry
	load %r3, %r3, 20
	load %r3, %r3, 8
	blr
.Lfunc_end56:
	.size	V6169.V2578.o_param_z, .Lfunc_end56-V6169.V2578.o_param_z
                                        # -- End function
	.globl	V6159.V2568.o_form      # -- Begin function V6159.V2568.o_form
	.p2align	2
	.type	V6159.V2568.o_form,@function
V6159.V2568.o_form:                     # @V6159.V2568.o_form
# %bb.0:                                # %entry
	load %r3, %r3, 4
	blr
.Lfunc_end57:
	.size	V6159.V2568.o_form, .Lfunc_end57-V6159.V2568.o_form
                                        # -- End function
	.globl	V6225.V2634.is_rect_outside # -- Begin function V6225.V2634.is_rect_outside
	.p2align	2
	.type	V6225.V2634.is_rect_outside,@function
V6225.V2634.is_rect_outside:            # @V6225.V2634.is_rect_outside
# %bb.0:                                # %entry
	liw %r7, 0
	cmpf %r4,%r7
	bgt	.LBB58_2
# %bb.1:                                # %entry
	fsub	%r4, %r0, %r4
.LBB58_2:                               # %entry
	li %r7, 1
	load %r8, %r3, 16
	load %r9, %r8, 0
	cmpf %r4,%r9
	li %r4, 1
	bge	.LBB58_10
	jump	.LBB58_3
.LBB58_3:                               # %else
	liw %r4, 0
	cmpf %r5,%r4
	bgt	.LBB58_5
# %bb.4:                                # %else
	fsub	%r5, %r0, %r5
.LBB58_5:                               # %else
	load %r4, %r8, 4
	cmpf %r5,%r4
	li %r4, 1
	bge	.LBB58_10
	jump	.LBB58_6
.LBB58_6:                               # %else2
	liw %r4, 0
	cmpf %r6,%r4
	bgt	.LBB58_8
# %bb.7:                                # %else2
	fsub	%r6, %r0, %r6
.LBB58_8:                               # %else2
	load %r5, %r8, 8
	li %r4, 1
	cmpf %r6,%r5
	bge	.LBB58_10
# %bb.9:                                # %else2
	li %r4, 0
.LBB58_10:                              # %ifcont3
	load %r3, %r3, 24
	and	%r3, %r3, %r7
	xor	%r3, %r4, %r3
	blr
.Lfunc_end58:
	.size	V6225.V2634.is_rect_outside, .Lfunc_end58-V6225.V2634.is_rect_outside
                                        # -- End function
	.globl	V6226.V2635.is_plane_outside # -- Begin function V6226.V2635.is_plane_outside
	.p2align	2
	.type	V6226.V2635.is_plane_outside,@function
V6226.V2635.is_plane_outside:           # @V6226.V2635.is_plane_outside
# %bb.0:                                # %entry
	load %r7, %r3, 16
	load %r8, %r7, 4
	fmul	%r5, %r8, %r5
	load %r8, %r7, 0
	fmul	%r4, %r8, %r4
	fadd	%r4, %r4, %r5
	load %r5, %r7, 8
	fmul	%r5, %r5, %r6
	fadd	%r5, %r4, %r5
	liw %r6, 0
	li %r4, 1
	cmpf %r5,%r6
	li %r5, 1
	blt	.LBB59_2
# %bb.1:                                # %entry
	li %r5, 0
.LBB59_2:                               # %entry
	load %r3, %r3, 24
	and	%r3, %r3, %r4
	xor	%r3, %r3, %r5
	xor	%r3, %r3, %r4
	blr
.Lfunc_end59:
	.size	V6226.V2635.is_plane_outside, .Lfunc_end59-V6226.V2635.is_plane_outside
                                        # -- End function
	.globl	V6227.V2636.is_second_outside # -- Begin function V6227.V2636.is_second_outside
	.p2align	2
	.type	V6227.V2636.is_second_outside,@function
V6227.V2636.is_second_outside:          # @V6227.V2636.is_second_outside
# %bb.0:                                # %entry
	fmul	%r7, %r5, %r5
	load %r8, %r3, 16
	load %r9, %r8, 4
	fmul	%r7, %r7, %r9
	fmul	%r9, %r4, %r4
	load %r10, %r8, 0
	fmul	%r9, %r9, %r10
	fadd	%r7, %r9, %r7
	fmul	%r9, %r6, %r6
	load %r8, %r8, 8
	fmul	%r8, %r9, %r8
	fadd	%r7, %r7, %r8
	load %r8, %r3, 12
	cmpdi %r8,0
	beq	.LBB60_2
	jump	.LBB60_1
.LBB60_1:                               # %else.i
	load %r8, %r3, 36
	fmul	%r9, %r4, %r6
	load %r10, %r8, 4
	fmul	%r9, %r9, %r10
	fmul	%r6, %r5, %r6
	load %r10, %r8, 0
	fmul	%r6, %r6, %r10
	fadd	%r6, %r7, %r6
	fadd	%r6, %r6, %r9
	fmul	%r4, %r4, %r5
	load %r5, %r8, 8
	fmul	%r4, %r4, %r5
	fadd	%r7, %r6, %r4
.LBB60_2:                               # %V6207.V2616.quadratic.exit
	liw %r4, -1082130432
	fadd	%r5, %r7, %r4
	load %r4, %r3, 4
	cmpdi %r4,3
	beq	.LBB60_4
# %bb.3:                                # %V6207.V2616.quadratic.exit
	addi	%r5, %r7, 0
.LBB60_4:                               # %V6207.V2616.quadratic.exit
	liw %r6, 0
	li %r4, 1
	cmpf %r5,%r6
	li %r5, 1
	blt	.LBB60_6
# %bb.5:                                # %V6207.V2616.quadratic.exit
	li %r5, 0
.LBB60_6:                               # %V6207.V2616.quadratic.exit
	load %r3, %r3, 24
	and	%r3, %r3, %r4
	xor	%r3, %r3, %r5
	xor	%r3, %r3, %r4
	blr
.Lfunc_end60:
	.size	V6227.V2636.is_second_outside, .Lfunc_end60-V6227.V2636.is_second_outside
                                        # -- End function
	.globl	V6207.V2616.quadratic   # -- Begin function V6207.V2616.quadratic
	.p2align	2
	.type	V6207.V2616.quadratic,@function
V6207.V2616.quadratic:                  # @V6207.V2616.quadratic
# %bb.0:                                # %entry
	fmul	%r7, %r5, %r5
	load %r8, %r3, 16
	load %r9, %r8, 4
	fmul	%r7, %r7, %r9
	fmul	%r9, %r4, %r4
	load %r10, %r8, 0
	fmul	%r9, %r9, %r10
	fadd	%r7, %r9, %r7
	fmul	%r9, %r6, %r6
	load %r8, %r8, 8
	fmul	%r8, %r9, %r8
	fadd	%r7, %r7, %r8
	load %r8, %r3, 12
	cmpdi %r8,0
	beq	.LBB61_2
	jump	.LBB61_1
.LBB61_1:                               # %else
	load %r3, %r3, 36
	fmul	%r8, %r4, %r6
	load %r9, %r3, 4
	fmul	%r8, %r8, %r9
	fmul	%r6, %r5, %r6
	load %r9, %r3, 0
	fmul	%r6, %r6, %r9
	fadd	%r6, %r7, %r6
	fadd	%r6, %r6, %r8
	fmul	%r4, %r4, %r5
	load %r3, %r3, 8
	fmul	%r3, %r4, %r3
	fadd	%r7, %r6, %r3
.LBB61_2:                               # %ifcont
	addi	%r3, %r7, 0
	blr
.Lfunc_end61:
	.size	V6207.V2616.quadratic, .Lfunc_end61-V6207.V2616.quadratic
                                        # -- End function
	.globl	V6140.V2549.xor         # -- Begin function V6140.V2549.xor
	.p2align	2
	.type	V6140.V2549.xor,@function
V6140.V2549.xor:                        # @V6140.V2549.xor
# %bb.0:                                # %entry
	xor	%r3, %r3, %r4
	blr
.Lfunc_end62:
	.size	V6140.V2549.xor, .Lfunc_end62-V6140.V2549.xor
                                        # -- End function
	.globl	V6130.V2539.fsqr        # -- Begin function V6130.V2539.fsqr
	.p2align	2
	.type	V6130.V2539.fsqr,@function
V6130.V2539.fsqr:                       # @V6130.V2539.fsqr
# %bb.0:                                # %entry
	fmul	%r3, %r3, %r3
	blr
.Lfunc_end63:
	.size	V6130.V2539.fsqr, .Lfunc_end63-V6130.V2539.fsqr
                                        # -- End function
	.globl	V6163.V2572.o_param_a   # -- Begin function V6163.V2572.o_param_a
	.p2align	2
	.type	V6163.V2572.o_param_a,@function
V6163.V2572.o_param_a:                  # @V6163.V2572.o_param_a
# %bb.0:                                # %entry
	load %r3, %r3, 16
	load %r3, %r3, 0
	blr
.Lfunc_end64:
	.size	V6163.V2572.o_param_a, .Lfunc_end64-V6163.V2572.o_param_a
                                        # -- End function
	.globl	V6164.V2573.o_param_b   # -- Begin function V6164.V2573.o_param_b
	.p2align	2
	.type	V6164.V2573.o_param_b,@function
V6164.V2573.o_param_b:                  # @V6164.V2573.o_param_b
# %bb.0:                                # %entry
	load %r3, %r3, 16
	load %r3, %r3, 4
	blr
.Lfunc_end65:
	.size	V6164.V2573.o_param_b, .Lfunc_end65-V6164.V2573.o_param_b
                                        # -- End function
	.globl	V6165.V2574.o_param_c   # -- Begin function V6165.V2574.o_param_c
	.p2align	2
	.type	V6165.V2574.o_param_c,@function
V6165.V2574.o_param_c:                  # @V6165.V2574.o_param_c
# %bb.0:                                # %entry
	load %r3, %r3, 16
	load %r3, %r3, 8
	blr
.Lfunc_end66:
	.size	V6165.V2574.o_param_c, .Lfunc_end66-V6165.V2574.o_param_c
                                        # -- End function
	.globl	V6162.V2571.o_isrot     # -- Begin function V6162.V2571.o_isrot
	.p2align	2
	.type	V6162.V2571.o_isrot,@function
V6162.V2571.o_isrot:                    # @V6162.V2571.o_isrot
# %bb.0:                                # %entry
	load %r3, %r3, 12
	blr
.Lfunc_end67:
	.size	V6162.V2571.o_isrot, .Lfunc_end67-V6162.V2571.o_isrot
                                        # -- End function
	.globl	V6175.V2584.o_param_r1  # -- Begin function V6175.V2584.o_param_r1
	.p2align	2
	.type	V6175.V2584.o_param_r1,@function
V6175.V2584.o_param_r1:                 # @V6175.V2584.o_param_r1
# %bb.0:                                # %entry
	load %r3, %r3, 36
	load %r3, %r3, 0
	blr
.Lfunc_end68:
	.size	V6175.V2584.o_param_r1, .Lfunc_end68-V6175.V2584.o_param_r1
                                        # -- End function
	.globl	V6176.V2585.o_param_r2  # -- Begin function V6176.V2585.o_param_r2
	.p2align	2
	.type	V6176.V2585.o_param_r2,@function
V6176.V2585.o_param_r2:                 # @V6176.V2585.o_param_r2
# %bb.0:                                # %entry
	load %r3, %r3, 36
	load %r3, %r3, 4
	blr
.Lfunc_end69:
	.size	V6176.V2585.o_param_r2, .Lfunc_end69-V6176.V2585.o_param_r2
                                        # -- End function
	.globl	V6177.V2586.o_param_r3  # -- Begin function V6177.V2586.o_param_r3
	.p2align	2
	.type	V6177.V2586.o_param_r3,@function
V6177.V2586.o_param_r3:                 # @V6177.V2586.o_param_r3
# %bb.0:                                # %entry
	load %r3, %r3, 36
	load %r3, %r3, 8
	blr
.Lfunc_end70:
	.size	V6177.V2586.o_param_r3, .Lfunc_end70-V6177.V2586.o_param_r3
                                        # -- End function
	.globl	V6166.V2575.o_param_abc # -- Begin function V6166.V2575.o_param_abc
	.p2align	2
	.type	V6166.V2575.o_param_abc,@function
V6166.V2575.o_param_abc:                # @V6166.V2575.o_param_abc
# %bb.0:                                # %entry
	load %r3, %r3, 16
	blr
.Lfunc_end71:
	.size	V6166.V2575.o_param_abc, .Lfunc_end71-V6166.V2575.o_param_abc
                                        # -- End function
	.globl	V6152.V2561.veciprod2   # -- Begin function V6152.V2561.veciprod2
	.p2align	2
	.type	V6152.V2561.veciprod2,@function
V6152.V2561.veciprod2:                  # @V6152.V2561.veciprod2
# %bb.0:                                # %entry
	load %r7, %r3, 4
	fmul	%r5, %r7, %r5
	load %r7, %r3, 0
	fmul	%r4, %r7, %r4
	fadd	%r4, %r4, %r5
	load %r3, %r3, 8
	fmul	%r3, %r3, %r6
	fadd	%r3, %r4, %r3
	blr
.Lfunc_end72:
	.size	V6152.V2561.veciprod2, .Lfunc_end72-V6152.V2561.veciprod2
                                        # -- End function
	.globl	V6131.V2540.fabs        # -- Begin function V6131.V2540.fabs
	.p2align	2
	.type	V6131.V2540.fabs,@function
V6131.V2540.fabs:                       # @V6131.V2540.fabs
# %bb.0:                                # %entry
	liw %r4, 0
	cmpf %r3,%r4
	bgt	.LBB73_2
# %bb.1:                                # %entry
	fsub	%r3, %r0, %r3
.LBB73_2:                               # %entry
	blr
.Lfunc_end73:
	.size	V6131.V2540.fabs, .Lfunc_end73-V6131.V2540.fabs
                                        # -- End function
	.globl	V6189.V2598.d_const     # -- Begin function V6189.V2598.d_const
	.p2align	2
	.type	V6189.V2598.d_const,@function
V6189.V2598.d_const:                    # @V6189.V2598.d_const
# %bb.0:                                # %entry
	load %r3, %r3, 4
	blr
.Lfunc_end74:
	.size	V6189.V2598.d_const, .Lfunc_end74-V6189.V2598.d_const
                                        # -- End function
	.globl	V6211.V2620.solver_rect_fast # -- Begin function V6211.V2620.solver_rect_fast
	.p2align	2
	.type	V6211.V2620.solver_rect_fast,@function
V6211.V2620.solver_rect_fast:           # @V6211.V2620.solver_rect_fast
# %bb.0:                                # %entry
	load %r9, %r5, 0
	fsub	%r9, %r9, %r6
	load %r12, %r5, 4
	fmul	%r11, %r9, %r12
	load %r10, %r4, 4
	fmul	%r9, %r11, %r10
	fadd	%r13, %r9, %r7
	liw %r9, 0
	cmpf %r13,%r9
	bgt	.LBB75_2
# %bb.1:                                # %entry
	fsub	%r13, %r0, %r13
.LBB75_2:                               # %entry
	load %r3, %r3, 16
	load %r9, %r3, 4
	cmpf %r13,%r9
	bge	.LBB75_7
	jump	.LBB75_3
.LBB75_3:                               # %else
	load %r13, %r4, 8
	fmul	%r13, %r11, %r13
	fadd	%r13, %r13, %r8
	liw %r14, 0
	cmpf %r13,%r14
	bgt	.LBB75_5
# %bb.4:                                # %else
	fsub	%r13, %r0, %r13
.LBB75_5:                               # %else
	load %r15, %r3, 8
	cmpf %r12,%r14
	beq	.LBB75_7
	jump	.LBB75_6
.LBB75_6:                               # %else
	cmpf %r13,%r15
	blt	.LBB75_23
	jump	.LBB75_7
.LBB75_23:                              # %else38
	store %r11, %r0, 136
	li %r3, 1
.LBB75_24:                              # %ifcont39
	blr
.LBB75_7:                               # %then9
	load %r11, %r5, 8
	fsub	%r11, %r11, %r7
	load %r14, %r5, 12
	fmul	%r13, %r11, %r14
	load %r11, %r4, 0
	fmul	%r12, %r13, %r11
	fadd	%r15, %r12, %r6
	liw %r12, 0
	cmpf %r15,%r12
	bgt	.LBB75_9
# %bb.8:                                # %then9
	fsub	%r15, %r0, %r15
.LBB75_9:                               # %then9
	load %r12, %r3, 0
	cmpf %r15,%r12
	bge	.LBB75_14
	jump	.LBB75_10
.LBB75_10:                              # %else14
	load %r4, %r4, 8
	fmul	%r4, %r13, %r4
	fadd	%r4, %r4, %r8
	liw %r15, 0
	cmpf %r4,%r15
	bgt	.LBB75_12
# %bb.11:                               # %else14
	fsub	%r4, %r0, %r4
.LBB75_12:                              # %else14
	load %r3, %r3, 8
	cmpf %r14,%r15
	beq	.LBB75_14
	jump	.LBB75_13
.LBB75_13:                              # %else14
	cmpf %r4,%r3
	blt	.LBB75_22
	jump	.LBB75_14
.LBB75_22:                              # %else36
	store %r13, %r0, 136
	li %r3, 2
	jump	.LBB75_24
.LBB75_14:                              # %then21
	load %r3, %r5, 16
	fsub	%r3, %r3, %r8
	load %r5, %r5, 20
	fmul	%r4, %r3, %r5
	fmul	%r3, %r4, %r11
	fadd	%r6, %r3, %r6
	liw %r3, 0
	cmpf %r6,%r3
	bgt	.LBB75_16
# %bb.15:                               # %then21
	fsub	%r6, %r0, %r6
.LBB75_16:                              # %then21
	li %r3, 0
	cmpf %r6,%r12
	bge	.LBB75_24
	jump	.LBB75_17
.LBB75_17:                              # %else26
	fmul	%r6, %r4, %r10
	fadd	%r6, %r6, %r7
	liw %r7, 0
	cmpf %r6,%r7
	bgt	.LBB75_19
# %bb.18:                               # %else26
	fsub	%r6, %r0, %r6
.LBB75_19:                              # %else26
	cmpf %r5,%r7
	beq	.LBB75_24
	jump	.LBB75_20
.LBB75_20:                              # %else26
	cmpf %r6,%r9
	bge	.LBB75_24
	jump	.LBB75_21
.LBB75_21:                              # %else34
	store %r4, %r0, 136
	li %r3, 3
	jump	.LBB75_24
.Lfunc_end75:
	.size	V6211.V2620.solver_rect_fast, .Lfunc_end75-V6211.V2620.solver_rect_fast
                                        # -- End function
	.globl	V6212.V2621.solver_surface_fast # -- Begin function V6212.V2621.solver_surface_fast
	.p2align	2
	.type	V6212.V2621.solver_surface_fast,@function
V6212.V2621.solver_surface_fast:        # @V6212.V2621.solver_surface_fast
# %bb.0:                                # %entry
	li %r3, 0
	load %r8, %r4, 0
	liw %r9, 0
	cmpf %r8,%r9
	bge	.LBB76_2
	jump	.LBB76_1
.LBB76_1:                               # %else
	load %r3, %r4, 8
	fmul	%r3, %r3, %r6
	load %r6, %r4, 4
	fmul	%r5, %r6, %r5
	fadd	%r3, %r5, %r3
	load %r4, %r4, 12
	fmul	%r4, %r4, %r7
	fadd	%r3, %r3, %r4
	store %r3, %r0, 136
	li %r3, 1
.LBB76_2:                               # %ifcont
	blr
.Lfunc_end76:
	.size	V6212.V2621.solver_surface_fast, .Lfunc_end76-V6212.V2621.solver_surface_fast
                                        # -- End function
	.globl	V6213.V2622.solver_second_fast # -- Begin function V6213.V2622.solver_second_fast
	.p2align	2
	.type	V6213.V2622.solver_second_fast,@function
V6213.V2622.solver_second_fast:         # @V6213.V2622.solver_second_fast
# %bb.0:                                # %entry
	addi	%r8, %r3, 0
	li %r3, 0
	load %r9, %r4, 0
	liw %r10, 0
	cmpf %r9,%r10
	beq	.LBB77_9
	jump	.LBB77_1
.LBB77_1:                               # %then
	load %r10, %r4, 8
	fmul	%r10, %r10, %r6
	load %r11, %r4, 4
	fmul	%r11, %r11, %r5
	fadd	%r10, %r11, %r10
	load %r11, %r4, 12
	fmul	%r11, %r11, %r7
	fmul	%r12, %r6, %r6
	load %r13, %r8, 16
	load %r14, %r13, 4
	fmul	%r12, %r12, %r14
	fmul	%r14, %r5, %r5
	load %r15, %r13, 0
	fmul	%r14, %r14, %r15
	fadd	%r12, %r14, %r12
	fmul	%r14, %r7, %r7
	load %r13, %r13, 8
	fmul	%r13, %r14, %r13
	fadd	%r12, %r12, %r13
	load %r13, %r8, 12
	cmpdi %r13,0
	beq	.LBB77_3
	jump	.LBB77_2
.LBB77_2:                               # %else.i
	load %r13, %r8, 36
	fmul	%r14, %r5, %r7
	load %r15, %r13, 4
	fmul	%r14, %r14, %r15
	fmul	%r7, %r6, %r7
	load %r15, %r13, 0
	fmul	%r7, %r7, %r15
	fadd	%r7, %r12, %r7
	fadd	%r7, %r7, %r14
	fmul	%r5, %r5, %r6
	load %r6, %r13, 8
	fmul	%r5, %r5, %r6
	fadd	%r12, %r7, %r5
.LBB77_3:                               # %V6207.V2616.quadratic.exit
	fadd	%r5, %r10, %r11
	liw %r6, -1082130432
	fadd	%r6, %r12, %r6
	load %r7, %r8, 4
	cmpdi %r7,3
	beq	.LBB77_5
# %bb.4:                                # %V6207.V2616.quadratic.exit
	addi	%r6, %r12, 0
.LBB77_5:                               # %V6207.V2616.quadratic.exit
	fmul	%r6, %r9, %r6
	fmul	%r7, %r5, %r5
	fsub	%r6, %r7, %r6
	liw %r7, 0
	cmpf %r6,%r7
	ble	.LBB77_9
	jump	.LBB77_6
.LBB77_6:                               # %else7
	load %r7, %r8, 24
	li %r3, 1
	and	%r7, %r7, %r3
	fsqrt	%r6, %r6
	cmpdi %r7,0
	bne	.LBB77_8
	jump	.LBB77_7
.LBB77_7:                               # %then8
	fsub	%r5, %r5, %r6
	load %r4, %r4, 16
	fmul	%r4, %r5, %r4
	store %r4, %r0, 136
	jump	.LBB77_9
.LBB77_8:                               # %else10
	fadd	%r5, %r5, %r6
	load %r4, %r4, 16
	fmul	%r4, %r5, %r4
	store %r4, %r0, 136
.LBB77_9:                               # %ifcont15
	blr
.Lfunc_end77:
	.size	V6213.V2622.solver_second_fast, .Lfunc_end77-V6213.V2622.solver_second_fast
                                        # -- End function
	.globl	V6135.V2544.fiszero     # -- Begin function V6135.V2544.fiszero
	.p2align	2
	.type	V6135.V2544.fiszero,@function
V6135.V2544.fiszero:                    # @V6135.V2544.fiszero
# %bb.0:                                # %entry
	addi	%r4, %r3, 0
	liw %r5, 0
	li %r3, 1
	cmpf %r4,%r5
	beq	.LBB78_2
# %bb.1:                                # %entry
	li %r3, 0
.LBB78_2:                               # %entry
	blr
.Lfunc_end78:
	.size	V6135.V2544.fiszero, .Lfunc_end78-V6135.V2544.fiszero
                                        # -- End function
	.globl	V6158.V2567.o_texturetype # -- Begin function V6158.V2567.o_texturetype
	.p2align	2
	.type	V6158.V2567.o_texturetype,@function
V6158.V2567.o_texturetype:              # @V6158.V2567.o_texturetype
# %bb.0:                                # %entry
	load %r3, %r3, 0
	blr
.Lfunc_end79:
	.size	V6158.V2567.o_texturetype, .Lfunc_end79-V6158.V2567.o_texturetype
                                        # -- End function
	.globl	V6172.V2581.o_color_red # -- Begin function V6172.V2581.o_color_red
	.p2align	2
	.type	V6172.V2581.o_color_red,@function
V6172.V2581.o_color_red:                # @V6172.V2581.o_color_red
# %bb.0:                                # %entry
	load %r3, %r3, 32
	load %r3, %r3, 0
	blr
.Lfunc_end80:
	.size	V6172.V2581.o_color_red, .Lfunc_end80-V6172.V2581.o_color_red
                                        # -- End function
	.globl	V6173.V2582.o_color_green # -- Begin function V6173.V2582.o_color_green
	.p2align	2
	.type	V6173.V2582.o_color_green,@function
V6173.V2582.o_color_green:              # @V6173.V2582.o_color_green
# %bb.0:                                # %entry
	load %r3, %r3, 32
	load %r3, %r3, 4
	blr
.Lfunc_end81:
	.size	V6173.V2582.o_color_green, .Lfunc_end81-V6173.V2582.o_color_green
                                        # -- End function
	.globl	V6174.V2583.o_color_blue # -- Begin function V6174.V2583.o_color_blue
	.p2align	2
	.type	V6174.V2583.o_color_blue,@function
V6174.V2583.o_color_blue:               # @V6174.V2583.o_color_blue
# %bb.0:                                # %entry
	load %r3, %r3, 32
	load %r3, %r3, 8
	blr
.Lfunc_end82:
	.size	V6174.V2583.o_color_blue, .Lfunc_end82-V6174.V2583.o_color_blue
                                        # -- End function
	.globl	V6137.V2546.sin         # -- Begin function V6137.V2546.sin
	.p2align	2
	.type	V6137.V2546.sin,@function
V6137.V2546.sin:                        # @V6137.V2546.sin
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB83_2
# %bb.1:                                # %entry
	liw %r5, -1082130432
.LBB83_2:                               # %entry
	store %r5, %fp, 1               # 4-byte Folded Spill
	fmul	%r3, %r5, %r3
	bl reduction
	load %r6, %fp, 1                # 4-byte Folded Reload
	fsub	%r4, %r0, %r6
	liw %r5, 1078530008
	cmpf %r3,%r5
	bge	.LBB83_4
# %bb.3:                                # %entry
	addi	%r4, %r6, 0
.LBB83_4:                               # %entry
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r5
	bge	.LBB83_6
# %bb.5:                                # %entry
	addi	%r6, %r3, 0
.LBB83_6:                               # %entry
	fsub	%r3, %r5, %r6
	liw %r5, 1070141402
	cmpf %r6,%r5
	bge	.LBB83_8
# %bb.7:                                # %entry
	addi	%r3, %r6, 0
.LBB83_8:                               # %entry
	liw %r5, 1061752794
	cmpf %r3,%r5
	bgt	.LBB83_10
	jump	.LBB83_9
.LBB83_10:                              # %else11
	liw %r5, 1070141402
	fsub	%r3, %r5, %r3
	liw %r5, -1123514240
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1131263730
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r3, %r6
	fmul	%r3, %r3, %r6
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	fadd	%r3, %r3, %r7
.LBB83_11:                              # %ifcont12
	fmul	%r3, %r4, %r3
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB83_9:                               # %then10
	liw %r5, -1128068060
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1134326311
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	jump	.LBB83_11
.Lfunc_end83:
	.size	V6137.V2546.sin, .Lfunc_end83-V6137.V2546.sin
                                        # -- End function
	.globl	V6138.V2547.cos         # -- Begin function V6138.V2547.cos
	.p2align	2
	.type	V6138.V2547.cos,@function
V6138.V2547.cos:                        # @V6138.V2547.cos
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB84_2
# %bb.1:                                # %entry
	fsub	%r3, %r0, %r3
.LBB84_2:                               # %entry
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB84_4
# %bb.3:                                # %entry
	liw %r5, 1065353216
.LBB84_4:                               # %entry
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB84_6
# %bb.5:                                # %entry
	addi	%r6, %r3, 0
.LBB84_6:                               # %entry
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB84_8
# %bb.7:                                # %entry
	addi	%r3, %r5, 0
.LBB84_8:                               # %entry
	fsub	%r4, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB84_10
# %bb.9:                                # %entry
	addi	%r4, %r6, 0
.LBB84_10:                              # %entry
	liw %r5, 1061752794
	cmpf %r4,%r5
	bgt	.LBB84_12
	jump	.LBB84_11
.LBB84_12:                              # %else14
	liw %r5, 1070141402
	fsub	%r4, %r5, %r4
	liw %r5, -1128068060
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1134326311
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
.LBB84_13:                              # %ifcont15
	fmul	%r3, %r3, %r4
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB84_11:                              # %then13
	liw %r5, -1123514240
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1131263730
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r4, %r6
	fmul	%r4, %r4, %r6
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r7
	jump	.LBB84_13
.Lfunc_end84:
	.size	V6138.V2547.cos, .Lfunc_end84-V6138.V2547.cos
                                        # -- End function
	.globl	V6139.V2548.atan        # -- Begin function V6139.V2548.atan
	.p2align	2
	.type	V6139.V2548.atan,@function
V6139.V2548.atan:                       # @V6139.V2548.atan
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB85_2
# %bb.1:                                # %entry
	liw %r5, -1082130432
.LBB85_2:                               # %entry
	fmul	%r3, %r5, %r3
	liw %r4, 1054867456
	cmpf %r3,%r4
	store %r5, %fp, 1               # 4-byte Folded Spill
	bgt	.LBB85_4
	jump	.LBB85_3
.LBB85_4:                               # %else2
	liw %r4, 1065353216
	cmpf %r3,%r4
	bgt	.LBB85_6
	jump	.LBB85_5
.LBB85_6:                               # %else4
	liw %r4, 1075479162
	cmpf %r3,%r4
	bgt	.LBB85_8
	jump	.LBB85_7
.LBB85_8:                               # %else6
	liw %r4, 1065353216
	fdiv	%r3, %r4, %r3
	bl kernel_atan
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	load %r5, %fp, 1                # 4-byte Folded Reload
.LBB85_9:                               # %ifcont9
	fmul	%r3, %r5, %r3
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB85_3:                               # %then1
	bl kernel_atan
	load %r5, %fp, 1                # 4-byte Folded Reload
	jump	.LBB85_9
.LBB85_5:                               # %then3
	fadd	%r5, %r3, %r4
	fsub	%r3, %r4, %r3
	fdiv	%r3, %r3, %r5
	bl kernel_atan
	load %r5, %fp, 1                # 4-byte Folded Reload
	liw %r4, 1061752794
	fsub	%r3, %r4, %r3
	jump	.LBB85_9
.LBB85_7:                               # %then5
	liw %r4, 1065353216
	fadd	%r4, %r3, %r4
	liw %r5, -1082130432
	fadd	%r3, %r3, %r5
	fdiv	%r3, %r3, %r4
	bl kernel_atan
	liw %r4, 1061752794
	fadd	%r3, %r3, %r4
	load %r5, %fp, 1                # 4-byte Folded Reload
	jump	.LBB85_9
.Lfunc_end85:
	.size	V6139.V2548.atan, .Lfunc_end85-V6139.V2548.atan
                                        # -- End function
	.globl	V6241.V2650.get_nvector_rect # -- Begin function V6241.V2650.get_nvector_rect
	.p2align	2
	.type	V6241.V2650.get_nvector_rect,@function
V6241.V2650.get_nvector_rect:           # @V6241.V2650.get_nvector_rect
# %bb.0:                                # %entry
	load %r4, %r0, 137
	li %r5, 0
	store %r5, %r0, 143
	store %r5, %r0, 147
	store %r5, %r0, 151
	srawi	%r4, %r4, 2
	add	%r3, %r3, %r4
	load %r6, %r3, -4
	liw %r3, 0
	liw %r5, -1082130432
	cmpf %r6,%r3
	bgt	.LBB86_2
# %bb.1:                                # %entry
	liw %r5, 1065353216
.LBB86_2:                               # %entry
	cmpf %r6,%r3
	beq	.LBB86_4
# %bb.3:                                # %entry
	addi	%r3, %r5, 0
.LBB86_4:                               # %entry
	store %r3, %r4, 139
	blr
.Lfunc_end86:
	.size	V6241.V2650.get_nvector_rect, .Lfunc_end86-V6241.V2650.get_nvector_rect
                                        # -- End function
	.globl	V6242.V2651.get_nvector_plane # -- Begin function V6242.V2651.get_nvector_plane
	.p2align	2
	.type	V6242.V2651.get_nvector_plane,@function
V6242.V2651.get_nvector_plane:          # @V6242.V2651.get_nvector_plane
# %bb.0:                                # %entry
	load %r4, %r3, 16
	load %r4, %r4, 0
	liw %r5, 0
	fsub	%r4, %r5, %r4
	store %r4, %r0, 143
	load %r4, %r3, 16
	load %r4, %r4, 4
	fsub	%r4, %r5, %r4
	store %r4, %r0, 147
	load %r3, %r3, 16
	load %r3, %r3, 8
	fsub	%r3, %r5, %r3
	store %r3, %r0, 151
	blr
.Lfunc_end87:
	.size	V6242.V2651.get_nvector_plane, .Lfunc_end87-V6242.V2651.get_nvector_plane
                                        # -- End function
	.globl	V6243.V2652.get_nvector_second # -- Begin function V6243.V2652.get_nvector_second
	.p2align	2
	.type	V6243.V2652.get_nvector_second,@function
V6243.V2652.get_nvector_second:         # @V6243.V2652.get_nvector_second
# %bb.0:                                # %entry
	load %r4, %r3, 20
	load %r5, %r4, 0
	load %r6, %r0, 139
	fsub	%r5, %r6, %r5
	load %r6, %r4, 4
	load %r7, %r0, 143
	fsub	%r6, %r7, %r6
	load %r4, %r4, 8
	load %r7, %r0, 147
	fsub	%r8, %r7, %r4
	load %r9, %r3, 16
	load %r4, %r9, 8
	fmul	%r4, %r8, %r4
	load %r7, %r9, 4
	fmul	%r7, %r6, %r7
	load %r9, %r9, 0
	fmul	%r9, %r5, %r9
	load %r10, %r3, 12
	cmpdi %r10,0
	bne	.LBB88_2
	jump	.LBB88_1
.LBB88_2:                               # %else
	load %r10, %r3, 36
	load %r11, %r10, 4
	fmul	%r11, %r8, %r11
	load %r10, %r10, 8
	fmul	%r10, %r6, %r10
	fadd	%r10, %r10, %r11
	liw %r11, 1056964608
	fmul	%r10, %r10, %r11
	fadd	%r9, %r9, %r10
	store %r9, %r0, 143
	load %r9, %r3, 36
	load %r10, %r9, 0
	fmul	%r8, %r8, %r10
	load %r9, %r9, 8
	fmul	%r9, %r5, %r9
	fadd	%r8, %r9, %r8
	fmul	%r8, %r8, %r11
	fadd	%r7, %r7, %r8
	store %r7, %r0, 147
	load %r7, %r3, 36
	load %r8, %r7, 0
	fmul	%r6, %r6, %r8
	load %r7, %r7, 4
	fmul	%r5, %r5, %r7
	fadd	%r5, %r5, %r6
	fmul	%r5, %r5, %r11
	fadd	%r4, %r4, %r5
.LBB88_3:                               # %ifcont
	store %r4, %r0, 151
	load %r5, %r0, 147
	fmul	%r7, %r5, %r5
	load %r6, %r0, 143
	fmul	%r8, %r6, %r6
	fadd	%r7, %r8, %r7
	fmul	%r8, %r4, %r4
	fadd	%r8, %r8, %r7
	liw %r7, 1065353216
	fsqrt	%r8, %r8
	liw %r9, 0
	cmpf %r8,%r9
	beq	.LBB88_7
	jump	.LBB88_4
.LBB88_4:                               # %then.i
	load %r3, %r3, 24
	li %r7, 1
	and	%r3, %r3, %r7
	cmpdi %r3,0
	bne	.LBB88_6
	jump	.LBB88_5
.LBB88_5:                               # %then4.i
	liw %r3, 1065353216
	fdiv	%r7, %r3, %r8
	jump	.LBB88_7
.LBB88_1:                               # %then
	store %r9, %r0, 143
	store %r7, %r0, 147
	jump	.LBB88_3
.LBB88_6:                               # %else.i
	liw %r3, -1082130432
	fdiv	%r7, %r3, %r8
.LBB88_7:                               # %V6150.V2559.vecunit_sgn.exit
	fmul	%r3, %r6, %r7
	store %r3, %r0, 143
	fmul	%r3, %r5, %r7
	store %r3, %r0, 147
	fmul	%r3, %r4, %r7
	store %r3, %r0, 151
	blr
.Lfunc_end88:
	.size	V6243.V2652.get_nvector_second, .Lfunc_end88-V6243.V2652.get_nvector_second
                                        # -- End function
	.globl	V6132.V2541.fhalf       # -- Begin function V6132.V2541.fhalf
	.p2align	2
	.type	V6132.V2541.fhalf,@function
V6132.V2541.fhalf:                      # @V6132.V2541.fhalf
# %bb.0:                                # %entry
	liw %r4, 1056964608
	fmul	%r3, %r3, %r4
	blr
.Lfunc_end89:
	.size	V6132.V2541.fhalf, .Lfunc_end89-V6132.V2541.fhalf
                                        # -- End function
	.globl	V6150.V2559.vecunit_sgn # -- Begin function V6150.V2559.vecunit_sgn
	.p2align	2
	.type	V6150.V2559.vecunit_sgn,@function
V6150.V2559.vecunit_sgn:                # @V6150.V2559.vecunit_sgn
# %bb.0:                                # %entry
	load %r6, %r3, 4
	fmul	%r7, %r6, %r6
	load %r5, %r3, 0
	fmul	%r8, %r5, %r5
	fadd	%r8, %r8, %r7
	load %r7, %r3, 8
	fmul	%r9, %r7, %r7
	fadd	%r9, %r8, %r9
	liw %r8, 1065353216
	fsqrt	%r9, %r9
	liw %r10, 0
	cmpf %r9,%r10
	beq	.LBB90_4
	jump	.LBB90_1
.LBB90_1:                               # %then
	li %r8, 1
	and	%r4, %r4, %r8
	cmpdi %r4,0
	bne	.LBB90_3
	jump	.LBB90_2
.LBB90_3:                               # %else
	liw %r4, -1082130432
	fdiv	%r8, %r4, %r9
.LBB90_4:                               # %ifcont6
	fmul	%r4, %r8, %r7
	store %r4, %r3, 8
	fmul	%r4, %r8, %r6
	store %r4, %r3, 4
	fmul	%r4, %r8, %r5
	store %r4, %r3, 0
	blr
.LBB90_2:                               # %then4
	liw %r4, 1065353216
	fdiv	%r8, %r4, %r9
	jump	.LBB90_4
.Lfunc_end90:
	.size	V6150.V2559.vecunit_sgn, .Lfunc_end90-V6150.V2559.vecunit_sgn
                                        # -- End function
	.globl	V6146.V2555.vecbzero    # -- Begin function V6146.V2555.vecbzero
	.p2align	2
	.type	V6146.V2555.vecbzero,@function
V6146.V2555.vecbzero:                   # @V6146.V2555.vecbzero
# %bb.0:                                # %entry
	li %r4, 0
	store %r4, %r3, 8
	store %r4, %r3, 4
	store %r4, %r3, 0
	blr
.Lfunc_end91:
	.size	V6146.V2555.vecbzero, .Lfunc_end91-V6146.V2555.vecbzero
                                        # -- End function
	.globl	V6141.V2550.sgn         # -- Begin function V6141.V2550.sgn
	.p2align	2
	.type	V6141.V2550.sgn,@function
V6141.V2550.sgn:                        # @V6141.V2550.sgn
# %bb.0:                                # %entry
	addi	%r4, %r3, 0
	liw %r3, 0
	liw %r5, 1065353216
	cmpf %r4,%r3
	bgt	.LBB92_2
# %bb.1:                                # %entry
	liw %r5, -1082130432
.LBB92_2:                               # %entry
	cmpf %r4,%r3
	beq	.LBB92_4
# %bb.3:                                # %entry
	addi	%r3, %r5, 0
.LBB92_4:                               # %entry
	blr
.Lfunc_end92:
	.size	V6141.V2550.sgn, .Lfunc_end92-V6141.V2550.sgn
                                        # -- End function
	.globl	V6145.V2554.vecfill     # -- Begin function V6145.V2554.vecfill
	.p2align	2
	.type	V6145.V2554.vecfill,@function
V6145.V2554.vecfill:                    # @V6145.V2554.vecfill
# %bb.0:                                # %entry
	store %r4, %r3, 8
	store %r4, %r3, 4
	store %r4, %r3, 0
	blr
.Lfunc_end93:
	.size	V6145.V2554.vecfill, .Lfunc_end93-V6145.V2554.vecfill
                                        # -- End function
	.globl	V6239.V2648.trace_or_matrix_fast # -- Begin function V6239.V2648.trace_or_matrix_fast
	.p2align	2
	.type	V6239.V2648.trace_or_matrix_fast,@function
V6239.V2648.trace_or_matrix_fast:       # @V6239.V2648.trace_or_matrix_fast
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	addi	%r6, %r3, 0
	store %r5, %fp, 4               # 4-byte Folded Spill
.LBB94_1:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB94_10 Depth 2
                                        #     Child Loop BB94_5 Depth 2
	srawi	%r3, %r6, 2
	load %r4, %fp, 1                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	load %r7, %r3, 0
	load %r3, %r7, 0
	cmpdi %r3,99
	store %r6, %fp, 2               # 4-byte Folded Spill
	beq	.LBB94_3
	jump	.LBB94_2
.LBB94_2:                               # %tailrecurse
                                        #   in Loop: Header=BB94_1 Depth=1
	cmpdi %r3,-1
	beq	.LBB94_12
	jump	.LBB94_6
.LBB94_6:                               # %else4
                                        #   in Loop: Header=BB94_1 Depth=1
	addi	%r4, %r5, 0
	store %r7, %fp, 3               # 4-byte Folded Spill
	bl V6217.V2626.solver_fast2
	load %r6, %fp, 3                # 4-byte Folded Reload
	load %r5, %fp, 4                # 4-byte Folded Reload
	cmpdi %r3,0
	beq	.LBB94_11
	jump	.LBB94_7
.LBB94_7:                               # %else8
                                        #   in Loop: Header=BB94_1 Depth=1
	load %r3, %r0, 138
	load %r4, %r0, 136
	cmpf %r4,%r3
	bge	.LBB94_11
	jump	.LBB94_8
.LBB94_8:                               # %else10
                                        #   in Loop: Header=BB94_1 Depth=1
	load %r3, %r6, 4
	cmpdi %r3,-1
	beq	.LBB94_11
	jump	.LBB94_9
.LBB94_9:                               # %else3.i14.preheader
                                        #   in Loop: Header=BB94_1 Depth=1
	addi	%r4, %r6, 8
.LBB94_10:                              # %else3.i14
                                        #   Parent Loop BB94_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 4                # 4-byte Folded Reload
	bl V6237.V2646.solve_each_element_fast
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	bne	.LBB94_10
	jump	.LBB94_11
.LBB94_3:                               # %then3
                                        #   in Loop: Header=BB94_1 Depth=1
	load %r3, %r7, 4
	cmpdi %r3,-1
	beq	.LBB94_11
	jump	.LBB94_4
.LBB94_4:                               # %else3.i.preheader
                                        #   in Loop: Header=BB94_1 Depth=1
	addi	%r4, %r7, 8
.LBB94_5:                               # %else3.i
                                        #   Parent Loop BB94_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 4                # 4-byte Folded Reload
	bl V6237.V2646.solve_each_element_fast
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB94_11
	jump	.LBB94_5
.LBB94_11:                              # %ifcont13
                                        #   in Loop: Header=BB94_1 Depth=1
	load %r6, %fp, 2                # 4-byte Folded Reload
	addi	%r6, %r6, 1
	jump	.LBB94_1
.LBB94_12:                              # %ifcont14
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end94:
	.size	V6239.V2648.trace_or_matrix_fast, .Lfunc_end94-V6239.V2648.trace_or_matrix_fast
                                        # -- End function
	.globl	V6238.V2647.solve_one_or_network_fast # -- Begin function V6238.V2647.solve_one_or_network_fast
	.p2align	2
	.type	V6238.V2647.solve_one_or_network_fast,@function
V6238.V2647.solve_one_or_network_fast:  # @V6238.V2647.solve_one_or_network_fast
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	add	%r4, %r4, %r3
	load %r3, %r4, 0
	cmpdi %r3,-1
	beq	.LBB95_3
	jump	.LBB95_1
.LBB95_1:                               # %else3.preheader
	addi	%r4, %r4, 4
	store %r5, %fp, 2               # 4-byte Folded Spill
.LBB95_2:                               # %else3
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 2                # 4-byte Folded Reload
	bl V6237.V2646.solve_each_element_fast
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r3, %fp, 1                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	bne	.LBB95_2
	jump	.LBB95_3
.LBB95_3:                               # %ifcont5
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end95:
	.size	V6238.V2647.solve_one_or_network_fast, .Lfunc_end95-V6238.V2647.solve_one_or_network_fast
                                        # -- End function
	.globl	V6217.V2626.solver_fast2 # -- Begin function V6217.V2626.solver_fast2
	.p2align	2
	.type	V6217.V2626.solver_fast2,@function
V6217.V2626.solver_fast2:               # @V6217.V2626.solver_fast2
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r5, %r4, 4
	add	%r5, %r5, %r3
	load %r5, %r5, 0
	load %r9, %r3, 13
	load %r10, %r9, 40
	load %r8, %r10, 8
	load %r7, %r10, 4
	load %r6, %r10, 0
	load %r3, %r9, 4
	cmpdi %r3,2
	beq	.LBB96_3
	jump	.LBB96_1
.LBB96_1:                               # %entry
	cmpdi %r3,1
	bne	.LBB96_5
	jump	.LBB96_2
.LBB96_2:                               # %then
	load %r4, %r4, 0
	addi	%r3, %r9, 0
	bl V6211.V2620.solver_rect_fast
	jump	.LBB96_10
.LBB96_3:                               # %then6
	li %r3, 0
	load %r4, %r5, 0
	liw %r5, 0
	cmpf %r4,%r5
	bge	.LBB96_10
	jump	.LBB96_4
.LBB96_4:                               # %else.i4
	load %r3, %r10, 12
	fmul	%r3, %r4, %r3
	store %r3, %r0, 136
	li %r3, 1
	jump	.LBB96_10
.LBB96_5:                               # %else7
	li %r3, 0
	load %r12, %r5, 0
	liw %r11, 0
	cmpf %r12,%r11
	beq	.LBB96_10
	jump	.LBB96_6
.LBB96_6:                               # %then.i
	load %r4, %r5, 8
	fmul	%r4, %r7, %r4
	load %r7, %r5, 4
	fmul	%r6, %r6, %r7
	fadd	%r4, %r6, %r4
	load %r6, %r5, 12
	fmul	%r6, %r8, %r6
	fadd	%r4, %r4, %r6
	load %r6, %r10, 12
	fmul	%r6, %r12, %r6
	fmul	%r7, %r4, %r4
	fsub	%r6, %r7, %r6
	cmpf %r6,%r11
	ble	.LBB96_10
	jump	.LBB96_7
.LBB96_7:                               # %else.i
	load %r7, %r9, 24
	li %r3, 1
	and	%r7, %r7, %r3
	fsqrt	%r6, %r6
	cmpdi %r7,0
	bne	.LBB96_9
	jump	.LBB96_8
.LBB96_8:                               # %then7.i
	fsub	%r4, %r4, %r6
	load %r5, %r5, 16
	fmul	%r4, %r4, %r5
	store %r4, %r0, 136
	jump	.LBB96_10
.LBB96_9:                               # %else9.i
	fadd	%r4, %r4, %r6
	load %r5, %r5, 16
	fmul	%r4, %r4, %r5
	store %r4, %r0, 136
.LBB96_10:                              # %ifcont8
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end96:
	.size	V6217.V2626.solver_fast2, .Lfunc_end96-V6217.V2626.solver_fast2
                                        # -- End function
	.globl	V6178.V2587.o_param_ctbl # -- Begin function V6178.V2587.o_param_ctbl
	.p2align	2
	.type	V6178.V2587.o_param_ctbl,@function
V6178.V2587.o_param_ctbl:               # @V6178.V2587.o_param_ctbl
# %bb.0:                                # %entry
	load %r3, %r3, 40
	blr
.Lfunc_end97:
	.size	V6178.V2587.o_param_ctbl, .Lfunc_end97-V6178.V2587.o_param_ctbl
                                        # -- End function
	.globl	V6215.V2624.solver_surface_fast2 # -- Begin function V6215.V2624.solver_surface_fast2
	.p2align	2
	.type	V6215.V2624.solver_surface_fast2,@function
V6215.V2624.solver_surface_fast2:       # @V6215.V2624.solver_surface_fast2
# %bb.0:                                # %entry
	li %r3, 0
	load %r4, %r4, 0
	liw %r6, 0
	cmpf %r4,%r6
	bge	.LBB98_2
	jump	.LBB98_1
.LBB98_1:                               # %else
	load %r3, %r5, 12
	fmul	%r3, %r4, %r3
	store %r3, %r0, 136
	li %r3, 1
.LBB98_2:                               # %ifcont
	blr
.Lfunc_end98:
	.size	V6215.V2624.solver_surface_fast2, .Lfunc_end98-V6215.V2624.solver_surface_fast2
                                        # -- End function
	.globl	V6216.V2625.solver_second_fast2 # -- Begin function V6216.V2625.solver_second_fast2
	.p2align	2
	.type	V6216.V2625.solver_second_fast2,@function
V6216.V2625.solver_second_fast2:        # @V6216.V2625.solver_second_fast2
# %bb.0:                                # %entry
	addi	%r9, %r3, 0
	li %r3, 0
	load %r11, %r4, 0
	liw %r10, 0
	cmpf %r11,%r10
	beq	.LBB99_5
	jump	.LBB99_1
.LBB99_1:                               # %then
	load %r12, %r4, 8
	fmul	%r7, %r12, %r7
	load %r12, %r4, 4
	fmul	%r6, %r12, %r6
	fadd	%r6, %r6, %r7
	load %r7, %r4, 12
	fmul	%r7, %r7, %r8
	fadd	%r6, %r6, %r7
	load %r5, %r5, 12
	fmul	%r5, %r11, %r5
	fmul	%r7, %r6, %r6
	fsub	%r5, %r7, %r5
	cmpf %r5,%r10
	ble	.LBB99_5
	jump	.LBB99_2
.LBB99_2:                               # %else
	load %r7, %r9, 24
	li %r3, 1
	and	%r7, %r7, %r3
	fsqrt	%r5, %r5
	cmpdi %r7,0
	bne	.LBB99_4
	jump	.LBB99_3
.LBB99_3:                               # %then7
	fsub	%r5, %r6, %r5
	load %r4, %r4, 16
	fmul	%r4, %r5, %r4
	store %r4, %r0, 136
	jump	.LBB99_5
.LBB99_4:                               # %else9
	fadd	%r5, %r6, %r5
	load %r4, %r4, 16
	fmul	%r4, %r5, %r4
	store %r4, %r0, 136
.LBB99_5:                               # %ifcont13
	blr
.Lfunc_end99:
	.size	V6216.V2625.solver_second_fast2, .Lfunc_end99-V6216.V2625.solver_second_fast2
                                        # -- End function
	.globl	V6237.V2646.solve_each_element_fast # -- Begin function V6237.V2646.solve_each_element_fast
	.p2align	2
	.type	V6237.V2646.solve_each_element_fast,@function
V6237.V2646.solve_each_element_fast:    # @V6237.V2646.solve_each_element_fast
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 13
	store %fp, %sp, 0
	store %lr, %fp, 12              # 4-byte Folded Spill
	store %r5, %fp, 4               # 4-byte Folded Spill
	store %r3, %fp, 9               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	store %r4, %fp, 5               # 4-byte Folded Spill
	add	%r3, %r4, %r3
	load %r5, %r3, 0
	cmpdi %r5,-1
	beq	.LBB100_12
	jump	.LBB100_1
.LBB100_1:                              # %else.preheader
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r3, 4
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB100_2:                              # %else
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB100_10 Depth 2
	store %r5, %fp, 11              # 4-byte Folded Spill
	load %r4, %fp, 4                # 4-byte Folded Reload
	load %r3, %r4, 0
	store %r3, %fp, 10              # 4-byte Folded Spill
	addi	%r3, %r5, 0
	bl V6217.V2626.solver_fast2
	cmpdi %r3,0
	bne	.LBB100_5
	jump	.LBB100_3
.LBB100_5:                              # %else9
                                        #   in Loop: Header=BB100_2 Depth=1
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 136
	liw %r4, 0
	cmpf %r3,%r4
	load %r5, %fp, 11               # 4-byte Folded Reload
	ble	.LBB100_4
	jump	.LBB100_6
.LBB100_6:                              # %else11
                                        #   in Loop: Header=BB100_2 Depth=1
	load %r4, %r0, 138
	cmpf %r3,%r4
	bge	.LBB100_4
	jump	.LBB100_7
.LBB100_7:                              # %else13
                                        #   in Loop: Header=BB100_2 Depth=1
	liw %r4, 1008981770
	fadd	%r6, %r3, %r4
	load %r7, %fp, 10               # 4-byte Folded Reload
	load %r3, %r7, 8
	fmul	%r3, %r6, %r3
	load %r4, %r0, 171
	fadd	%r3, %r3, %r4
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %r7, 4
	fmul	%r3, %r6, %r3
	load %r4, %r0, 167
	fadd	%r3, %r3, %r4
	store %r3, %fp, 7               # 4-byte Folded Spill
	load %r3, %r7, 0
	store %r6, %fp, 2               # 4-byte Folded Spill
	fmul	%r3, %r6, %r3
	load %r4, %r0, 163
	fadd	%r3, %r3, %r4
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB100_11
	jump	.LBB100_8
.LBB100_8:                              # %else.i.preheader
                                        #   in Loop: Header=BB100_2 Depth=1
	load %r4, %fp, 1                # 4-byte Folded Reload
	jump	.LBB100_10
.LBB100_10:                             # %else.i
                                        #   Parent Loop BB100_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 10              # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r4, %fp, 6                # 4-byte Folded Reload
	load %r5, %fp, 7                # 4-byte Folded Reload
	load %r6, %fp, 8                # 4-byte Folded Reload
	bl V6228.V2637.is_outside
	load %r5, %fp, 11               # 4-byte Folded Reload
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB100_4
	jump	.LBB100_9
.LBB100_9:                              # %tailrecurse.i
                                        #   in Loop: Header=BB100_10 Depth=2
	load %r3, %fp, 10               # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB100_11
	jump	.LBB100_10
.LBB100_11:                             # %else18
                                        #   in Loop: Header=BB100_2 Depth=1
	load %r3, %fp, 2                # 4-byte Folded Reload
	store %r3, %r0, 138
	load %r3, %fp, 6                # 4-byte Folded Reload
	store %r3, %r0, 139
	load %r3, %fp, 7                # 4-byte Folded Reload
	store %r3, %r0, 143
	load %r3, %fp, 8                # 4-byte Folded Reload
	store %r3, %r0, 147
	store %r5, %r0, 142
	load %r3, %fp, 3                # 4-byte Folded Reload
	store %r3, %r0, 137
	jump	.LBB100_4
.LBB100_3:                              # %then4
                                        #   in Loop: Header=BB100_2 Depth=1
	load %r3, %fp, 11               # 4-byte Folded Reload
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r3, %r3, 24
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	beq	.LBB100_12
	jump	.LBB100_4
.LBB100_4:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB100_2 Depth=1
	load %r3, %fp, 9                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	store %r3, %fp, 9               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %fp, 5                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	load %r5, %r3, 0
	cmpdi %r5,-1
	beq	.LBB100_12
	jump	.LBB100_2
.LBB100_12:                             # %ifcont23
	load %lr, %fp, 12               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end100:
	.size	V6237.V2646.solve_each_element_fast, .Lfunc_end100-V6237.V2646.solve_each_element_fast
                                        # -- End function
	.globl	V6144.V2553.vecset      # -- Begin function V6144.V2553.vecset
	.p2align	2
	.type	V6144.V2553.vecset,@function
V6144.V2553.vecset:                     # @V6144.V2553.vecset
# %bb.0:                                # %entry
	store %r6, %r3, 8
	store %r5, %r3, 4
	store %r4, %r3, 0
	blr
.Lfunc_end101:
	.size	V6144.V2553.vecset, .Lfunc_end101-V6144.V2553.vecset
                                        # -- End function
	.globl	V6223.V2632.setup_startp_constants # -- Begin function V6223.V2632.setup_startp_constants
	.p2align	2
	.type	V6223.V2632.setup_startp_constants,@function
V6223.V2632.setup_startp_constants:     # @V6223.V2632.setup_startp_constants
# %bb.0:                                # %entry
	cmpdi %r4,0
	blt	.LBB102_11
	jump	.LBB102_1
.LBB102_1:                              # %then.lr.ph
	addi	%r5, %r4, 1
	srawi	%r4, %r4, 2
	addi	%r4, %r4, 13
	liw %r6, -1082130432
.LBB102_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r10, %r4, 0
	load %r7, %r10, 20
	load %r7, %r7, 0
	load %r8, %r3, 0
	fsub	%r9, %r8, %r7
	load %r8, %r10, 4
	load %r7, %r10, 40
	store %r9, %r7, 0
	load %r11, %r10, 20
	load %r11, %r11, 4
	load %r12, %r3, 4
	fsub	%r11, %r12, %r11
	store %r11, %r7, 4
	load %r12, %r3, 8
	load %r13, %r10, 20
	load %r13, %r13, 8
	fsub	%r12, %r12, %r13
	store %r12, %r7, 8
	cmpdi %r8,2
	bne	.LBB102_4
	jump	.LBB102_3
.LBB102_3:                              # %then5
                                        #   in Loop: Header=BB102_2 Depth=1
	load %r8, %r10, 16
	load %r10, %r8, 4
	fmul	%r10, %r11, %r10
	load %r11, %r8, 0
	fmul	%r9, %r9, %r11
	fadd	%r9, %r9, %r10
	load %r8, %r8, 8
	fmul	%r8, %r12, %r8
	fadd	%r8, %r9, %r8
	store %r8, %r7, 12
	jump	.LBB102_10
.LBB102_4:                              # %else
                                        #   in Loop: Header=BB102_2 Depth=1
	cmpdi %r8,3
	blt	.LBB102_10
	jump	.LBB102_5
.LBB102_5:                              # %then9
                                        #   in Loop: Header=BB102_2 Depth=1
	fmul	%r13, %r11, %r11
	load %r14, %r10, 16
	load %r15, %r14, 4
	fmul	%r13, %r13, %r15
	fmul	%r15, %r9, %r9
	load %r16, %r14, 0
	fmul	%r15, %r15, %r16
	fadd	%r13, %r15, %r13
	fmul	%r15, %r12, %r12
	load %r14, %r14, 8
	fmul	%r14, %r15, %r14
	fadd	%r13, %r13, %r14
	load %r14, %r10, 12
	cmpdi %r14,0
	beq	.LBB102_7
	jump	.LBB102_6
.LBB102_6:                              # %else.i
                                        #   in Loop: Header=BB102_2 Depth=1
	load %r10, %r10, 36
	fmul	%r14, %r12, %r9
	load %r15, %r10, 4
	fmul	%r14, %r14, %r15
	fmul	%r12, %r12, %r11
	load %r15, %r10, 0
	fmul	%r12, %r12, %r15
	fadd	%r12, %r13, %r12
	fadd	%r12, %r12, %r14
	fmul	%r9, %r9, %r11
	load %r10, %r10, 8
	fmul	%r9, %r9, %r10
	fadd	%r13, %r12, %r9
.LBB102_7:                              # %V6207.V2616.quadratic.exit
                                        #   in Loop: Header=BB102_2 Depth=1
	fadd	%r9, %r13, %r6
	cmpdi %r8,3
	beq	.LBB102_9
# %bb.8:                                # %V6207.V2616.quadratic.exit
                                        #   in Loop: Header=BB102_2 Depth=1
	addi	%r9, %r13, 0
.LBB102_9:                              # %V6207.V2616.quadratic.exit
                                        #   in Loop: Header=BB102_2 Depth=1
	store %r9, %r7, 12
.LBB102_10:                             # %ifcont17
                                        #   in Loop: Header=BB102_2 Depth=1
	addi	%r4, %r4, -4
	addi	%r5, %r5, -1
	cmpdi %r5,0
	bgt	.LBB102_2
	jump	.LBB102_11
.LBB102_11:                             # %ifcont19
	blr
.Lfunc_end102:
	.size	V6223.V2632.setup_startp_constants, .Lfunc_end102-V6223.V2632.setup_startp_constants
                                        # -- End function
	.globl	V6264.V2673.pretrace_pixels # -- Begin function V6264.V2673.pretrace_pixels
	.p2align	2
	.type	V6264.V2673.pretrace_pixels,@function
V6264.V2673.pretrace_pixels:            # @V6264.V2673.pretrace_pixels
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	store %r8, %fp, 3               # 4-byte Folded Spill
	store %r7, %fp, 2               # 4-byte Folded Spill
	store %r6, %fp, 1               # 4-byte Folded Spill
	store %r5, %fp, 6               # 4-byte Folded Spill
	cmpdi %r4,0
	blt	.LBB103_7
	jump	.LBB103_1
.LBB103_1:                              # %then.preheader
	srawi	%r5, %r4, 2
	add	%r9, %r3, %r5
.LBB103_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %r0, 157
	store %r4, %fp, 4               # 4-byte Folded Spill
	sub	%r3, %r4, %r3
	itof	%r3, %r3
	load %r4, %r0, 159
	fmul	%r3, %r4, %r3
	load %r4, %r0, 166
	fmul	%r4, %r4, %r3
	load %r5, %fp, 1                # 4-byte Folded Reload
	fadd	%r4, %r4, %r5
	store %r4, %r0, 175
	load %r4, %r0, 170
	fmul	%r4, %r3, %r4
	load %r5, %fp, 2                # 4-byte Folded Reload
	fadd	%r4, %r4, %r5
	store %r4, %r0, 179
	load %r4, %r0, 174
	fmul	%r3, %r3, %r4
	load %r4, %fp, 3                # 4-byte Folded Reload
	fadd	%r3, %r3, %r4
	store %r3, %r0, 183
	load %r4, %r0, 179
	fmul	%r6, %r4, %r4
	load %r5, %r0, 175
	fmul	%r7, %r5, %r5
	fadd	%r6, %r7, %r6
	fmul	%r7, %r3, %r3
	fadd	%r6, %r7, %r6
	fsqrt	%r7, %r6
	liw %r8, 1065353216
	liw %r6, 0
	cmpf %r7,%r6
	liw %r6, 1065353216
	beq	.LBB103_4
# %bb.3:                                # %then
                                        #   in Loop: Header=BB103_2 Depth=1
	fdiv	%r6, %r8, %r7
.LBB103_4:                              # %then
                                        #   in Loop: Header=BB103_2 Depth=1
	fmul	%r5, %r5, %r6
	store %r5, %r0, 175
	fmul	%r4, %r4, %r6
	store %r4, %r0, 179
	fmul	%r3, %r3, %r6
	store %r3, %r0, 183
	li %r3, 0
	store %r3, %r0, 152
	store %r3, %r0, 156
	store %r3, %r0, 160
	load %r3, %r0, 76
	store %r3, %r0, 160
	load %r3, %r0, 80
	store %r3, %r0, 164
	load %r3, %r0, 84
	store %r3, %r0, 168
	load %r6, %r9, 0
	li %r3, 0
	liw %r4, 1065353216
	li %r5, 175
	liw %r7, 0
	store %r9, %fp, 5               # 4-byte Folded Spill
	bl V6248.V2657.trace_ray
	load %r5, %fp, 5                # 4-byte Folded Reload
	load %r3, %r5, 0
	load %r3, %r3, 0
	load %r4, %r0, 152
	store %r4, %r3, 0
	load %r4, %r0, 156
	store %r4, %r3, 4
	load %r4, %r0, 160
	store %r4, %r3, 8
	addi	%r4, %r5, 0
	load %r3, %r5, 0
	load %r3, %r3, 24
	load %r5, %fp, 6                # 4-byte Folded Reload
	store %r5, %fp, 6               # 4-byte Folded Spill
	store %r5, %r3, 0
	load %r3, %r4, 0
	li %r4, 0
	bl V6263.V2672.pretrace_diffuse_rays
	load %r4, %fp, 6                # 4-byte Folded Reload
	addi	%r3, %r4, 1
	addi	%r4, %r4, -4
	store %r4, %fp, 6               # 4-byte Folded Spill
	cmpdi %r3,4
	bgt	.LBB103_6
# %bb.5:                                # %then
                                        #   in Loop: Header=BB103_2 Depth=1
	store %r3, %fp, 6               # 4-byte Folded Spill
.LBB103_6:                              # %then
                                        #   in Loop: Header=BB103_2 Depth=1
	load %r9, %fp, 5                # 4-byte Folded Reload
	addi	%r9, %r9, -4
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r4, -1
	cmpdi %r4,0
	addi	%r4, %r3, 0
	bgt	.LBB103_2
	jump	.LBB103_7
.LBB103_7:                              # %ifcont
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end103:
	.size	V6264.V2673.pretrace_pixels, .Lfunc_end103-V6264.V2673.pretrace_pixels
                                        # -- End function
	.globl	V6248.V2657.trace_ray   # -- Begin function V6248.V2657.trace_ray
	.p2align	2
	.type	V6248.V2657.trace_ray,@function
V6248.V2657.trace_ray:                  # @V6248.V2657.trace_ray
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 12
	store %fp, %sp, 0
	store %lr, %fp, 11              # 4-byte Folded Spill
	store %r4, %fp, 10              # 4-byte Folded Spill
	cmpdi %r3,4
	bgt	.LBB104_29
	jump	.LBB104_1
.LBB104_1:                              # %then.lr.ph
	srawi	%r8, %r3, 2
	store %r5, %fp, 9               # 4-byte Folded Spill
	store %r6, %fp, 4               # 4-byte Folded Spill
.LBB104_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r8, %fp, 6               # 4-byte Folded Spill
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r6, 8
	store %r3, %fp, 5               # 4-byte Folded Spill
	liw %r3, 1315859240
	store %r3, %r0, 138
	load %r4, %r0, 135
	li %r3, 0
	bl V6235.V2644.trace_or_matrix
	load %r3, %r0, 138
	liw %r4, -1110651699
	cmpf %r3,%r4
	ble	.LBB104_4
	jump	.LBB104_3
.LBB104_3:                              # %then
                                        #   in Loop: Header=BB104_2 Depth=1
	liw %r4, 1287568416
	cmpf %r3,%r4
	blt	.LBB104_7
	jump	.LBB104_4
.LBB104_7:                              # %else9
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %r0, 142
	srawi	%r5, %r3, 2
	load %r7, %r5, 13
	load %r3, %r7, 28
	load %r8, %r3, 0
	load %r4, %r7, 8
	load %r3, %r7, 4
	cmpdi %r3,2
	store %r7, %fp, 7               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	store %r5, %fp, 2               # 4-byte Folded Spill
	beq	.LBB104_14
	jump	.LBB104_8
.LBB104_8:                              # %else9
                                        #   in Loop: Header=BB104_2 Depth=1
	cmpdi %r3,1
	bne	.LBB104_15
	jump	.LBB104_9
.LBB104_9:                              # %then.i
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %r0, 137
	li %r4, 0
	store %r4, %r0, 143
	store %r4, %r0, 147
	store %r4, %r0, 151
	srawi	%r3, %r3, 2
	load %r4, %fp, 9                # 4-byte Folded Reload
	add	%r4, %r4, %r3
	load %r6, %r4, -4
	liw %r4, 0
	liw %r5, -1082130432
	cmpf %r6,%r4
	bgt	.LBB104_11
# %bb.10:                               # %then.i
                                        #   in Loop: Header=BB104_2 Depth=1
	liw %r5, 1065353216
.LBB104_11:                             # %then.i
                                        #   in Loop: Header=BB104_2 Depth=1
	cmpf %r6,%r4
	beq	.LBB104_13
# %bb.12:                               # %then.i
                                        #   in Loop: Header=BB104_2 Depth=1
	addi	%r4, %r5, 0
.LBB104_13:                             # %then.i
                                        #   in Loop: Header=BB104_2 Depth=1
	store %r4, %r3, 139
	jump	.LBB104_16
.LBB104_14:                             # %then1.i
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %r7, 16
	load %r3, %r3, 0
	liw %r4, 0
	fsub	%r3, %r4, %r3
	store %r3, %r0, 143
	load %r3, %r7, 16
	load %r3, %r3, 4
	fsub	%r3, %r4, %r3
	store %r3, %r0, 147
	load %r3, %r7, 16
	load %r3, %r3, 8
	fsub	%r3, %r4, %r3
	store %r3, %r0, 151
	jump	.LBB104_16
.LBB104_15:                             # %else2.i65
                                        #   in Loop: Header=BB104_2 Depth=1
	addi	%r3, %r7, 0
	store %r8, %fp, 8               # 4-byte Folded Spill
	bl V6243.V2652.get_nvector_second
	load %r8, %fp, 8                # 4-byte Folded Reload
	load %r7, %fp, 7                # 4-byte Folded Reload
.LBB104_16:                             # %V6244.V2653.get_nvector.exit
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %fp, 10               # 4-byte Folded Reload
	fmul	%r3, %r3, %r8
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %r0, 139
	store %r3, %r0, 160
	load %r3, %r0, 143
	store %r3, %r0, 164
	load %r3, %r0, 147
	store %r3, %r0, 168
	addi	%r3, %r7, 0
	li %r4, 139
	bl V6245.V2654.utexture
	load %r10, %fp, 7               # 4-byte Folded Reload
	load %r3, %r0, 137
	load %r4, %fp, 2                # 4-byte Folded Reload
	add	%r3, %r3, %r4
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r4, %fp, 5                # 4-byte Folded Reload
	add	%r8, %r4, %r7
	store %r3, %r8, 0
	load %r6, %fp, 4                # 4-byte Folded Reload
	load %r3, %r6, 4
	add	%r3, %r3, %r7
	load %r3, %r3, 0
	load %r4, %r0, 139
	store %r4, %r3, 0
	load %r4, %r0, 143
	store %r4, %r3, 4
	load %r4, %r0, 147
	store %r4, %r3, 8
	load %r3, %r6, 12
	load %r4, %r10, 28
	load %r4, %r4, 0
	liw %r5, 1056964608
	cmpf %r4,%r5
	store %r8, %fp, 2               # 4-byte Folded Spill
	blt	.LBB104_18
	jump	.LBB104_17
.LBB104_18:                             # %else16
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r4, %fp, 8                # 4-byte Folded Reload
	add	%r3, %r3, %r7
	li %r4, 0
	store %r4, %r3, 0
	load %r9, %fp, 9                # 4-byte Folded Reload
.LBB104_19:                             # %ifcont17
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %r9, 4
	load %r4, %r0, 147
	fmul	%r4, %r3, %r4
	load %r5, %r9, 0
	load %r6, %r0, 143
	fmul	%r7, %r5, %r6
	fadd	%r4, %r7, %r4
	load %r7, %r9, 8
	load %r8, %r0, 151
	fmul	%r8, %r7, %r8
	fadd	%r4, %r4, %r8
	liw %r8, -1073741824
	fmul	%r4, %r4, %r8
	fmul	%r6, %r6, %r4
	fadd	%r5, %r5, %r6
	store %r5, %r9, 0
	load %r5, %r0, 147
	fmul	%r5, %r5, %r4
	fadd	%r3, %r3, %r5
	store %r3, %r9, 4
	load %r3, %r0, 151
	fmul	%r3, %r4, %r3
	fadd	%r3, %r7, %r3
	store %r3, %r9, 8
	load %r3, %r10, 28
	load %r3, %r3, 4
	load %r4, %fp, 10               # 4-byte Folded Reload
	fmul	%r3, %r4, %r3
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r4, %r0, 135
	li %r3, 0
	bl V6232.V2641.shadow_check_one_or_matrix
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB104_24
	jump	.LBB104_20
.LBB104_20:                             # %else19
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r9, %fp, 5                # 4-byte Folded Reload
	load %r4, %r0, 83
	load %r3, %r0, 147
	fmul	%r3, %r3, %r4
	load %r5, %r0, 79
	load %r6, %r0, 143
	fmul	%r6, %r6, %r5
	fadd	%r3, %r6, %r3
	load %r6, %r0, 87
	load %r7, %r0, 151
	fmul	%r7, %r7, %r6
	fadd	%r3, %r3, %r7
	liw %r8, 0
	fsub	%r3, %r8, %r3
	load %r7, %fp, 8                # 4-byte Folded Reload
	fmul	%r3, %r7, %r3
	load %r10, %fp, 9               # 4-byte Folded Reload
	load %r7, %r10, 4
	fmul	%r4, %r4, %r7
	load %r7, %r10, 0
	fmul	%r5, %r5, %r7
	fadd	%r4, %r5, %r4
	load %r5, %r10, 8
	fmul	%r5, %r6, %r5
	fadd	%r4, %r4, %r5
	fsub	%r4, %r8, %r4
	liw %r7, 0
	cmpf %r3,%r8
	ble	.LBB104_22
	jump	.LBB104_21
.LBB104_21:                             # %else.i
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r5, %r0, 146
	fmul	%r5, %r3, %r5
	load %r6, %r0, 152
	fadd	%r5, %r6, %r5
	store %r5, %r0, 152
	load %r5, %r0, 150
	fmul	%r5, %r3, %r5
	load %r6, %r0, 156
	fadd	%r5, %r6, %r5
	store %r5, %r0, 156
	load %r5, %r0, 154
	fmul	%r3, %r3, %r5
	load %r5, %r0, 160
	fadd	%r3, %r5, %r3
	store %r3, %r0, 160
.LBB104_22:                             # %ifcont.i
                                        #   in Loop: Header=BB104_2 Depth=1
	cmpf %r4,%r7
	load %r3, %fp, 9                # 4-byte Folded Reload
	ble	.LBB104_24
	jump	.LBB104_23
.LBB104_23:                             # %else2.i
                                        #   in Loop: Header=BB104_2 Depth=1
	fmul	%r3, %r4, %r4
	fmul	%r3, %r3, %r3
	load %r4, %fp, 5                # 4-byte Folded Reload
	fmul	%r3, %r4, %r3
	load %r4, %r0, 152
	fadd	%r4, %r3, %r4
	store %r4, %r0, 152
	load %r4, %r0, 156
	fadd	%r4, %r3, %r4
	store %r4, %r0, 156
	load %r4, %r0, 160
	fadd	%r3, %r3, %r4
	store %r3, %r0, 160
.LBB104_24:                             # %ifcont20
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r3, %r0, 139
	store %r3, %r0, 163
	load %r3, %r0, 143
	store %r3, %r0, 167
	load %r3, %r0, 147
	store %r3, %r0, 171
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	li %r3, 139
	bl V6223.V2632.setup_startp_constants
	load %r3, %r0, 435
	addi	%r3, %r3, -1
	load %r4, %fp, 8                # 4-byte Folded Reload
	load %r5, %fp, 5                # 4-byte Folded Reload
	load %r6, %fp, 9                # 4-byte Folded Reload
	bl V6247.V2656.trace_reflections
	load %r3, %fp, 10               # 4-byte Folded Reload
	liw %r4, 1036831949
	cmpf %r3,%r4
	load %r5, %fp, 9                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	load %r6, %fp, 4                # 4-byte Folded Reload
	load %r8, %fp, 6                # 4-byte Folded Reload
	load %r7, %fp, 7                # 4-byte Folded Reload
	ble	.LBB104_29
	jump	.LBB104_25
.LBB104_25:                             # %else22
                                        #   in Loop: Header=BB104_2 Depth=1
	cmpdi %r3,3
	bgt	.LBB104_27
	jump	.LBB104_26
.LBB104_26:                             # %then23
                                        #   in Loop: Header=BB104_2 Depth=1
	li %r4, -1
	load %r9, %fp, 2                # 4-byte Folded Reload
	store %r4, %r9, 4
.LBB104_27:                             # %ifcont25
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r4, %fp, 1                # 4-byte Folded Reload
	cmpdi %r4,2
	bne	.LBB104_29
	jump	.LBB104_28
.LBB104_28:                             # %then26
                                        #   in Loop: Header=BB104_2 Depth=1
	load %r4, %r7, 28
	load %r4, %r4, 0
	liw %r7, 1065353216
	fsub	%r7, %r7, %r4
	load %r4, %fp, 10               # 4-byte Folded Reload
	fmul	%r4, %r4, %r7
	store %r4, %fp, 10              # 4-byte Folded Spill
	addi	%r8, %r8, 4
	addi	%r3, %r3, 1
	cmpdi %r3,5
	blt	.LBB104_2
	jump	.LBB104_29
.LBB104_17:                             # %then12
                                        #   in Loop: Header=BB104_2 Depth=1
	add	%r3, %r3, %r7
	li %r4, 1
	store %r4, %r3, 0
	load %r3, %r6, 16
	add	%r3, %r3, %r7
	load %r4, %r3, 0
	load %r5, %r0, 146
	store %r5, %r4, 0
	load %r5, %r0, 150
	store %r5, %r4, 4
	load %r5, %r0, 154
	store %r5, %r4, 8
	liw %r4, 998244352
	load %r5, %fp, 8                # 4-byte Folded Reload
	fmul	%r4, %r5, %r4
	load %r3, %r3, 0
	load %r5, %r3, 0
	fmul	%r5, %r4, %r5
	store %r5, %r3, 0
	load %r5, %r3, 4
	fmul	%r5, %r4, %r5
	store %r5, %r3, 4
	load %r5, %r3, 8
	fmul	%r4, %r4, %r5
	store %r4, %r3, 8
	load %r3, %r6, 28
	add	%r3, %r3, %r7
	load %r3, %r3, 0
	load %r4, %r0, 143
	store %r4, %r3, 0
	load %r4, %r0, 147
	store %r4, %r3, 4
	load %r4, %r0, 151
	store %r4, %r3, 8
	load %r9, %fp, 9                # 4-byte Folded Reload
	jump	.LBB104_19
.LBB104_4:                              # %then1
	load %r5, %fp, 3                # 4-byte Folded Reload
	srawi	%r3, %r5, 2
	load %r4, %fp, 5                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	li %r4, -1
	store %r4, %r3, 0
	cmpdi %r5,0
	load %r6, %fp, 9                # 4-byte Folded Reload
	beq	.LBB104_29
	jump	.LBB104_5
.LBB104_5:                              # %else4
	load %r3, %r6, 4
	load %r4, %r0, 83
	fmul	%r3, %r3, %r4
	load %r4, %r6, 0
	load %r5, %r0, 79
	fmul	%r4, %r4, %r5
	fadd	%r3, %r4, %r3
	load %r4, %r6, 8
	load %r5, %r0, 87
	fmul	%r4, %r4, %r5
	fadd	%r3, %r3, %r4
	liw %r4, 0
	fsub	%r3, %r4, %r3
	cmpf %r3,%r4
	ble	.LBB104_29
	jump	.LBB104_6
.LBB104_6:                              # %else6
	fmul	%r4, %r3, %r3
	fmul	%r3, %r3, %r4
	load %r4, %fp, 10               # 4-byte Folded Reload
	fmul	%r3, %r4, %r3
	load %r4, %r0, 82
	fmul	%r3, %r3, %r4
	load %r4, %r0, 152
	fadd	%r4, %r4, %r3
	store %r4, %r0, 152
	load %r4, %r0, 156
	fadd	%r4, %r3, %r4
	store %r4, %r0, 156
	load %r4, %r0, 160
	fadd	%r3, %r3, %r4
	store %r3, %r0, 160
	jump	.LBB104_29
.LBB104_29:                             # %ifcont32
	load %lr, %fp, 11               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end104:
	.size	V6248.V2657.trace_ray, .Lfunc_end104-V6248.V2657.trace_ray
                                        # -- End function
	.globl	V6186.V2595.p_set_group_id # -- Begin function V6186.V2595.p_set_group_id
	.p2align	2
	.type	V6186.V2595.p_set_group_id,@function
V6186.V2595.p_set_group_id:             # @V6186.V2595.p_set_group_id
# %bb.0:                                # %entry
	load %r3, %r3, 24
	store %r4, %r3, 0
	blr
.Lfunc_end105:
	.size	V6186.V2595.p_set_group_id, .Lfunc_end105-V6186.V2595.p_set_group_id
                                        # -- End function
	.globl	V6263.V2672.pretrace_diffuse_rays # -- Begin function V6263.V2672.pretrace_diffuse_rays
	.p2align	2
	.type	V6263.V2672.pretrace_diffuse_rays,@function
V6263.V2672.pretrace_diffuse_rays:      # @V6263.V2672.pretrace_diffuse_rays
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	cmpdi %r4,4
	bgt	.LBB106_11
	jump	.LBB106_1
.LBB106_1:                              # %then.lr.ph
	addi	%r5, %r3, 0
	li %r6, 1
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB106_2:                              # %then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB106_5 Depth 2
	srawi	%r7, %r4, 2
	load %r3, %r5, 8
	add	%r3, %r3, %r7
	load %r3, %r3, 0
	cmpdi %r3,0
	blt	.LBB106_11
	jump	.LBB106_3
.LBB106_3:                              # %then1
                                        #   in Loop: Header=BB106_2 Depth=1
	load %r3, %r5, 12
	add	%r3, %r3, %r7
	load %r3, %r3, 0
	and	%r3, %r3, %r6
	cmpdi %r3,0
	beq	.LBB106_10
	jump	.LBB106_4
.LBB106_4:                              # %else
                                        #   in Loop: Header=BB106_2 Depth=1
	store %r4, %fp, 3               # 4-byte Folded Spill
	load %r3, %r5, 24
	load %r4, %r3, 0
	li %r3, 0
	store %r3, %r0, 149
	store %r3, %r0, 153
	store %r3, %r0, 157
	load %r3, %r5, 4
	add	%r3, %r3, %r7
	load %r5, %r5, 28
	store %r7, %fp, 2               # 4-byte Folded Spill
	add	%r5, %r5, %r7
	load %r5, %r5, 0
	store %r5, %fp, 4               # 4-byte Folded Spill
	load %r3, %r3, 0
	srawi	%r4, %r4, 2
	load %r4, %r4, 180
	store %r4, %fp, 6               # 4-byte Folded Spill
	load %r4, %r3, 0
	store %r4, %r0, 163
	load %r4, %r3, 4
	store %r4, %r0, 167
	load %r4, %r3, 8
	store %r4, %r0, 171
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6223.V2632.setup_startp_constants
	li %r9, 118
	load %r3, %fp, 6                # 4-byte Folded Reload
	addi	%r10, %r3, 476
.LBB106_5:                              # %then.i.i
                                        #   Parent Loop BB106_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	load %r3, %r10, -4
	load %r8, %fp, 4                # 4-byte Folded Reload
	load %r4, %r8, 4
	load %r5, %r3, 0
	load %r6, %r5, 4
	fmul	%r4, %r6, %r4
	load %r6, %r8, 0
	load %r7, %r5, 0
	fmul	%r6, %r7, %r6
	fadd	%r4, %r6, %r4
	load %r6, %r8, 8
	load %r5, %r5, 8
	fmul	%r5, %r5, %r6
	fadd	%r4, %r4, %r5
	liw %r5, 0
	cmpf %r4,%r5
	store %r9, %fp, 6               # 4-byte Folded Spill
	store %r10, %fp, 5              # 4-byte Folded Spill
	blt	.LBB106_7
	jump	.LBB106_6
.LBB106_7:                              # %else.i.i
                                        #   in Loop: Header=BB106_5 Depth=2
	liw %r3, -1021968384
	fdiv	%r4, %r4, %r3
	load %r3, %r10, 0
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 5               # 4-byte Folded Reload
	load %r9, %fp, 6                # 4-byte Folded Reload
.LBB106_8:                              # %ifcont.i.i
                                        #   in Loop: Header=BB106_5 Depth=2
	addi	%r10, %r10, -8
	addi	%r9, %r9, -2
	cmpdi %r9,-1
	bgt	.LBB106_5
	jump	.LBB106_9
.LBB106_6:                              # %then2.i.i
                                        #   in Loop: Header=BB106_5 Depth=2
	liw %r5, 1125515264
	fdiv	%r4, %r4, %r5
	bl V6249.V2658.trace_diffuse_ray
	load %r10, %fp, 5               # 4-byte Folded Reload
	load %r9, %fp, 6                # 4-byte Folded Reload
	jump	.LBB106_8
.LBB106_9:                              # %V6251.V2660.trace_diffuse_rays.exit
                                        #   in Loop: Header=BB106_2 Depth=1
	load %r5, %fp, 1                # 4-byte Folded Reload
	load %r3, %r5, 20
	load %r4, %fp, 2                # 4-byte Folded Reload
	add	%r3, %r3, %r4
	load %r3, %r3, 0
	load %r4, %r0, 149
	store %r4, %r3, 0
	load %r4, %r0, 153
	store %r4, %r3, 4
	load %r4, %r0, 157
	store %r4, %r3, 8
	load %r4, %fp, 3                # 4-byte Folded Reload
	li %r6, 1
.LBB106_10:                             # %ifcont
                                        #   in Loop: Header=BB106_2 Depth=1
	addi	%r4, %r4, 1
	cmpdi %r4,5
	blt	.LBB106_2
	jump	.LBB106_11
.LBB106_11:                             # %ifcont11
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end106:
	.size	V6263.V2672.pretrace_diffuse_rays, .Lfunc_end106-V6263.V2672.pretrace_diffuse_rays
                                        # -- End function
	.globl	V6236.V2645.judge_intersection # -- Begin function V6236.V2645.judge_intersection
	.p2align	2
	.type	V6236.V2645.judge_intersection,@function
V6236.V2645.judge_intersection:         # @V6236.V2645.judge_intersection
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	addi	%r5, %r3, 0
	liw %r3, 1315859240
	store %r3, %r0, 138
	load %r4, %r0, 135
	li %r3, 0
	bl V6235.V2644.trace_or_matrix
	liw %r4, 1287568416
	li %r3, 1
	load %r5, %r0, 138
	cmpf %r5,%r4
	li %r4, 1
	blt	.LBB107_2
# %bb.1:                                # %entry
	li %r4, 0
.LBB107_2:                              # %entry
	liw %r6, -1110651699
	cmpf %r5,%r6
	bgt	.LBB107_4
# %bb.3:                                # %entry
	li %r3, 0
.LBB107_4:                              # %entry
	and	%r3, %r3, %r4
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end107:
	.size	V6236.V2645.judge_intersection, .Lfunc_end107-V6236.V2645.judge_intersection
                                        # -- End function
	.globl	V6160.V2569.o_reflectiontype # -- Begin function V6160.V2569.o_reflectiontype
	.p2align	2
	.type	V6160.V2569.o_reflectiontype,@function
V6160.V2569.o_reflectiontype:           # @V6160.V2569.o_reflectiontype
# %bb.0:                                # %entry
	load %r3, %r3, 8
	blr
.Lfunc_end108:
	.size	V6160.V2569.o_reflectiontype, .Lfunc_end108-V6160.V2569.o_reflectiontype
                                        # -- End function
	.globl	V6156.V2565.vecscale    # -- Begin function V6156.V2565.vecscale
	.p2align	2
	.type	V6156.V2565.vecscale,@function
V6156.V2565.vecscale:                   # @V6156.V2565.vecscale
# %bb.0:                                # %entry
	load %r5, %r3, 0
	fmul	%r5, %r5, %r4
	store %r5, %r3, 0
	load %r5, %r3, 4
	fmul	%r5, %r5, %r4
	store %r5, %r3, 4
	load %r5, %r3, 8
	fmul	%r4, %r5, %r4
	store %r4, %r3, 8
	blr
.Lfunc_end109:
	.size	V6156.V2565.vecscale, .Lfunc_end109-V6156.V2565.vecscale
                                        # -- End function
	.globl	V6171.V2580.o_hilight   # -- Begin function V6171.V2580.o_hilight
	.p2align	2
	.type	V6171.V2580.o_hilight,@function
V6171.V2580.o_hilight:                  # @V6171.V2580.o_hilight
# %bb.0:                                # %entry
	load %r3, %r3, 28
	load %r3, %r3, 4
	blr
.Lfunc_end110:
	.size	V6171.V2580.o_hilight, .Lfunc_end110-V6171.V2580.o_hilight
                                        # -- End function
	.globl	V6246.V2655.add_light   # -- Begin function V6246.V2655.add_light
	.p2align	2
	.type	V6246.V2655.add_light,@function
V6246.V2655.add_light:                  # @V6246.V2655.add_light
# %bb.0:                                # %entry
	liw %r6, 0
	cmpf %r3,%r6
	ble	.LBB111_2
	jump	.LBB111_1
.LBB111_1:                              # %else
	load %r7, %r0, 146
	fmul	%r7, %r7, %r3
	load %r8, %r0, 152
	fadd	%r7, %r8, %r7
	store %r7, %r0, 152
	load %r7, %r0, 150
	fmul	%r7, %r7, %r3
	load %r8, %r0, 156
	fadd	%r7, %r8, %r7
	store %r7, %r0, 156
	load %r7, %r0, 154
	fmul	%r3, %r7, %r3
	load %r7, %r0, 160
	fadd	%r3, %r7, %r3
	store %r3, %r0, 160
.LBB111_2:                              # %ifcont
	cmpf %r4,%r6
	ble	.LBB111_4
	jump	.LBB111_3
.LBB111_3:                              # %else2
	fmul	%r3, %r4, %r4
	fmul	%r3, %r3, %r3
	fmul	%r3, %r3, %r5
	load %r4, %r0, 152
	fadd	%r4, %r3, %r4
	store %r4, %r0, 152
	load %r4, %r0, 156
	fadd	%r4, %r3, %r4
	store %r4, %r0, 156
	load %r4, %r0, 160
	fadd	%r3, %r3, %r4
	store %r3, %r0, 160
.LBB111_4:                              # %ifcont3
	blr
.Lfunc_end111:
	.size	V6246.V2655.add_light, .Lfunc_end111-V6246.V2655.add_light
                                        # -- End function
	.globl	V6247.V2656.trace_reflections # -- Begin function V6247.V2656.trace_reflections
	.p2align	2
	.type	V6247.V2656.trace_reflections,@function
V6247.V2656.trace_reflections:          # @V6247.V2656.trace_reflections
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 9
	store %fp, %sp, 0
	store %lr, %fp, 8               # 4-byte Folded Spill
	store %r6, %fp, 3               # 4-byte Folded Spill
	store %r5, %fp, 1               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB112_11
	jump	.LBB112_1
.LBB112_1:                              # %then.lr.ph
	addi	%r4, %r3, 1
	srawi	%r3, %r3, 2
	addi	%r3, %r3, 255
.LBB112_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 7               # 4-byte Folded Spill
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r3, %r3, 0
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r5, %r3, 4
	liw %r3, 1315859240
	store %r3, %r0, 138
	load %r4, %r0, 135
	li %r3, 0
	store %r5, %fp, 4               # 4-byte Folded Spill
	bl V6239.V2648.trace_or_matrix_fast
	load %r3, %r0, 138
	liw %r4, -1110651699
	cmpf %r3,%r4
	ble	.LBB112_10
	jump	.LBB112_3
.LBB112_3:                              # %then
                                        #   in Loop: Header=BB112_2 Depth=1
	liw %r4, 1287568416
	cmpf %r3,%r4
	bge	.LBB112_10
	jump	.LBB112_4
.LBB112_4:                              # %else
                                        #   in Loop: Header=BB112_2 Depth=1
	load %r3, %r0, 142
	srawi	%r3, %r3, 2
	load %r4, %r0, 137
	add	%r3, %r3, %r4
	load %r4, %fp, 5                # 4-byte Folded Reload
	load %r4, %r4, 0
	cmpd %r3,%r4
	bne	.LBB112_10
	jump	.LBB112_5
.LBB112_5:                              # %then3
                                        #   in Loop: Header=BB112_2 Depth=1
	load %r4, %r0, 135
	li %r3, 0
	bl V6232.V2641.shadow_check_one_or_matrix
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB112_10
	jump	.LBB112_6
.LBB112_6:                              # %else5
                                        #   in Loop: Header=BB112_2 Depth=1
	load %r3, %fp, 4                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r3, 4
	load %r5, %r0, 147
	fmul	%r5, %r5, %r4
	load %r6, %r3, 0
	load %r7, %r0, 143
	fmul	%r7, %r7, %r6
	fadd	%r5, %r7, %r5
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r7, %r8, 4
	fmul	%r4, %r4, %r7
	load %r7, %r8, 0
	fmul	%r6, %r6, %r7
	load %r3, %r3, 8
	load %r7, %r0, 151
	fmul	%r7, %r7, %r3
	fadd	%r5, %r5, %r7
	fadd	%r4, %r6, %r4
	load %r6, %r8, 8
	fmul	%r3, %r3, %r6
	fadd	%r3, %r4, %r3
	load %r4, %fp, 5                # 4-byte Folded Reload
	load %r4, %r4, 8
	fmul	%r3, %r4, %r3
	load %r6, %fp, 2                # 4-byte Folded Reload
	fmul	%r4, %r4, %r6
	fmul	%r4, %r4, %r5
	liw %r7, 0
	cmpf %r4,%r7
	ble	.LBB112_8
	jump	.LBB112_7
.LBB112_7:                              # %else.i
                                        #   in Loop: Header=BB112_2 Depth=1
	load %r5, %r0, 146
	fmul	%r5, %r4, %r5
	load %r6, %r0, 152
	fadd	%r5, %r6, %r5
	store %r5, %r0, 152
	load %r5, %r0, 150
	fmul	%r5, %r4, %r5
	load %r6, %r0, 156
	fadd	%r5, %r6, %r5
	store %r5, %r0, 156
	load %r5, %r0, 154
	fmul	%r4, %r4, %r5
	load %r5, %r0, 160
	fadd	%r4, %r5, %r4
	store %r4, %r0, 160
.LBB112_8:                              # %ifcont.i
                                        #   in Loop: Header=BB112_2 Depth=1
	cmpf %r3,%r7
	ble	.LBB112_10
	jump	.LBB112_9
.LBB112_9:                              # %else2.i
                                        #   in Loop: Header=BB112_2 Depth=1
	fmul	%r3, %r3, %r3
	fmul	%r3, %r3, %r3
	load %r4, %fp, 1                # 4-byte Folded Reload
	fmul	%r3, %r3, %r4
	load %r4, %r0, 152
	fadd	%r4, %r3, %r4
	store %r4, %r0, 152
	load %r4, %r0, 156
	fadd	%r4, %r3, %r4
	store %r4, %r0, 156
	load %r4, %r0, 160
	fadd	%r3, %r3, %r4
	store %r3, %r0, 160
.LBB112_10:                             # %ifcont8
                                        #   in Loop: Header=BB112_2 Depth=1
	load %r3, %fp, 6                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	load %r4, %fp, 7                # 4-byte Folded Reload
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB112_2
	jump	.LBB112_11
.LBB112_11:                             # %ifcont10
	load %lr, %fp, 8                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end112:
	.size	V6247.V2656.trace_reflections, .Lfunc_end112-V6247.V2656.trace_reflections
                                        # -- End function
	.globl	V6191.V2600.r_dvec      # -- Begin function V6191.V2600.r_dvec
	.p2align	2
	.type	V6191.V2600.r_dvec,@function
V6191.V2600.r_dvec:                     # @V6191.V2600.r_dvec
# %bb.0:                                # %entry
	load %r3, %r3, 4
	blr
.Lfunc_end113:
	.size	V6191.V2600.r_dvec, .Lfunc_end113-V6191.V2600.r_dvec
                                        # -- End function
	.globl	V6190.V2599.r_surface_id # -- Begin function V6190.V2599.r_surface_id
	.p2align	2
	.type	V6190.V2599.r_surface_id,@function
V6190.V2599.r_surface_id:               # @V6190.V2599.r_surface_id
# %bb.0:                                # %entry
	load %r3, %r3, 0
	blr
.Lfunc_end114:
	.size	V6190.V2599.r_surface_id, .Lfunc_end114-V6190.V2599.r_surface_id
                                        # -- End function
	.globl	V6192.V2601.r_bright    # -- Begin function V6192.V2601.r_bright
	.p2align	2
	.type	V6192.V2601.r_bright,@function
V6192.V2601.r_bright:                   # @V6192.V2601.r_bright
# %bb.0:                                # %entry
	load %r3, %r3, 8
	blr
.Lfunc_end115:
	.size	V6192.V2601.r_bright, .Lfunc_end115-V6192.V2601.r_bright
                                        # -- End function
	.globl	V6235.V2644.trace_or_matrix # -- Begin function V6235.V2644.trace_or_matrix
	.p2align	2
	.type	V6235.V2644.trace_or_matrix,@function
V6235.V2644.trace_or_matrix:            # @V6235.V2644.trace_or_matrix
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	addi	%r6, %r3, 0
	store %r5, %fp, 4               # 4-byte Folded Spill
.LBB116_1:                              # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB116_10 Depth 2
                                        #     Child Loop BB116_5 Depth 2
	srawi	%r3, %r6, 2
	load %r4, %fp, 1                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	load %r7, %r3, 0
	load %r3, %r7, 0
	cmpdi %r3,99
	store %r6, %fp, 2               # 4-byte Folded Spill
	beq	.LBB116_3
	jump	.LBB116_2
.LBB116_2:                              # %tailrecurse
                                        #   in Loop: Header=BB116_1 Depth=1
	cmpdi %r3,-1
	beq	.LBB116_12
	jump	.LBB116_6
.LBB116_6:                              # %else4
                                        #   in Loop: Header=BB116_1 Depth=1
	addi	%r4, %r5, 0
	li %r5, 160
	store %r7, %fp, 3               # 4-byte Folded Spill
	bl V6210.V2619.solver
	load %r6, %fp, 3                # 4-byte Folded Reload
	load %r5, %fp, 4                # 4-byte Folded Reload
	cmpdi %r3,0
	beq	.LBB116_11
	jump	.LBB116_7
.LBB116_7:                              # %else8
                                        #   in Loop: Header=BB116_1 Depth=1
	load %r3, %r0, 138
	load %r4, %r0, 136
	cmpf %r4,%r3
	bge	.LBB116_11
	jump	.LBB116_8
.LBB116_8:                              # %else10
                                        #   in Loop: Header=BB116_1 Depth=1
	load %r3, %r6, 4
	cmpdi %r3,-1
	beq	.LBB116_11
	jump	.LBB116_9
.LBB116_9:                              # %else3.i14.preheader
                                        #   in Loop: Header=BB116_1 Depth=1
	addi	%r4, %r6, 8
.LBB116_10:                             # %else3.i14
                                        #   Parent Loop BB116_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 4                # 4-byte Folded Reload
	bl V6233.V2642.solve_each_element
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	bne	.LBB116_10
	jump	.LBB116_11
.LBB116_3:                              # %then3
                                        #   in Loop: Header=BB116_1 Depth=1
	load %r3, %r7, 4
	cmpdi %r3,-1
	beq	.LBB116_11
	jump	.LBB116_4
.LBB116_4:                              # %else3.i.preheader
                                        #   in Loop: Header=BB116_1 Depth=1
	addi	%r4, %r7, 8
.LBB116_5:                              # %else3.i
                                        #   Parent Loop BB116_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 4                # 4-byte Folded Reload
	bl V6233.V2642.solve_each_element
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB116_11
	jump	.LBB116_5
.LBB116_11:                             # %ifcont13
                                        #   in Loop: Header=BB116_1 Depth=1
	load %r6, %fp, 2                # 4-byte Folded Reload
	addi	%r6, %r6, 1
	jump	.LBB116_1
.LBB116_12:                             # %ifcont14
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end116:
	.size	V6235.V2644.trace_or_matrix, .Lfunc_end116-V6235.V2644.trace_or_matrix
                                        # -- End function
	.globl	V6234.V2643.solve_one_or_network # -- Begin function V6234.V2643.solve_one_or_network
	.p2align	2
	.type	V6234.V2643.solve_one_or_network,@function
V6234.V2643.solve_one_or_network:       # @V6234.V2643.solve_one_or_network
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	add	%r4, %r4, %r3
	load %r3, %r4, 0
	cmpdi %r3,-1
	beq	.LBB117_3
	jump	.LBB117_1
.LBB117_1:                              # %else3.preheader
	addi	%r4, %r4, 4
	store %r5, %fp, 2               # 4-byte Folded Spill
.LBB117_2:                              # %else3
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %r3, 84
	li %r3, 0
	load %r5, %fp, 2                # 4-byte Folded Reload
	bl V6233.V2642.solve_each_element
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r3, %fp, 1                # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	bne	.LBB117_2
	jump	.LBB117_3
.LBB117_3:                              # %ifcont5
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end117:
	.size	V6234.V2643.solve_one_or_network, .Lfunc_end117-V6234.V2643.solve_one_or_network
                                        # -- End function
	.globl	V6210.V2619.solver      # -- Begin function V6210.V2619.solver
	.p2align	2
	.type	V6210.V2619.solver,@function
V6210.V2619.solver:                     # @V6210.V2619.solver
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r6, %r5, 8
	load %r8, %r3, 20
	load %r7, %r8, 8
	fsub	%r7, %r6, %r7
	load %r6, %r5, 4
	load %r9, %r8, 4
	fsub	%r6, %r6, %r9
	load %r5, %r5, 0
	load %r8, %r8, 0
	fsub	%r5, %r5, %r8
	load %r8, %r3, 4
	cmpdi %r8,2
	beq	.LBB118_3
	jump	.LBB118_1
.LBB118_1:                              # %entry
	cmpdi %r8,1
	bne	.LBB118_5
	jump	.LBB118_2
.LBB118_2:                              # %then
	bl V6205.V2614.solver_rect
	jump	.LBB118_6
.LBB118_3:                              # %then5
	load %r3, %r3, 16
	load %r9, %r4, 4
	load %r8, %r3, 4
	fmul	%r10, %r9, %r8
	load %r11, %r4, 0
	load %r9, %r3, 0
	fmul	%r11, %r11, %r9
	fadd	%r11, %r11, %r10
	load %r4, %r4, 8
	load %r10, %r3, 8
	fmul	%r3, %r4, %r10
	fadd	%r4, %r11, %r3
	li %r3, 0
	liw %r11, 0
	cmpf %r4,%r11
	ble	.LBB118_6
	jump	.LBB118_4
.LBB118_4:                              # %else.i
	fmul	%r3, %r6, %r8
	fmul	%r5, %r5, %r9
	fadd	%r3, %r5, %r3
	fmul	%r5, %r7, %r10
	fadd	%r3, %r3, %r5
	fsub	%r3, %r11, %r3
	fdiv	%r3, %r3, %r4
	store %r3, %r0, 136
	li %r3, 1
	jump	.LBB118_6
.LBB118_5:                              # %else6
	bl V6209.V2618.solver_second
.LBB118_6:                              # %ifcont7
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end118:
	.size	V6210.V2619.solver, .Lfunc_end118-V6210.V2619.solver
                                        # -- End function
	.globl	V6205.V2614.solver_rect # -- Begin function V6205.V2614.solver_rect
	.p2align	2
	.type	V6205.V2614.solver_rect,@function
V6205.V2614.solver_rect:                # @V6205.V2614.solver_rect
# %bb.0:                                # %entry
	load %r8, %r4, 0
	liw %r12, 0
	cmpf %r8,%r12
	bne	.LBB119_2
	jump	.LBB119_1
.LBB119_1:                              # %entry.then_crit_edge
	load %r9, %r4, 4
	jump	.LBB119_13
.LBB119_2:                              # %then.i
	li %r9, 1
	cmpf %r8,%r12
	li %r10, 1
	blt	.LBB119_4
# %bb.3:                                # %then.i
	li %r10, 0
.LBB119_4:                              # %then.i
	load %r11, %r3, 24
	and	%r9, %r11, %r9
	xor	%r11, %r10, %r9
	load %r10, %r3, 16
	load %r9, %r10, 0
	cmpdi %r11,0
	bne	.LBB119_6
# %bb.5:                                # %then.i
	fsub	%r9, %r12, %r9
.LBB119_6:                              # %then.i
	fsub	%r9, %r9, %r5
	fdiv	%r11, %r9, %r8
	load %r9, %r4, 4
	fmul	%r13, %r9, %r11
	fadd	%r13, %r13, %r6
	cmpf %r13,%r12
	bgt	.LBB119_8
# %bb.7:                                # %then.i
	fsub	%r13, %r0, %r13
.LBB119_8:                              # %then.i
	load %r12, %r10, 4
	cmpf %r13,%r12
	bge	.LBB119_13
	jump	.LBB119_9
.LBB119_9:                              # %else.i
	load %r12, %r4, 8
	fmul	%r12, %r11, %r12
	fadd	%r12, %r12, %r7
	liw %r13, 0
	cmpf %r12,%r13
	bgt	.LBB119_11
# %bb.10:                               # %else.i
	fsub	%r12, %r0, %r12
.LBB119_11:                             # %else.i
	load %r10, %r10, 8
	cmpf %r12,%r10
	bge	.LBB119_13
	jump	.LBB119_12
.LBB119_12:                             # %V6204.V2613.solver_rect_surface.exit
	store %r11, %r0, 136
	li %r4, 1
	jump	.LBB119_38
.LBB119_13:                             # %then
	liw %r13, 0
	cmpf %r9,%r13
	bne	.LBB119_15
	jump	.LBB119_14
.LBB119_14:                             # %then.then1_crit_edge
	load %r10, %r4, 8
	jump	.LBB119_26
.LBB119_15:                             # %then.i66
	li %r10, 1
	cmpf %r9,%r13
	li %r11, 1
	blt	.LBB119_17
# %bb.16:                               # %then.i66
	li %r11, 0
.LBB119_17:                             # %then.i66
	load %r12, %r3, 24
	and	%r10, %r12, %r10
	xor	%r12, %r11, %r10
	load %r11, %r3, 16
	load %r10, %r11, 4
	cmpdi %r12,0
	bne	.LBB119_19
# %bb.18:                               # %then.i66
	fsub	%r10, %r13, %r10
.LBB119_19:                             # %then.i66
	fsub	%r10, %r10, %r6
	fdiv	%r12, %r10, %r9
	load %r10, %r4, 8
	fmul	%r4, %r10, %r12
	fadd	%r4, %r4, %r7
	cmpf %r4,%r13
	bgt	.LBB119_21
# %bb.20:                               # %then.i66
	fsub	%r4, %r0, %r4
.LBB119_21:                             # %then.i66
	load %r13, %r11, 8
	cmpf %r4,%r13
	bge	.LBB119_26
	jump	.LBB119_22
.LBB119_22:                             # %else.i75
	fmul	%r4, %r12, %r8
	fadd	%r4, %r4, %r5
	liw %r13, 0
	cmpf %r4,%r13
	bgt	.LBB119_24
# %bb.23:                               # %else.i75
	fsub	%r4, %r0, %r4
.LBB119_24:                             # %else.i75
	load %r11, %r11, 0
	cmpf %r4,%r11
	bge	.LBB119_26
	jump	.LBB119_25
.LBB119_25:                             # %V6204.V2613.solver_rect_surface.exit78
	store %r12, %r0, 136
	li %r4, 2
	jump	.LBB119_38
.LBB119_26:                             # %then1
	li %r4, 0
	liw %r11, 0
	cmpf %r10,%r11
	beq	.LBB119_38
	jump	.LBB119_27
.LBB119_27:                             # %then.i24
	load %r4, %r3, 24
	li %r13, 1
	and	%r12, %r4, %r13
	li %r4, 0
	cmpf %r10,%r11
	blt	.LBB119_29
# %bb.28:                               # %then.i24
	li %r13, 0
.LBB119_29:                             # %then.i24
	xor	%r13, %r13, %r12
	load %r3, %r3, 16
	load %r12, %r3, 8
	cmpdi %r13,0
	bne	.LBB119_31
# %bb.30:                               # %then.i24
	fsub	%r12, %r11, %r12
.LBB119_31:                             # %then.i24
	fsub	%r7, %r12, %r7
	fdiv	%r7, %r7, %r10
	fmul	%r8, %r8, %r7
	fadd	%r5, %r8, %r5
	cmpf %r5,%r11
	bgt	.LBB119_33
# %bb.32:                               # %then.i24
	fsub	%r5, %r0, %r5
.LBB119_33:                             # %then.i24
	load %r8, %r3, 0
	cmpf %r5,%r8
	bge	.LBB119_38
	jump	.LBB119_34
.LBB119_34:                             # %else.i35
	fmul	%r5, %r7, %r9
	fadd	%r5, %r5, %r6
	liw %r6, 0
	cmpf %r5,%r6
	bgt	.LBB119_36
# %bb.35:                               # %else.i35
	fsub	%r5, %r0, %r5
.LBB119_36:                             # %else.i35
	load %r3, %r3, 4
	cmpf %r5,%r3
	bge	.LBB119_38
	jump	.LBB119_37
.LBB119_37:
	store %r7, %r0, 136
	li %r4, 3
.LBB119_38:                             # %ifcont6
	addi	%r3, %r4, 0
	blr
.Lfunc_end119:
	.size	V6205.V2614.solver_rect, .Lfunc_end119-V6205.V2614.solver_rect
                                        # -- End function
	.globl	V6206.V2615.solver_surface # -- Begin function V6206.V2615.solver_surface
	.p2align	2
	.type	V6206.V2615.solver_surface,@function
V6206.V2615.solver_surface:             # @V6206.V2615.solver_surface
# %bb.0:                                # %entry
	load %r3, %r3, 16
	load %r9, %r4, 4
	load %r8, %r3, 4
	fmul	%r10, %r9, %r8
	load %r11, %r4, 0
	load %r9, %r3, 0
	fmul	%r11, %r11, %r9
	fadd	%r11, %r11, %r10
	load %r4, %r4, 8
	load %r10, %r3, 8
	fmul	%r3, %r4, %r10
	fadd	%r4, %r11, %r3
	li %r3, 0
	liw %r11, 0
	cmpf %r4,%r11
	ble	.LBB120_2
	jump	.LBB120_1
.LBB120_1:                              # %else
	fmul	%r3, %r8, %r6
	fmul	%r5, %r9, %r5
	fadd	%r3, %r5, %r3
	fmul	%r5, %r10, %r7
	fadd	%r3, %r3, %r5
	fsub	%r3, %r11, %r3
	fdiv	%r3, %r3, %r4
	store %r3, %r0, 136
	li %r3, 1
.LBB120_2:                              # %ifcont
	blr
.Lfunc_end120:
	.size	V6206.V2615.solver_surface, .Lfunc_end120-V6206.V2615.solver_surface
                                        # -- End function
	.globl	V6209.V2618.solver_second # -- Begin function V6209.V2618.solver_second
	.p2align	2
	.type	V6209.V2618.solver_second,@function
V6209.V2618.solver_second:              # @V6209.V2618.solver_second
# %bb.0:                                # %entry
	load %r8, %r3, 16
	load %r10, %r8, 4
	load %r14, %r4, 4
	fmul	%r9, %r14, %r14
	fmul	%r9, %r9, %r10
	load %r11, %r8, 0
	load %r15, %r4, 0
	fmul	%r12, %r15, %r15
	fmul	%r12, %r12, %r11
	fadd	%r9, %r12, %r9
	load %r12, %r8, 8
	load %r16, %r4, 8
	fmul	%r4, %r16, %r16
	fmul	%r4, %r4, %r12
	fadd	%r8, %r9, %r4
	load %r13, %r3, 12
	cmpdi %r13,0
	beq	.LBB121_2
	jump	.LBB121_1
.LBB121_1:                              # %else.i
	load %r4, %r3, 36
	fmul	%r9, %r15, %r16
	load %r17, %r4, 4
	fmul	%r9, %r9, %r17
	fmul	%r17, %r14, %r16
	load %r18, %r4, 0
	fmul	%r17, %r17, %r18
	fadd	%r8, %r8, %r17
	fadd	%r8, %r8, %r9
	fmul	%r9, %r15, %r14
	load %r4, %r4, 8
	fmul	%r4, %r9, %r4
	fadd	%r8, %r8, %r4
.LBB121_2:                              # %V6207.V2616.quadratic.exit
	li %r4, 0
	liw %r9, 0
	cmpf %r8,%r9
	beq	.LBB121_13
	jump	.LBB121_3
.LBB121_3:                              # %then
	fmul	%r9, %r14, %r6
	fmul	%r9, %r9, %r10
	fmul	%r17, %r15, %r5
	fmul	%r17, %r17, %r11
	fadd	%r9, %r17, %r9
	fmul	%r17, %r16, %r7
	fmul	%r17, %r17, %r12
	fadd	%r9, %r9, %r17
	cmpdi %r13,0
	beq	.LBB121_5
	jump	.LBB121_4
.LBB121_4:                              # %else.i55
	fmul	%r17, %r16, %r5
	fmul	%r18, %r15, %r7
	fadd	%r17, %r18, %r17
	load %r18, %r3, 36
	load %r19, %r18, 4
	fmul	%r17, %r17, %r19
	fmul	%r16, %r16, %r6
	fmul	%r19, %r14, %r7
	fadd	%r16, %r19, %r16
	load %r19, %r18, 0
	fmul	%r16, %r16, %r19
	fadd	%r16, %r16, %r17
	fmul	%r14, %r14, %r5
	fmul	%r15, %r15, %r6
	fadd	%r14, %r15, %r14
	load %r15, %r18, 8
	fmul	%r14, %r14, %r15
	fadd	%r14, %r16, %r14
	liw %r15, 1056964608
	fmul	%r14, %r14, %r15
	fadd	%r9, %r9, %r14
.LBB121_5:                              # %V6208.V2617.bilinear.exit
	fmul	%r14, %r6, %r6
	fmul	%r10, %r14, %r10
	fmul	%r14, %r5, %r5
	fmul	%r11, %r14, %r11
	fadd	%r10, %r11, %r10
	fmul	%r11, %r7, %r7
	fmul	%r11, %r11, %r12
	fadd	%r10, %r10, %r11
	cmpdi %r13,0
	beq	.LBB121_7
	jump	.LBB121_6
.LBB121_6:                              # %else.i36
	load %r11, %r3, 36
	fmul	%r12, %r5, %r7
	load %r13, %r11, 4
	fmul	%r12, %r12, %r13
	fmul	%r7, %r6, %r7
	load %r13, %r11, 0
	fmul	%r7, %r7, %r13
	fadd	%r7, %r10, %r7
	fadd	%r7, %r7, %r12
	fmul	%r5, %r5, %r6
	load %r6, %r11, 8
	fmul	%r5, %r5, %r6
	fadd	%r10, %r7, %r5
.LBB121_7:                              # %V6207.V2616.quadratic.exit38
	liw %r5, -1082130432
	fadd	%r5, %r10, %r5
	load %r6, %r3, 4
	cmpdi %r6,3
	beq	.LBB121_9
# %bb.8:                                # %V6207.V2616.quadratic.exit38
	addi	%r5, %r10, 0
.LBB121_9:                              # %V6207.V2616.quadratic.exit38
	fmul	%r5, %r8, %r5
	fmul	%r6, %r9, %r9
	fsub	%r6, %r6, %r5
	liw %r5, 0
	cmpf %r6,%r5
	ble	.LBB121_13
	jump	.LBB121_10
.LBB121_10:                             # %else9
	load %r3, %r3, 24
	li %r4, 1
	and	%r7, %r3, %r4
	fsqrt	%r3, %r6
	cmpdi %r7,0
	bne	.LBB121_12
# %bb.11:                               # %else9
	fsub	%r3, %r5, %r3
.LBB121_12:                             # %else9
	fsub	%r3, %r3, %r9
	fdiv	%r3, %r3, %r8
	store %r3, %r0, 136
.LBB121_13:                             # %ifcont15
	addi	%r3, %r4, 0
	blr
.Lfunc_end121:
	.size	V6209.V2618.solver_second, .Lfunc_end121-V6209.V2618.solver_second
                                        # -- End function
	.globl	V6208.V2617.bilinear    # -- Begin function V6208.V2617.bilinear
	.p2align	2
	.type	V6208.V2617.bilinear,@function
V6208.V2617.bilinear:                   # @V6208.V2617.bilinear
# %bb.0:                                # %entry
	addi	%r10, %r3, 0
	fmul	%r3, %r5, %r8
	load %r11, %r10, 16
	load %r12, %r11, 4
	fmul	%r3, %r3, %r12
	fmul	%r12, %r4, %r7
	load %r13, %r11, 0
	fmul	%r12, %r12, %r13
	fadd	%r3, %r12, %r3
	fmul	%r12, %r6, %r9
	load %r11, %r11, 8
	fmul	%r11, %r12, %r11
	fadd	%r3, %r3, %r11
	load %r11, %r10, 12
	cmpdi %r11,0
	beq	.LBB122_2
	jump	.LBB122_1
.LBB122_1:                              # %else
	fmul	%r11, %r4, %r9
	fmul	%r12, %r6, %r7
	fadd	%r11, %r12, %r11
	load %r10, %r10, 36
	load %r12, %r10, 4
	fmul	%r11, %r11, %r12
	fmul	%r9, %r5, %r9
	fmul	%r6, %r6, %r8
	fadd	%r6, %r6, %r9
	load %r9, %r10, 0
	fmul	%r6, %r6, %r9
	fadd	%r6, %r6, %r11
	fmul	%r4, %r4, %r8
	fmul	%r5, %r5, %r7
	fadd	%r4, %r5, %r4
	load %r5, %r10, 8
	fmul	%r4, %r4, %r5
	fadd	%r4, %r6, %r4
	liw %r5, 1056964608
	fmul	%r4, %r4, %r5
	fadd	%r3, %r3, %r4
.LBB122_2:                              # %ifcont
	blr
.Lfunc_end122:
	.size	V6208.V2617.bilinear, .Lfunc_end122-V6208.V2617.bilinear
                                        # -- End function
	.globl	V6204.V2613.solver_rect_surface # -- Begin function V6204.V2613.solver_rect_surface
	.p2align	2
	.type	V6204.V2613.solver_rect_surface,@function
V6204.V2613.solver_rect_surface:        # @V6204.V2613.solver_rect_surface
# %bb.0:                                # %entry
	addi	%r11, %r3, 0
	srawi	%r14, %r8, 2
	add	%r8, %r4, %r14
	li %r3, 0
	load %r13, %r8, 0
	liw %r12, 0
	cmpf %r13,%r12
	beq	.LBB123_12
	jump	.LBB123_1
.LBB123_1:                              # %then
	load %r3, %r11, 24
	li %r15, 1
	and	%r8, %r3, %r15
	li %r3, 0
	cmpf %r13,%r12
	blt	.LBB123_3
# %bb.2:                                # %then
	li %r15, 0
.LBB123_3:                              # %then
	xor	%r15, %r15, %r8
	load %r8, %r11, 16
	add	%r11, %r8, %r14
	load %r11, %r11, 0
	cmpdi %r15,0
	bne	.LBB123_5
# %bb.4:                                # %then
	fsub	%r11, %r12, %r11
.LBB123_5:                              # %then
	fsub	%r5, %r11, %r5
	fdiv	%r5, %r5, %r13
	srawi	%r9, %r9, 2
	add	%r11, %r4, %r9
	load %r11, %r11, 0
	fmul	%r11, %r11, %r5
	fadd	%r6, %r11, %r6
	cmpf %r6,%r12
	bgt	.LBB123_7
# %bb.6:                                # %then
	fsub	%r6, %r0, %r6
.LBB123_7:                              # %then
	add	%r9, %r8, %r9
	load %r9, %r9, 0
	cmpf %r6,%r9
	bge	.LBB123_12
	jump	.LBB123_8
.LBB123_8:                              # %else
	srawi	%r6, %r10, 2
	add	%r4, %r4, %r6
	load %r4, %r4, 0
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r7
	liw %r7, 0
	cmpf %r4,%r7
	bgt	.LBB123_10
# %bb.9:                                # %else
	fsub	%r4, %r0, %r4
.LBB123_10:                             # %else
	add	%r6, %r8, %r6
	load %r6, %r6, 0
	cmpf %r4,%r6
	bge	.LBB123_12
	jump	.LBB123_11
.LBB123_11:                             # %else11
	store %r5, %r0, 136
	li %r3, 1
.LBB123_12:                             # %ifcont14
	blr
.Lfunc_end123:
	.size	V6204.V2613.solver_rect_surface, .Lfunc_end123-V6204.V2613.solver_rect_surface
                                        # -- End function
	.globl	V6142.V2551.fneg_cond   # -- Begin function V6142.V2551.fneg_cond
	.p2align	2
	.type	V6142.V2551.fneg_cond,@function
V6142.V2551.fneg_cond:                  # @V6142.V2551.fneg_cond
# %bb.0:                                # %entry
	li %r5, 1
	and	%r3, %r3, %r5
	cmpdi %r3,0
	bne	.LBB124_2
# %bb.1:                                # %entry
	liw %r3, 0
	fsub	%r4, %r3, %r4
.LBB124_2:                              # %entry
	addi	%r3, %r4, 0
	blr
.Lfunc_end124:
	.size	V6142.V2551.fneg_cond, .Lfunc_end124-V6142.V2551.fneg_cond
                                        # -- End function
	.globl	V6233.V2642.solve_each_element # -- Begin function V6233.V2642.solve_each_element
	.p2align	2
	.type	V6233.V2642.solve_each_element,@function
V6233.V2642.solve_each_element:         # @V6233.V2642.solve_each_element
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 13
	store %fp, %sp, 0
	store %lr, %fp, 12              # 4-byte Folded Spill
	store %r5, %fp, 4               # 4-byte Folded Spill
	store %r3, %fp, 9               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	store %r4, %fp, 5               # 4-byte Folded Spill
	add	%r3, %r4, %r3
	load %r4, %r3, 0
	cmpdi %r4,-1
	beq	.LBB125_12
	jump	.LBB125_1
.LBB125_1:                              # %else.lr.ph
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r3, 4
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB125_2:                              # %else
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB125_10 Depth 2
	store %r4, %fp, 11              # 4-byte Folded Spill
	addi	%r3, %r4, 0
	load %r4, %fp, 4                # 4-byte Folded Reload
	li %r5, 160
	bl V6210.V2619.solver
	cmpdi %r3,0
	bne	.LBB125_5
	jump	.LBB125_3
.LBB125_5:                              # %else9
                                        #   in Loop: Header=BB125_2 Depth=1
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 136
	liw %r4, 0
	cmpf %r3,%r4
	load %r6, %fp, 11               # 4-byte Folded Reload
	ble	.LBB125_4
	jump	.LBB125_6
.LBB125_6:                              # %else11
                                        #   in Loop: Header=BB125_2 Depth=1
	load %r4, %r0, 138
	cmpf %r3,%r4
	bge	.LBB125_4
	jump	.LBB125_7
.LBB125_7:                              # %else13
                                        #   in Loop: Header=BB125_2 Depth=1
	liw %r4, 1008981770
	fadd	%r7, %r3, %r4
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %r5, 8
	fmul	%r3, %r7, %r3
	load %r4, %r0, 168
	fadd	%r3, %r3, %r4
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %r5, 4
	fmul	%r3, %r7, %r3
	load %r4, %r0, 164
	fadd	%r3, %r3, %r4
	store %r3, %fp, 7               # 4-byte Folded Spill
	load %r3, %r5, 0
	store %r7, %fp, 2               # 4-byte Folded Spill
	fmul	%r3, %r7, %r3
	load %r4, %r0, 160
	fadd	%r3, %r3, %r4
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB125_11
	jump	.LBB125_8
.LBB125_8:                              # %else.i.preheader
                                        #   in Loop: Header=BB125_2 Depth=1
	load %r4, %fp, 1                # 4-byte Folded Reload
	jump	.LBB125_10
.LBB125_10:                             # %else.i
                                        #   Parent Loop BB125_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r4, %fp, 10              # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r4, %fp, 6                # 4-byte Folded Reload
	load %r5, %fp, 7                # 4-byte Folded Reload
	load %r6, %fp, 8                # 4-byte Folded Reload
	bl V6228.V2637.is_outside
	load %r6, %fp, 11               # 4-byte Folded Reload
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB125_4
	jump	.LBB125_9
.LBB125_9:                              # %tailrecurse.i
                                        #   in Loop: Header=BB125_10 Depth=2
	load %r3, %fp, 10               # 4-byte Folded Reload
	addi	%r4, %r3, 4
	load %r3, %r3, 0
	cmpdi %r3,-1
	beq	.LBB125_11
	jump	.LBB125_10
.LBB125_11:                             # %else18
                                        #   in Loop: Header=BB125_2 Depth=1
	load %r3, %fp, 2                # 4-byte Folded Reload
	store %r3, %r0, 138
	load %r3, %fp, 6                # 4-byte Folded Reload
	store %r3, %r0, 139
	load %r3, %fp, 7                # 4-byte Folded Reload
	store %r3, %r0, 143
	load %r3, %fp, 8                # 4-byte Folded Reload
	store %r3, %r0, 147
	store %r6, %r0, 142
	load %r3, %fp, 3                # 4-byte Folded Reload
	store %r3, %r0, 137
	jump	.LBB125_4
.LBB125_3:                              # %then4
                                        #   in Loop: Header=BB125_2 Depth=1
	load %r3, %fp, 11               # 4-byte Folded Reload
	srawi	%r3, %r3, 2
	load %r3, %r3, 13
	load %r3, %r3, 24
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	beq	.LBB125_12
	jump	.LBB125_4
.LBB125_4:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB125_2 Depth=1
	load %r3, %fp, 9                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	store %r3, %fp, 9               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r4, %fp, 5                # 4-byte Folded Reload
	add	%r3, %r4, %r3
	load %r4, %r3, 0
	cmpdi %r4,-1
	beq	.LBB125_12
	jump	.LBB125_2
.LBB125_12:                             # %ifcont23
	load %lr, %fp, 12               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end125:
	.size	V6233.V2642.solve_each_element, .Lfunc_end125-V6233.V2642.solve_each_element
                                        # -- End function
	.globl	V6284.V2693.setup_rect_reflection # -- Begin function V6284.V2693.setup_rect_reflection
	.p2align	2
	.type	V6284.V2693.setup_rect_reflection,@function
V6284.V2693.setup_rect_reflection:      # @V6284.V2693.setup_rect_reflection
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 13
	store %fp, %sp, 0
	store %lr, %fp, 12              # 4-byte Folded Spill
	store %r3, %fp, 7               # 4-byte Folded Spill
	load %r3, %r4, 28
	load %r3, %r3, 0
	store %r3, %fp, 11              # 4-byte Folded Spill
	load %r3, %r0, 435
	store %r3, %fp, 10              # 4-byte Folded Spill
	load %r3, %r0, 79
	store %r3, %fp, 9               # 4-byte Folded Spill
	load %r3, %r0, 87
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %r0, 83
	store %r3, %fp, 6               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 4               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 5               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	addi	%r5, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %fp, 5                # 4-byte Folded Reload
	store %r3, %r5, 4
	liw %r6, 0
	load %r3, %fp, 6                # 4-byte Folded Reload
	fsub	%r3, %r6, %r3
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r4, %fp, 8                # 4-byte Folded Reload
	fsub	%r4, %r6, %r4
	store %r4, %fp, 5               # 4-byte Folded Spill
	load %r6, %fp, 4                # 4-byte Folded Reload
	store %r6, %r5, 0
	store %r4, %r6, 8
	store %r3, %r6, 4
	load %r3, %fp, 9                # 4-byte Folded Reload
	store %r3, %r6, 0
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6221.V2630.iter_setup_dirvec_constants
	liw %r3, 1065353216
	load %r4, %fp, 11               # 4-byte Folded Reload
	fsub	%r3, %r3, %r4
	store %r3, %fp, 11              # 4-byte Folded Spill
	load %r3, %fp, 9                # 4-byte Folded Reload
	liw %r4, 0
	fsub	%r3, %r4, %r3
	store %r3, %fp, 8               # 4-byte Folded Spill
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 7                # 4-byte Folded Reload
	srawi	%r5, %r4, 2
	store %r5, %fp, 7               # 4-byte Folded Spill
	li %r4, 1
	or	%r4, %r5, %r4
	store %r4, %r3, 0
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 10               # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	store %r4, %fp, 9               # 4-byte Folded Spill
	store %r3, %r4, 255
	load %r3, %r0, 83
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	addi	%r5, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	load %r3, %fp, 1                # 4-byte Folded Reload
	store %r3, %r5, 4
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r5, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 8
	load %r3, %fp, 4                # 4-byte Folded Reload
	store %r3, %r4, 4
	load %r3, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6221.V2630.iter_setup_dirvec_constants
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 7                # 4-byte Folded Reload
	li %r5, 2
	or	%r4, %r4, %r5
	store %r4, %r3, 0
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 9                # 4-byte Folded Reload
	store %r3, %r4, 259
	load %r3, %r0, 87
	store %r3, %fp, 5               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	addi	%r5, %r3, 0
	store %r3, %fp, 4               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	store %r3, %r5, 4
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r5, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 8
	load %r3, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 4
	load %r3, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6221.V2630.iter_setup_dirvec_constants
	li %r3, 3
	load %r4, %fp, 7                # 4-byte Folded Reload
	or	%r3, %r4, %r3
	store %r3, %fp, 8               # 4-byte Folded Spill
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 4                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r4, %fp, 9                # 4-byte Folded Reload
	store %r3, %r4, 263
	load %r3, %fp, 10               # 4-byte Folded Reload
	addi	%r3, %r3, 3
	store %r3, %r0, 435
	load %lr, %fp, 12               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end126:
	.size	V6284.V2693.setup_rect_reflection, .Lfunc_end126-V6284.V2693.setup_rect_reflection
                                        # -- End function
	.globl	V6285.V2694.setup_surface_reflection # -- Begin function V6285.V2694.setup_surface_reflection
	.p2align	2
	.type	V6285.V2694.setup_surface_reflection,@function
V6285.V2694.setup_surface_reflection:   # @V6285.V2694.setup_surface_reflection
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 14
	store %fp, %sp, 0
	store %lr, %fp, 13              # 4-byte Folded Spill
	store %r3, %fp, 10              # 4-byte Folded Spill
	load %r3, %r4, 16
	load %r4, %r4, 28
	load %r4, %r4, 0
	store %r4, %fp, 11              # 4-byte Folded Spill
	load %r4, %r3, 8
	store %r4, %fp, 9               # 4-byte Folded Spill
	load %r4, %r3, 0
	store %r4, %fp, 8               # 4-byte Folded Spill
	load %r3, %r3, 4
	store %r3, %fp, 6               # 4-byte Folded Spill
	load %r3, %r0, 435
	store %r3, %fp, 12              # 4-byte Folded Spill
	load %r3, %r0, 87
	store %r3, %fp, 7               # 4-byte Folded Spill
	load %r3, %r0, 79
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r3, %r0, 83
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r8, %fp, 6                # 4-byte Folded Reload
	load %r9, %fp, 4                # 4-byte Folded Reload
	fmul	%r7, %r9, %r8
	load %r5, %fp, 8                # 4-byte Folded Reload
	load %r6, %fp, 5                # 4-byte Folded Reload
	fmul	%r4, %r6, %r5
	fadd	%r7, %r4, %r7
	load %r10, %fp, 9               # 4-byte Folded Reload
	load %r11, %fp, 7               # 4-byte Folded Reload
	fmul	%r4, %r11, %r10
	fadd	%r7, %r7, %r4
	fadd	%r4, %r10, %r10
	fmul	%r4, %r7, %r4
	fsub	%r4, %r4, %r11
	load %r10, %fp, 3               # 4-byte Folded Reload
	store %r10, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	store %r4, %r10, 8
	fadd	%r4, %r8, %r8
	fmul	%r4, %r7, %r4
	fsub	%r4, %r4, %r9
	store %r4, %r10, 4
	fadd	%r4, %r5, %r5
	fmul	%r4, %r7, %r4
	fsub	%r4, %r4, %r6
	store %r4, %r10, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 10               # 4-byte Folded Reload
	srawi	%r3, %r3, 2
	li %r4, 1
	or	%r3, %r3, %r4
	store %r3, %fp, 10              # 4-byte Folded Spill
	liw %r3, 1065353216
	load %r4, %fp, 11               # 4-byte Folded Reload
	fsub	%r3, %r3, %r4
	store %r3, %fp, 11              # 4-byte Folded Spill
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 10               # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r5, %fp, 12               # 4-byte Folded Reload
	srawi	%r4, %r5, 2
	store %r3, %r4, 255
	addi	%r3, %r5, 1
	store %r3, %r0, 435
	load %lr, %fp, 13               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end127:
	.size	V6285.V2694.setup_surface_reflection, .Lfunc_end127-V6285.V2694.setup_surface_reflection
                                        # -- End function
	.globl	V6283.V2692.add_reflection # -- Begin function V6283.V2692.add_reflection
	.p2align	2
	.type	V6283.V2692.add_reflection,@function
V6283.V2692.add_reflection:             # @V6283.V2692.add_reflection
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 11
	store %fp, %sp, 0
	store %lr, %fp, 10              # 4-byte Folded Spill
	store %r8, %fp, 4               # 4-byte Folded Spill
	store %r7, %fp, 5               # 4-byte Folded Spill
	store %r6, %fp, 6               # 4-byte Folded Spill
	store %r5, %fp, 7               # 4-byte Folded Spill
	store %r4, %fp, 8               # 4-byte Folded Spill
	store %r3, %fp, 9               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	addi	%r5, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	load %r3, %fp, 1                # 4-byte Folded Reload
	store %r3, %r5, 4
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r5, 0
	load %r3, %fp, 4                # 4-byte Folded Reload
	store %r3, %r4, 8
	load %r3, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 4
	load %r3, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r3, %r0, 1
	addi	%r4, %r3, -1
	addi	%r3, %r5, 0
	bl V6221.V2630.iter_setup_dirvec_constants
	li %r3, 3
	bl create_tuple
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r4, %fp, 9                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	store %r3, %r4, 255
	load %lr, %fp, 10               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end128:
	.size	V6283.V2692.add_reflection, .Lfunc_end128-V6283.V2692.add_reflection
                                        # -- End function
	.globl	V6277.V2686.create_dirvec # -- Begin function V6277.V2686.create_dirvec
	.p2align	2
	.type	V6277.V2686.create_dirvec,@function
V6277.V2686.create_dirvec:              # @V6277.V2686.create_dirvec
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end129:
	.size	V6277.V2686.create_dirvec, .Lfunc_end129-V6277.V2686.create_dirvec
                                        # -- End function
	.globl	V6221.V2630.iter_setup_dirvec_constants # -- Begin function V6221.V2630.iter_setup_dirvec_constants
	.p2align	2
	.type	V6221.V2630.iter_setup_dirvec_constants,@function
V6221.V2630.iter_setup_dirvec_constants: # @V6221.V2630.iter_setup_dirvec_constants
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	store %r3, %fp, 3               # 4-byte Folded Spill
	cmpdi %r4,0
	blt	.LBB130_11
	jump	.LBB130_1
.LBB130_1:                              # %then.lr.ph
	srawi	%r5, %r4, 2
	addi	%r6, %r4, 1
.LBB130_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	load %r3, %fp, 3                # 4-byte Folded Reload
	load %r8, %r3, 0
	load %r4, %r3, 4
	load %r7, %r5, 13
	load %r3, %r7, 4
	cmpdi %r3,2
	store %r5, %fp, 6               # 4-byte Folded Spill
	store %r6, %fp, 5               # 4-byte Folded Spill
	store %r4, %fp, 4               # 4-byte Folded Spill
	beq	.LBB130_5
	jump	.LBB130_3
.LBB130_3:                              # %then
                                        #   in Loop: Header=BB130_2 Depth=1
	cmpdi %r3,1
	bne	.LBB130_9
	jump	.LBB130_4
.LBB130_4:                              # %then2
                                        #   in Loop: Header=BB130_2 Depth=1
	addi	%r3, %r8, 0
	addi	%r4, %r7, 0
	bl V6218.V2627.setup_rect_table
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r4, %fp, 4                # 4-byte Folded Reload
	add	%r4, %r4, %r5
	store %r3, %r4, 0
	load %r6, %fp, 5                # 4-byte Folded Reload
	jump	.LBB130_10
.LBB130_5:                              # %then3
                                        #   in Loop: Header=BB130_2 Depth=1
	li %r3, 4
	li %r4, 0
	store %r7, %fp, 2               # 4-byte Folded Spill
	store %r8, %fp, 1               # 4-byte Folded Spill
	bl create_array
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r4, %r8, 16
	load %r7, %fp, 1                # 4-byte Folded Reload
	load %r5, %r7, 4
	load %r6, %r4, 4
	fmul	%r5, %r5, %r6
	load %r6, %r7, 0
	addi	%r9, %r7, 0
	load %r7, %r4, 0
	fmul	%r6, %r6, %r7
	fadd	%r5, %r6, %r5
	load %r6, %r9, 8
	load %r4, %r4, 8
	fmul	%r4, %r6, %r4
	fadd	%r4, %r5, %r4
	liw %r6, 0
	cmpf %r4,%r6
	bgt	.LBB130_7
	jump	.LBB130_6
.LBB130_7:                              # %else.i
                                        #   in Loop: Header=BB130_2 Depth=1
	liw %r5, -1082130432
	fdiv	%r5, %r5, %r4
	store %r5, %r3, 0
	load %r5, %r8, 16
	load %r5, %r5, 0
	fdiv	%r5, %r5, %r4
	fsub	%r5, %r6, %r5
	store %r5, %r3, 4
	load %r5, %r8, 16
	load %r5, %r5, 4
	fdiv	%r5, %r5, %r4
	fsub	%r5, %r6, %r5
	store %r5, %r3, 8
	load %r5, %r8, 16
	load %r5, %r5, 8
	fdiv	%r4, %r5, %r4
	fsub	%r4, %r6, %r4
	store %r4, %r3, 12
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r6, %fp, 5                # 4-byte Folded Reload
	load %r4, %fp, 4                # 4-byte Folded Reload
.LBB130_8:                              # %V6219.V2628.setup_surface_table.exit
                                        #   in Loop: Header=BB130_2 Depth=1
	add	%r4, %r4, %r5
	store %r3, %r4, 0
	jump	.LBB130_10
.LBB130_9:                              # %else4
                                        #   in Loop: Header=BB130_2 Depth=1
	addi	%r3, %r8, 0
	addi	%r4, %r7, 0
	bl V6220.V2629.setup_second_table
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r4, %fp, 4                # 4-byte Folded Reload
	add	%r4, %r4, %r5
	store %r3, %r4, 0
	load %r6, %fp, 5                # 4-byte Folded Reload
.LBB130_10:                             # %ifcont5
                                        #   in Loop: Header=BB130_2 Depth=1
	addi	%r5, %r5, -4
	addi	%r6, %r6, -1
	cmpdi %r6,0
	bgt	.LBB130_2
	jump	.LBB130_11
.LBB130_6:                              # %then.i
                                        #   in Loop: Header=BB130_2 Depth=1
	li %r4, 0
	store %r4, %r3, 0
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r6, %fp, 5                # 4-byte Folded Reload
	load %r4, %fp, 4                # 4-byte Folded Reload
	jump	.LBB130_8
.LBB130_11:                             # %ifcont7
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end130:
	.size	V6221.V2630.iter_setup_dirvec_constants, .Lfunc_end130-V6221.V2630.iter_setup_dirvec_constants
                                        # -- End function
	.globl	V6218.V2627.setup_rect_table # -- Begin function V6218.V2627.setup_rect_table
	.p2align	2
	.type	V6218.V2627.setup_rect_table,@function
V6218.V2627.setup_rect_table:           # @V6218.V2627.setup_rect_table
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 6
	li %r4, 0
	bl create_array
	load %r8, %fp, 1                # 4-byte Folded Reload
	load %r6, %r8, 0
	liw %r4, 0
	cmpf %r6,%r4
	beq	.LBB131_6
	jump	.LBB131_1
.LBB131_6:                              # %else
	li %r4, 0
	store %r4, %r3, 4
	load %r9, %fp, 2                # 4-byte Folded Reload
.LBB131_7:                              # %ifcont
	load %r6, %r8, 4
	liw %r4, 0
	cmpf %r6,%r4
	beq	.LBB131_13
	jump	.LBB131_8
.LBB131_13:                             # %else8
	li %r4, 0
	store %r4, %r3, 12
.LBB131_14:                             # %ifcont9
	load %r6, %r8, 8
	liw %r4, 0
	cmpf %r6,%r4
	beq	.LBB131_20
	jump	.LBB131_15
.LBB131_20:                             # %else14
	li %r4, 0
	store %r4, %r3, 20
.LBB131_21:                             # %ifcont15
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB131_1:                              # %then
	li %r5, 1
	cmpf %r6,%r4
	li %r6, 1
	blt	.LBB131_3
# %bb.2:                                # %then
	li %r6, 0
.LBB131_3:                              # %then
	load %r9, %fp, 2                # 4-byte Folded Reload
	load %r7, %r9, 24
	and	%r5, %r7, %r5
	xor	%r6, %r6, %r5
	load %r5, %r9, 16
	load %r5, %r5, 0
	cmpdi %r6,0
	bne	.LBB131_5
# %bb.4:                                # %then
	fsub	%r5, %r4, %r5
.LBB131_5:                              # %then
	store %r5, %r3, 0
	load %r4, %r8, 0
	liw %r5, 1065353216
	fdiv	%r4, %r5, %r4
	store %r4, %r3, 4
	jump	.LBB131_7
.LBB131_8:                              # %then5
	li %r5, 1
	cmpf %r6,%r4
	li %r6, 1
	blt	.LBB131_10
# %bb.9:                                # %then5
	li %r6, 0
.LBB131_10:                             # %then5
	load %r7, %r9, 24
	and	%r5, %r7, %r5
	xor	%r6, %r6, %r5
	load %r5, %r9, 16
	load %r5, %r5, 4
	cmpdi %r6,0
	bne	.LBB131_12
# %bb.11:                               # %then5
	fsub	%r5, %r4, %r5
.LBB131_12:                             # %then5
	store %r5, %r3, 8
	load %r4, %r8, 4
	liw %r5, 1065353216
	fdiv	%r4, %r5, %r4
	store %r4, %r3, 12
	jump	.LBB131_14
.LBB131_15:                             # %then11
	li %r5, 1
	cmpf %r6,%r4
	li %r6, 1
	blt	.LBB131_17
# %bb.16:                               # %then11
	li %r6, 0
.LBB131_17:                             # %then11
	load %r7, %r9, 24
	and	%r5, %r7, %r5
	xor	%r6, %r6, %r5
	load %r5, %r9, 16
	load %r5, %r5, 8
	cmpdi %r6,0
	bne	.LBB131_19
# %bb.18:                               # %then11
	fsub	%r5, %r4, %r5
.LBB131_19:                             # %then11
	store %r5, %r3, 16
	load %r4, %r8, 8
	liw %r5, 1065353216
	fdiv	%r4, %r5, %r4
	store %r4, %r3, 20
	jump	.LBB131_21
.Lfunc_end131:
	.size	V6218.V2627.setup_rect_table, .Lfunc_end131-V6218.V2627.setup_rect_table
                                        # -- End function
	.globl	V6219.V2628.setup_surface_table # -- Begin function V6219.V2628.setup_surface_table
	.p2align	2
	.type	V6219.V2628.setup_surface_table,@function
V6219.V2628.setup_surface_table:        # @V6219.V2628.setup_surface_table
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 1               # 4-byte Folded Spill
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 4
	li %r4, 0
	bl create_array
	load %r8, %fp, 1                # 4-byte Folded Reload
	load %r4, %r8, 16
	load %r7, %fp, 2                # 4-byte Folded Reload
	load %r5, %r7, 4
	load %r6, %r4, 4
	fmul	%r5, %r5, %r6
	load %r6, %r7, 0
	addi	%r9, %r7, 0
	load %r7, %r4, 0
	fmul	%r6, %r6, %r7
	fadd	%r5, %r6, %r5
	load %r6, %r9, 8
	load %r4, %r4, 8
	fmul	%r4, %r6, %r4
	fadd	%r4, %r5, %r4
	liw %r5, 0
	cmpf %r4,%r5
	bgt	.LBB132_2
	jump	.LBB132_1
.LBB132_2:                              # %else
	liw %r6, -1082130432
	fdiv	%r6, %r6, %r4
	store %r6, %r3, 0
	load %r6, %r8, 16
	load %r6, %r6, 0
	fdiv	%r6, %r6, %r4
	fsub	%r6, %r5, %r6
	store %r6, %r3, 4
	load %r6, %r8, 16
	load %r6, %r6, 4
	fdiv	%r6, %r6, %r4
	fsub	%r6, %r5, %r6
	store %r6, %r3, 8
	load %r6, %r8, 16
	load %r6, %r6, 8
	fdiv	%r4, %r6, %r4
	fsub	%r4, %r5, %r4
	store %r4, %r3, 12
.LBB132_3:                              # %ifcont
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB132_1:                              # %then
	li %r4, 0
	store %r4, %r3, 0
	jump	.LBB132_3
.Lfunc_end132:
	.size	V6219.V2628.setup_surface_table, .Lfunc_end132-V6219.V2628.setup_surface_table
                                        # -- End function
	.globl	V6220.V2629.setup_second_table # -- Begin function V6220.V2629.setup_second_table
	.p2align	2
	.type	V6220.V2629.setup_second_table,@function
V6220.V2629.setup_second_table:         # @V6220.V2629.setup_second_table
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 5
	li %r4, 0
	bl create_array
	load %r16, %fp, 2               # 4-byte Folded Reload
	load %r15, %fp, 1               # 4-byte Folded Reload
	load %r4, %r16, 16
	load %r5, %r4, 4
	load %r6, %r15, 4
	fmul	%r7, %r6, %r6
	fmul	%r9, %r7, %r5
	load %r7, %r4, 0
	load %r8, %r15, 0
	fmul	%r10, %r8, %r8
	fmul	%r10, %r10, %r7
	fadd	%r11, %r10, %r9
	load %r9, %r4, 8
	load %r10, %r15, 8
	fmul	%r4, %r10, %r10
	fmul	%r4, %r4, %r9
	fadd	%r4, %r11, %r4
	load %r11, %r16, 12
	cmpdi %r11,0
	beq	.LBB133_2
	jump	.LBB133_1
.LBB133_1:                              # %else.i
	load %r11, %r16, 36
	fmul	%r12, %r8, %r10
	load %r13, %r11, 4
	fmul	%r12, %r12, %r13
	fmul	%r13, %r6, %r10
	load %r14, %r11, 0
	fmul	%r13, %r13, %r14
	fadd	%r4, %r4, %r13
	fadd	%r4, %r4, %r12
	fmul	%r12, %r8, %r6
	load %r11, %r11, 8
	fmul	%r11, %r12, %r11
	fadd	%r4, %r4, %r11
.LBB133_2:                              # %V6207.V2616.quadratic.exit
	store %r4, %r3, 0
	fmul	%r7, %r8, %r7
	fmul	%r6, %r6, %r5
	fmul	%r5, %r10, %r9
	liw %r8, 0
	fsub	%r5, %r8, %r5
	fsub	%r6, %r8, %r6
	fsub	%r7, %r8, %r7
	load %r8, %r16, 12
	cmpdi %r8,0
	bne	.LBB133_4
	jump	.LBB133_3
.LBB133_4:                              # %else8
	load %r8, %r15, 4
	load %r9, %r16, 36
	load %r10, %r9, 8
	fmul	%r8, %r8, %r10
	load %r9, %r9, 4
	load %r10, %r15, 8
	fmul	%r9, %r10, %r9
	fadd	%r8, %r9, %r8
	liw %r9, 1056964608
	fmul	%r8, %r8, %r9
	fsub	%r7, %r7, %r8
	store %r7, %r3, 4
	load %r7, %r15, 0
	load %r8, %r16, 36
	load %r10, %r8, 8
	fmul	%r7, %r7, %r10
	load %r8, %r8, 0
	load %r10, %r15, 8
	fmul	%r8, %r10, %r8
	fadd	%r7, %r8, %r7
	fmul	%r7, %r7, %r9
	fsub	%r6, %r6, %r7
	store %r6, %r3, 8
	load %r6, %r16, 36
	load %r7, %r15, 0
	load %r8, %r6, 4
	fmul	%r7, %r7, %r8
	load %r8, %r15, 4
	load %r6, %r6, 0
	fmul	%r6, %r8, %r6
	fadd	%r6, %r6, %r7
	fmul	%r6, %r6, %r9
	fsub	%r5, %r5, %r6
	store %r5, %r3, 12
.LBB133_5:                              # %ifcont15
	liw %r5, 0
	cmpf %r4,%r5
	beq	.LBB133_7
	jump	.LBB133_6
.LBB133_6:                              # %else17
	liw %r5, 1065353216
	fdiv	%r4, %r5, %r4
	store %r4, %r3, 16
.LBB133_7:                              # %ifcont18
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB133_3:                              # %then7
	store %r5, %r3, 12
	store %r6, %r3, 8
	store %r7, %r3, 4
	jump	.LBB133_5
.Lfunc_end133:
	.size	V6220.V2629.setup_second_table, .Lfunc_end133-V6220.V2629.setup_second_table
                                        # -- End function
	.globl	V6279.V2688.create_dirvecs # -- Begin function V6279.V2688.create_dirvecs
	.p2align	2
	.type	V6279.V2688.create_dirvecs,@function
V6279.V2688.create_dirvecs:             # @V6279.V2688.create_dirvecs
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 7
	store %fp, %sp, 0
	store %lr, %fp, 6               # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB134_4
	jump	.LBB134_1
.LBB134_1:                              # %then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB134_2 Depth 2
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	addi	%r4, %r3, 0
	load %r3, %fp, 4                # 4-byte Folded Reload
	store %r3, %r4, 4
	load %r3, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 0
	li %r3, 120
	bl create_array
	load %r4, %fp, 1                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	store %r3, %r4, 180
	li %r4, 119
	addi	%r3, %r3, 472
.LBB134_2:                              # %then.i
                                        #   Parent Loop BB134_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r3, %fp, 5               # 4-byte Folded Spill
	store %r4, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	load %r4, %fp, 4                # 4-byte Folded Reload
	load %r5, %fp, 2                # 4-byte Folded Reload
	store %r5, %r3, 4
	load %r5, %fp, 3                # 4-byte Folded Reload
	store %r5, %r3, 0
	load %r5, %fp, 5                # 4-byte Folded Reload
	store %r3, %r5, 0
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB134_2
	jump	.LBB134_3
.LBB134_3:                              # %V6278.V2687.create_dirvec_elements.exit
                                        #   in Loop: Header=BB134_1 Depth=1
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r4, -1
	cmpdi %r4,0
	bgt	.LBB134_1
	jump	.LBB134_4
.LBB134_4:                              # %ifcont
	load %lr, %fp, 6                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end134:
	.size	V6279.V2688.create_dirvecs, .Lfunc_end134-V6279.V2688.create_dirvecs
                                        # -- End function
	.globl	V6276.V2685.calc_dirvec_rows # -- Begin function V6276.V2685.calc_dirvec_rows
	.p2align	2
	.type	V6276.V2685.calc_dirvec_rows,@function
V6276.V2685.calc_dirvec_rows:           # @V6276.V2685.calc_dirvec_rows
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	store %r4, %fp, 4               # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB135_13
	jump	.LBB135_1
.LBB135_1:                              # %then.preheader
	addi	%r9, %r5, 0
.LBB135_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 1               # 4-byte Folded Spill
	itof	%r3, %r3
	liw %r4, 1045220557
	fmul	%r3, %r3, %r4
	liw %r4, -1083808154
	fadd	%r7, %r3, %r4
	store %r7, %fp, 6               # 4-byte Folded Spill
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, -1110651704
	load %r8, %fp, 4                # 4-byte Folded Reload
	store %r8, %fp, 4               # 4-byte Folded Spill
	store %r9, %fp, 5               # 4-byte Folded Spill
	bl V6274.V2683.calc_dirvec
	load %r3, %fp, 5                # 4-byte Folded Reload
	addi	%r9, %r3, 2
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, 1063675495
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r8, %fp, 4                # 4-byte Folded Reload
	store %r9, %fp, 3               # 4-byte Folded Spill
	bl V6274.V2683.calc_dirvec
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r4, 1
	addi	%r8, %r4, -4
	cmpdi %r3,4
	bgt	.LBB135_4
# %bb.3:                                # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	addi	%r8, %r3, 0
.LBB135_4:                              # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, -1097229928
	load %r7, %fp, 6                # 4-byte Folded Reload
	store %r8, %fp, 2               # 4-byte Folded Spill
	load %r9, %fp, 5                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, 1060320052
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	load %r4, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r4, 1
	addi	%r8, %r4, -4
	cmpdi %r3,4
	bgt	.LBB135_6
# %bb.5:                                # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	addi	%r8, %r3, 0
.LBB135_6:                              # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, -1090519041
	load %r7, %fp, 6                # 4-byte Folded Reload
	store %r8, %fp, 2               # 4-byte Folded Spill
	load %r9, %fp, 5                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, 1056964608
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	load %r4, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r4, 1
	addi	%r8, %r4, -4
	cmpdi %r3,4
	bgt	.LBB135_8
# %bb.7:                                # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	addi	%r8, %r3, 0
.LBB135_8:                              # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, -1087163597
	load %r7, %fp, 6                # 4-byte Folded Reload
	store %r8, %fp, 2               # 4-byte Folded Spill
	load %r9, %fp, 5                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, 1050253722
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	load %r4, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r4, 1
	addi	%r8, %r4, -4
	cmpdi %r3,4
	bgt	.LBB135_10
# %bb.9:                                # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	addi	%r8, %r3, 0
.LBB135_10:                             # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, -1083808154
	load %r7, %fp, 6                # 4-byte Folded Reload
	store %r8, %fp, 2               # 4-byte Folded Spill
	load %r9, %fp, 5                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	liw %r6, 1036831949
	load %r7, %fp, 6                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	load %r9, %fp, 3                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r4, 2
	addi	%r4, %r4, -3
	store %r4, %fp, 4               # 4-byte Folded Spill
	cmpdi %r3,4
	bgt	.LBB135_12
# %bb.11:                               # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	store %r3, %fp, 4               # 4-byte Folded Spill
.LBB135_12:                             # %then
                                        #   in Loop: Header=BB135_2 Depth=1
	load %r9, %fp, 5                # 4-byte Folded Reload
	addi	%r9, %r9, 4
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r4, -1
	cmpdi %r4,0
	bgt	.LBB135_2
	jump	.LBB135_13
.LBB135_13:                             # %ifcont
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end135:
	.size	V6276.V2685.calc_dirvec_rows, .Lfunc_end135-V6276.V2685.calc_dirvec_rows
                                        # -- End function
	.globl	V6281.V2690.init_vecset_constants # -- Begin function V6281.V2690.init_vecset_constants
	.p2align	2
	.type	V6281.V2690.init_vecset_constants,@function
V6281.V2690.init_vecset_constants:      # @V6281.V2690.init_vecset_constants
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB136_4
	jump	.LBB136_1
.LBB136_1:                              # %then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB136_2 Depth 2
	li %r4, 120
	store %r3, %fp, 1               # 4-byte Folded Spill
	srawi	%r3, %r3, 2
	load %r3, %r3, 180
	addi	%r3, %r3, 476
.LBB136_2:                              # %then.i
                                        #   Parent Loop BB136_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	store %r3, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
	load %r3, %fp, 3                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r3, %fp, 3                # 4-byte Folded Reload
	load %r4, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB136_2
	jump	.LBB136_3
.LBB136_3:                              # %V6280.V2689.init_dirvec_constants.exit
                                        #   in Loop: Header=BB136_1 Depth=1
	load %r4, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r4, -1
	cmpdi %r4,0
	bgt	.LBB136_1
	jump	.LBB136_4
.LBB136_4:                              # %ifcont
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end136:
	.size	V6281.V2690.init_vecset_constants, .Lfunc_end136-V6281.V2690.init_vecset_constants
                                        # -- End function
	.globl	V6280.V2689.init_dirvec_constants # -- Begin function V6280.V2689.init_dirvec_constants
	.p2align	2
	.type	V6280.V2689.init_dirvec_constants,@function
V6280.V2689.init_dirvec_constants:      # @V6280.V2689.init_dirvec_constants
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	cmpdi %r4,0
	blt	.LBB137_3
	jump	.LBB137_1
.LBB137_1:                              # %then.preheader
	srawi	%r5, %r4, 2
	add	%r3, %r3, %r5
	addi	%r4, %r4, 1
.LBB137_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 1               # 4-byte Folded Spill
	store %r3, %fp, 2               # 4-byte Folded Spill
	load %r3, %fp, 2                # 4-byte Folded Reload
	load %r3, %r3, 0
	load %r4, %r0, 1
	addi	%r4, %r4, -1
	bl V6221.V2630.iter_setup_dirvec_constants
	load %r4, %fp, 1                # 4-byte Folded Reload
	load %r3, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB137_2
	jump	.LBB137_3
.LBB137_3:                              # %ifcont
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end137:
	.size	V6280.V2689.init_dirvec_constants, .Lfunc_end137-V6280.V2689.init_dirvec_constants
                                        # -- End function
	.globl	V6275.V2684.calc_dirvecs # -- Begin function V6275.V2684.calc_dirvecs
	.p2align	2
	.type	V6275.V2684.calc_dirvecs,@function
V6275.V2684.calc_dirvecs:               # @V6275.V2684.calc_dirvecs
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	store %r6, %fp, 2               # 4-byte Folded Spill
	store %r4, %fp, 5               # 4-byte Folded Spill
	cmpdi %r3,0
	blt	.LBB138_5
	jump	.LBB138_1
.LBB138_1:                              # %then.lr.ph
	addi	%r4, %r3, 0
	load %r3, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r3, 2
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB138_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 4               # 4-byte Folded Spill
	store %r5, %fp, 6               # 4-byte Folded Spill
	itof	%r3, %r4
	liw %r5, 1045220557
	fmul	%r4, %r3, %r5
	store %r4, %fp, 3               # 4-byte Folded Spill
	liw %r3, -1083808154
	fadd	%r6, %r4, %r3
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	load %r7, %fp, 5                # 4-byte Folded Reload
	load %r8, %fp, 6                # 4-byte Folded Reload
	load %r9, %fp, 2                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	liw %r3, 1036831949
	load %r4, %fp, 3                # 4-byte Folded Reload
	fadd	%r6, %r4, %r3
	li %r3, 0
	liw %r4, 0
	liw %r5, 0
	load %r7, %fp, 5                # 4-byte Folded Reload
	load %r8, %fp, 6                # 4-byte Folded Reload
	load %r9, %fp, 1                # 4-byte Folded Reload
	bl V6274.V2683.calc_dirvec
	load %r5, %fp, 6                # 4-byte Folded Reload
	addi	%r3, %r5, 1
	addi	%r5, %r5, -4
	cmpdi %r3,4
	bgt	.LBB138_4
# %bb.3:                                # %then
                                        #   in Loop: Header=BB138_2 Depth=1
	addi	%r5, %r3, 0
.LBB138_4:                              # %then
                                        #   in Loop: Header=BB138_2 Depth=1
	load %r4, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r4, -1
	cmpdi %r4,0
	addi	%r4, %r3, 0
	bgt	.LBB138_2
	jump	.LBB138_5
.LBB138_5:                              # %ifcont
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end138:
	.size	V6275.V2684.calc_dirvecs, .Lfunc_end138-V6275.V2684.calc_dirvecs
                                        # -- End function
	.globl	V6274.V2683.calc_dirvec # -- Begin function V6274.V2683.calc_dirvec
	.p2align	2
	.type	V6274.V2683.calc_dirvec,@function
V6274.V2683.calc_dirvec:                # @V6274.V2683.calc_dirvec
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 8
	store %fp, %sp, 0
	store %lr, %fp, 7               # 4-byte Folded Spill
	store %r9, %fp, 1               # 4-byte Folded Spill
	store %r8, %fp, 2               # 4-byte Folded Spill
	store %r7, %fp, 4               # 4-byte Folded Spill
	store %r4, %fp, 5               # 4-byte Folded Spill
	cmpdi %r3,4
	bgt	.LBB139_2
	jump	.LBB139_1
.LBB139_1:                              # %else.preheader
	addi	%r3, %r3, -1
	store %r6, %fp, 3               # 4-byte Folded Spill
	jump	.LBB139_3
.LBB139_3:                              # %else
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 6               # 4-byte Folded Spill
	addi	%r3, %r5, 0
	addi	%r4, %r6, 0
	bl V6273.V2682.adjust_position
	store %r3, %fp, 5               # 4-byte Folded Spill
	load %r4, %fp, 4                # 4-byte Folded Reload
	bl V6273.V2682.adjust_position
	load %r6, %fp, 3                # 4-byte Folded Reload
	addi	%r5, %r3, 0
	load %r3, %fp, 6                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	cmpdi %r3,3
	bgt	.LBB139_2
	jump	.LBB139_3
.LBB139_2:                              # %then
	fmul	%r3, %r5, %r5
	load %r6, %fp, 5                # 4-byte Folded Reload
	fmul	%r4, %r6, %r6
	fadd	%r3, %r4, %r3
	liw %r4, 1065353216
	fadd	%r3, %r3, %r4
	fsqrt	%r3, %r3
	fdiv	%r6, %r6, %r3
	fdiv	%r5, %r5, %r3
	fdiv	%r3, %r4, %r3
	load %r4, %fp, 1                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	load %r7, %fp, 2                # 4-byte Folded Reload
	srawi	%r7, %r7, 2
	load %r7, %r7, 180
	add	%r4, %r7, %r4
	load %r7, %r4, 0
	load %r7, %r7, 0
	store %r3, %r7, 8
	store %r5, %r7, 4
	store %r6, %r7, 0
	load %r7, %r4, 160
	load %r7, %r7, 0
	liw %r8, 0
	fsub	%r9, %r8, %r5
	store %r9, %r7, 8
	store %r3, %r7, 4
	store %r6, %r7, 0
	load %r7, %r4, 320
	load %r7, %r7, 0
	store %r9, %r7, 8
	fsub	%r10, %r8, %r6
	store %r10, %r7, 4
	store %r3, %r7, 0
	fsub	%r3, %r8, %r3
	load %r7, %r4, 4
	load %r7, %r7, 0
	store %r9, %r7, 4
	store %r3, %r7, 8
	store %r10, %r7, 0
	load %r7, %r4, 164
	load %r7, %r7, 0
	store %r10, %r7, 0
	store %r5, %r7, 8
	store %r3, %r7, 4
	load %r4, %r4, 324
	load %r4, %r4, 0
	store %r5, %r4, 8
	store %r6, %r4, 4
	store %r3, %r4, 0
	load %lr, %fp, 7                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end139:
	.size	V6274.V2683.calc_dirvec, .Lfunc_end139-V6274.V2683.calc_dirvec
                                        # -- End function
	.globl	V6273.V2682.adjust_position # -- Begin function V6273.V2682.adjust_position
	.p2align	2
	.type	V6273.V2682.adjust_position,@function
V6273.V2682.adjust_position:            # @V6273.V2682.adjust_position
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	fmul	%r3, %r3, %r3
	liw %r5, 1036831949
	fadd	%r3, %r3, %r5
	fsqrt	%r5, %r3
	liw %r7, 1065353216
	fdiv	%r3, %r7, %r5
	liw %r6, 0
	cmpf %r3,%r6
	bge	.LBB140_2
# %bb.1:                                # %entry
	liw %r7, -1082130432
.LBB140_2:                              # %entry
	fmul	%r3, %r3, %r7
	liw %r6, 1054867456
	cmpf %r3,%r6
	store %r5, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 2               # 4-byte Folded Spill
	store %r7, %fp, 1               # 4-byte Folded Spill
	bgt	.LBB140_4
	jump	.LBB140_3
.LBB140_4:                              # %else2.i
	liw %r6, 1065353216
	cmpf %r3,%r6
	bgt	.LBB140_6
	jump	.LBB140_5
.LBB140_6:                              # %else4.i
	liw %r4, 1075479162
	cmpf %r3,%r4
	bgt	.LBB140_8
	jump	.LBB140_7
.LBB140_8:                              # %else6.i
	liw %r4, 1065353216
	fdiv	%r3, %r4, %r3
	bl kernel_atan
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r6, %fp, 1                # 4-byte Folded Reload
.LBB140_9:                              # %V6139.V2548.atan.exit
	fmul	%r3, %r6, %r3
	fmul	%r3, %r3, %r5
	bl V6272.V2681.tan
	load %r4, %fp, 3                # 4-byte Folded Reload
	fmul	%r3, %r4, %r3
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB140_3:                              # %then1.i
	bl kernel_atan
	load %r6, %fp, 1                # 4-byte Folded Reload
	load %r5, %fp, 2                # 4-byte Folded Reload
	jump	.LBB140_9
.LBB140_5:                              # %then3.i
	fadd	%r5, %r3, %r6
	fsub	%r3, %r6, %r3
	fdiv	%r3, %r3, %r5
	bl kernel_atan
	load %r6, %fp, 1                # 4-byte Folded Reload
	load %r5, %fp, 2                # 4-byte Folded Reload
	liw %r4, 1061752794
	fsub	%r3, %r4, %r3
	jump	.LBB140_9
.LBB140_7:                              # %then5.i
	liw %r4, 1065353216
	fadd	%r4, %r3, %r4
	liw %r5, -1082130432
	fadd	%r3, %r3, %r5
	fdiv	%r3, %r3, %r4
	bl kernel_atan
	liw %r4, 1061752794
	fadd	%r3, %r3, %r4
	load %r5, %fp, 2                # 4-byte Folded Reload
	load %r6, %fp, 1                # 4-byte Folded Reload
	jump	.LBB140_9
.Lfunc_end140:
	.size	V6273.V2682.adjust_position, .Lfunc_end140-V6273.V2682.adjust_position
                                        # -- End function
	.globl	V6272.V2681.tan         # -- Begin function V6272.V2681.tan
	.p2align	2
	.type	V6272.V2681.tan,@function
V6272.V2681.tan:                        # @V6272.V2681.tan
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB141_2
# %bb.1:                                # %entry
	liw %r5, -1082130432
.LBB141_2:                              # %entry
	store %r5, %fp, 3               # 4-byte Folded Spill
	store %r3, %fp, 2               # 4-byte Folded Spill
	fmul	%r3, %r5, %r3
	bl reduction
	load %r6, %fp, 3                # 4-byte Folded Reload
	fsub	%r5, %r0, %r6
	liw %r4, 1078530008
	cmpf %r3,%r4
	bge	.LBB141_4
# %bb.3:                                # %entry
	addi	%r5, %r6, 0
.LBB141_4:                              # %entry
	store %r5, %fp, 3               # 4-byte Folded Spill
	liw %r5, -1068953640
	fadd	%r5, %r3, %r5
	cmpf %r3,%r4
	bge	.LBB141_6
# %bb.5:                                # %entry
	addi	%r5, %r3, 0
.LBB141_6:                              # %entry
	fsub	%r3, %r4, %r5
	liw %r4, 1070141402
	cmpf %r5,%r4
	bge	.LBB141_8
# %bb.7:                                # %entry
	addi	%r3, %r5, 0
.LBB141_8:                              # %entry
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB141_10
	jump	.LBB141_9
.LBB141_10:                             # %else11.i
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 1               # 4-byte Folded Spill
.LBB141_11:                             # %V6137.V2546.sin.exit
	liw %r4, 0
	load %r3, %fp, 2                # 4-byte Folded Reload
	cmpf %r3,%r4
	bge	.LBB141_13
# %bb.12:                               # %V6137.V2546.sin.exit
	fsub	%r3, %r0, %r3
.LBB141_13:                             # %V6137.V2546.sin.exit
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB141_15
# %bb.14:                               # %V6137.V2546.sin.exit
	liw %r5, 1065353216
.LBB141_15:                             # %V6137.V2546.sin.exit
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB141_17
# %bb.16:                               # %V6137.V2546.sin.exit
	addi	%r6, %r3, 0
.LBB141_17:                             # %V6137.V2546.sin.exit
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB141_19
# %bb.18:                               # %V6137.V2546.sin.exit
	addi	%r3, %r5, 0
.LBB141_19:                             # %V6137.V2546.sin.exit
	fsub	%r5, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB141_21
# %bb.20:                               # %V6137.V2546.sin.exit
	addi	%r5, %r6, 0
.LBB141_21:                             # %V6137.V2546.sin.exit
	load %r4, %fp, 3                # 4-byte Folded Reload
	load %r6, %fp, 1                # 4-byte Folded Reload
	fmul	%r4, %r4, %r6
	liw %r6, 1061752794
	cmpf %r5,%r6
	bgt	.LBB141_23
	jump	.LBB141_22
.LBB141_23:                             # %else14.i
	liw %r6, 1070141402
	fsub	%r5, %r6, %r5
	liw %r6, -1128068060
	fmul	%r6, %r5, %r6
	fmul	%r6, %r5, %r6
	liw %r7, -1134326311
	fmul	%r7, %r5, %r7
	fmul	%r7, %r5, %r7
	liw %r8, 1065353216
	fadd	%r7, %r7, %r8
	fmul	%r6, %r6, %r7
	fadd	%r6, %r6, %r8
	liw %r7, -1119040307
	fmul	%r7, %r5, %r7
	fmul	%r7, %r5, %r7
	fmul	%r6, %r7, %r6
	fadd	%r6, %r6, %r8
	liw %r7, -1104500051
	fmul	%r7, %r5, %r7
	fmul	%r7, %r5, %r7
	fmul	%r6, %r7, %r6
	fadd	%r6, %r6, %r8
	fmul	%r5, %r5, %r6
.LBB141_24:                             # %V6138.V2547.cos.exit
	fmul	%r3, %r3, %r5
	fdiv	%r3, %r4, %r3
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB141_9:                              # %then10.i
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 1               # 4-byte Folded Spill
	jump	.LBB141_11
.LBB141_22:                             # %then13.i
	liw %r6, -1123514240
	fmul	%r6, %r5, %r6
	fmul	%r6, %r5, %r6
	liw %r7, -1131263730
	fmul	%r7, %r5, %r7
	fmul	%r7, %r5, %r7
	liw %r8, 1065353216
	fadd	%r7, %r7, %r8
	fmul	%r6, %r6, %r7
	fadd	%r6, %r6, %r8
	liw %r7, -1112888666
	fmul	%r7, %r5, %r7
	fmul	%r7, %r5, %r7
	fmul	%r6, %r7, %r6
	liw %r7, -1090519040
	fmul	%r7, %r5, %r7
	fmul	%r5, %r5, %r7
	fadd	%r6, %r6, %r8
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r8
	jump	.LBB141_24
.Lfunc_end141:
	.size	V6272.V2681.tan, .Lfunc_end141-V6272.V2681.tan
                                        # -- End function
	.globl	V6278.V2687.create_dirvec_elements # -- Begin function V6278.V2687.create_dirvec_elements
	.p2align	2
	.type	V6278.V2687.create_dirvec_elements,@function
V6278.V2687.create_dirvec_elements:     # @V6278.V2687.create_dirvec_elements
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	cmpdi %r4,0
	blt	.LBB142_3
	jump	.LBB142_1
.LBB142_1:                              # %then.preheader
	srawi	%r5, %r4, 2
	add	%r3, %r3, %r5
	addi	%r4, %r4, 1
.LBB142_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 3               # 4-byte Folded Spill
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	store %r3, %fp, 2               # 4-byte Folded Spill
	load %r3, %r0, 1
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 2
	bl create_tuple
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r4, %fp, 4                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r4, %fp, 3                # 4-byte Folded Reload
	load %r3, %fp, 4                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB142_2
	jump	.LBB142_3
.LBB142_3:                              # %ifcont
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end142:
	.size	V6278.V2687.create_dirvec_elements, .Lfunc_end142-V6278.V2687.create_dirvec_elements
                                        # -- End function
	.globl	V6194.V2603.read_screen_settings # -- Begin function V6194.V2603.read_screen_settings
	.p2align	2
	.type	V6194.V2603.read_screen_settings,@function
V6194.V2603.read_screen_settings:       # @V6194.V2603.read_screen_settings
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 10
	store %fp, %sp, 0
	store %lr, %fp, 9               # 4-byte Folded Spill
	bl read_float
	store %r3, %r0, 73
	bl read_float
	store %r3, %r0, 77
	bl read_float
	store %r3, %r0, 81
	bl read_float
	liw %r4, 1016003125
	fmul	%r5, %r3, %r4
	liw %r4, 0
	cmpf %r5,%r4
	store %r5, %fp, 6               # 4-byte Folded Spill
	addi	%r4, %r5, 0
	bge	.LBB143_2
# %bb.1:                                # %entry
	liw %r4, -1131480523
	fmul	%r4, %r3, %r4
.LBB143_2:                              # %entry
	addi	%r3, %r4, 0
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB143_4
# %bb.3:                                # %entry
	liw %r5, 1065353216
.LBB143_4:                              # %entry
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB143_6
# %bb.5:                                # %entry
	addi	%r6, %r3, 0
.LBB143_6:                              # %entry
	liw %r7, 1070141402
	fsub	%r3, %r0, %r5
	cmpf %r6,%r7
	bge	.LBB143_8
# %bb.7:                                # %entry
	addi	%r3, %r5, 0
.LBB143_8:                              # %entry
	store %r3, %fp, 8               # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB143_10
# %bb.9:                                # %entry
	addi	%r3, %r6, 0
.LBB143_10:                             # %entry
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB143_12
	jump	.LBB143_11
.LBB143_12:                             # %else14.i
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 7               # 4-byte Folded Spill
.LBB143_13:                             # %V6138.V2547.cos.exit
	liw %r3, 0
	liw %r5, 1065353216
	load %r4, %fp, 6                # 4-byte Folded Reload
	cmpf %r4,%r3
	bge	.LBB143_15
# %bb.14:                               # %V6138.V2547.cos.exit
	liw %r5, -1082130432
.LBB143_15:                             # %V6138.V2547.cos.exit
	store %r5, %fp, 5               # 4-byte Folded Spill
	fmul	%r3, %r4, %r5
	bl reduction
	load %r6, %fp, 5                # 4-byte Folded Reload
	fsub	%r5, %r0, %r6
	liw %r4, 1078530008
	cmpf %r3,%r4
	bge	.LBB143_17
# %bb.16:                               # %V6138.V2547.cos.exit
	addi	%r5, %r6, 0
.LBB143_17:                             # %V6138.V2547.cos.exit
	store %r5, %fp, 6               # 4-byte Folded Spill
	liw %r5, -1068953640
	fadd	%r5, %r3, %r5
	cmpf %r3,%r4
	bge	.LBB143_19
# %bb.18:                               # %V6138.V2547.cos.exit
	addi	%r5, %r3, 0
.LBB143_19:                             # %V6138.V2547.cos.exit
	fsub	%r3, %r4, %r5
	liw %r4, 1070141402
	cmpf %r5,%r4
	bge	.LBB143_21
# %bb.20:                               # %V6138.V2547.cos.exit
	addi	%r3, %r5, 0
.LBB143_21:                             # %V6138.V2547.cos.exit
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB143_23
	jump	.LBB143_22
.LBB143_23:                             # %else11.i16
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 5               # 4-byte Folded Spill
.LBB143_24:                             # %V6137.V2546.sin.exit19
	bl read_float
	liw %r4, 1016003125
	fmul	%r5, %r3, %r4
	liw %r4, 0
	cmpf %r5,%r4
	store %r5, %fp, 4               # 4-byte Folded Spill
	addi	%r4, %r5, 0
	bge	.LBB143_26
# %bb.25:                               # %V6137.V2546.sin.exit19
	liw %r4, -1131480523
	fmul	%r4, %r3, %r4
.LBB143_26:                             # %V6137.V2546.sin.exit19
	addi	%r3, %r4, 0
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB143_28
# %bb.27:                               # %V6137.V2546.sin.exit19
	liw %r5, 1065353216
.LBB143_28:                             # %V6137.V2546.sin.exit19
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB143_30
# %bb.29:                               # %V6137.V2546.sin.exit19
	addi	%r6, %r3, 0
.LBB143_30:                             # %V6137.V2546.sin.exit19
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB143_32
# %bb.31:                               # %V6137.V2546.sin.exit19
	addi	%r3, %r5, 0
.LBB143_32:                             # %V6137.V2546.sin.exit19
	store %r3, %fp, 3               # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB143_34
# %bb.33:                               # %V6137.V2546.sin.exit19
	addi	%r3, %r6, 0
.LBB143_34:                             # %V6137.V2546.sin.exit19
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB143_36
	jump	.LBB143_35
.LBB143_36:                             # %else14.i33
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 2               # 4-byte Folded Spill
.LBB143_37:                             # %V6138.V2547.cos.exit36
	liw %r3, 0
	liw %r5, 1065353216
	load %r4, %fp, 4                # 4-byte Folded Reload
	cmpf %r4,%r3
	bge	.LBB143_39
# %bb.38:                               # %V6138.V2547.cos.exit36
	liw %r5, -1082130432
.LBB143_39:                             # %V6138.V2547.cos.exit36
	store %r5, %fp, 1               # 4-byte Folded Spill
	fmul	%r3, %r4, %r5
	bl reduction
	load %r6, %fp, 1                # 4-byte Folded Reload
	fsub	%r4, %r0, %r6
	liw %r5, 1078530008
	cmpf %r3,%r5
	bge	.LBB143_41
# %bb.40:                               # %V6138.V2547.cos.exit36
	addi	%r4, %r6, 0
.LBB143_41:                             # %V6138.V2547.cos.exit36
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r5
	bge	.LBB143_43
# %bb.42:                               # %V6138.V2547.cos.exit36
	addi	%r6, %r3, 0
.LBB143_43:                             # %V6138.V2547.cos.exit36
	fsub	%r7, %r5, %r6
	liw %r3, 1070141402
	cmpf %r6,%r3
	bge	.LBB143_45
# %bb.44:                               # %V6138.V2547.cos.exit36
	addi	%r7, %r6, 0
.LBB143_45:                             # %V6138.V2547.cos.exit36
	load %r3, %fp, 8                # 4-byte Folded Reload
	load %r5, %fp, 7                # 4-byte Folded Reload
	fmul	%r3, %r3, %r5
	load %r5, %fp, 6                # 4-byte Folded Reload
	load %r6, %fp, 5                # 4-byte Folded Reload
	fmul	%r5, %r5, %r6
	load %r6, %fp, 3                # 4-byte Folded Reload
	load %r8, %fp, 2                # 4-byte Folded Reload
	fmul	%r6, %r6, %r8
	liw %r8, 1061752794
	cmpf %r7,%r8
	bgt	.LBB143_47
	jump	.LBB143_46
.LBB143_47:                             # %else11.i
	liw %r8, 1070141402
	fsub	%r7, %r8, %r7
	liw %r8, -1123514240
	fmul	%r8, %r7, %r8
	fmul	%r8, %r7, %r8
	liw %r9, -1131263730
	fmul	%r9, %r7, %r9
	fmul	%r9, %r7, %r9
	liw %r10, 1065353216
	fadd	%r9, %r9, %r10
	fmul	%r8, %r8, %r9
	fadd	%r8, %r8, %r10
	liw %r9, -1112888666
	fmul	%r9, %r7, %r9
	fmul	%r9, %r7, %r9
	fmul	%r8, %r9, %r8
	liw %r9, -1090519040
	fmul	%r9, %r7, %r9
	fmul	%r7, %r7, %r9
	fadd	%r8, %r8, %r10
	fmul	%r7, %r7, %r8
	fadd	%r7, %r7, %r10
.LBB143_48:                             # %V6137.V2546.sin.exit
	fmul	%r4, %r4, %r7
	fmul	%r7, %r3, %r4
	liw %r8, 1128792064
	fmul	%r7, %r7, %r8
	store %r7, %r0, 172
	liw %r7, -1018691584
	fmul	%r7, %r5, %r7
	store %r7, %r0, 176
	fmul	%r7, %r3, %r6
	fmul	%r7, %r7, %r8
	store %r7, %r0, 180
	store %r6, %r0, 166
	li %r7, 0
	store %r7, %r0, 170
	liw %r7, 0
	fsub	%r5, %r7, %r5
	fmul	%r6, %r5, %r6
	fmul	%r5, %r5, %r4
	fsub	%r3, %r7, %r3
	fsub	%r4, %r7, %r4
	store %r4, %r0, 174
	store %r5, %r0, 169
	store %r3, %r0, 173
	store %r6, %r0, 177
	load %r3, %r0, 172
	load %r4, %r0, 73
	fsub	%r3, %r4, %r3
	store %r3, %r0, 76
	load %r3, %r0, 176
	load %r4, %r0, 77
	fsub	%r3, %r4, %r3
	store %r3, %r0, 80
	load %r3, %r0, 180
	load %r4, %r0, 81
	fsub	%r3, %r4, %r3
	store %r3, %r0, 84
	load %lr, %fp, 9                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB143_11:                             # %then13.i
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 7               # 4-byte Folded Spill
	jump	.LBB143_13
.LBB143_22:                             # %then10.i14
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 5               # 4-byte Folded Spill
	jump	.LBB143_24
.LBB143_35:                             # %then13.i31
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 2               # 4-byte Folded Spill
	jump	.LBB143_37
.LBB143_46:                             # %then10.i
	liw %r8, -1128068060
	fmul	%r8, %r7, %r8
	fmul	%r8, %r7, %r8
	liw %r9, -1134326311
	fmul	%r9, %r7, %r9
	fmul	%r9, %r7, %r9
	liw %r10, 1065353216
	fadd	%r9, %r9, %r10
	fmul	%r8, %r8, %r9
	fadd	%r8, %r8, %r10
	liw %r9, -1119040307
	fmul	%r9, %r7, %r9
	fmul	%r9, %r7, %r9
	fmul	%r8, %r9, %r8
	fadd	%r8, %r8, %r10
	liw %r9, -1104500051
	fmul	%r9, %r7, %r9
	fmul	%r9, %r7, %r9
	fmul	%r8, %r9, %r8
	fadd	%r8, %r8, %r10
	fmul	%r7, %r7, %r8
	jump	.LBB143_48
.Lfunc_end143:
	.size	V6194.V2603.read_screen_settings, .Lfunc_end143-V6194.V2603.read_screen_settings
                                        # -- End function
	.globl	V6195.V2604.read_light  # -- Begin function V6195.V2604.read_light
	.p2align	2
	.type	V6195.V2604.read_light,@function
V6195.V2604.read_light:                 # @V6195.V2604.read_light
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 6
	store %fp, %sp, 0
	store %lr, %fp, 5               # 4-byte Folded Spill
	bl read_int
	bl read_float
	liw %r4, 1016003125
	fmul	%r4, %r3, %r4
	liw %r3, 0
	liw %r5, 1065353216
	cmpf %r4,%r3
	bge	.LBB144_2
# %bb.1:                                # %entry
	liw %r5, -1082130432
.LBB144_2:                              # %entry
	store %r5, %fp, 3               # 4-byte Folded Spill
	store %r4, %fp, 4               # 4-byte Folded Spill
	fmul	%r3, %r4, %r5
	bl reduction
	load %r6, %fp, 3                # 4-byte Folded Reload
	fsub	%r4, %r0, %r6
	liw %r5, 1078530008
	cmpf %r3,%r5
	bge	.LBB144_4
# %bb.3:                                # %entry
	addi	%r4, %r6, 0
.LBB144_4:                              # %entry
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r5
	bge	.LBB144_6
# %bb.5:                                # %entry
	addi	%r6, %r3, 0
.LBB144_6:                              # %entry
	fsub	%r3, %r5, %r6
	liw %r5, 1070141402
	cmpf %r6,%r5
	bge	.LBB144_8
# %bb.7:                                # %entry
	addi	%r3, %r6, 0
.LBB144_8:                              # %entry
	liw %r5, 1061752794
	cmpf %r3,%r5
	bgt	.LBB144_10
	jump	.LBB144_9
.LBB144_10:                             # %else11.i
	liw %r5, 1070141402
	fsub	%r3, %r5, %r3
	liw %r5, -1123514240
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1131263730
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r3, %r6
	fmul	%r3, %r3, %r6
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	fadd	%r3, %r3, %r7
.LBB144_11:                             # %V6137.V2546.sin.exit
	liw %r5, 0
	load %r6, %fp, 4                # 4-byte Folded Reload
	cmpf %r6,%r5
	bge	.LBB144_13
# %bb.12:                               # %V6137.V2546.sin.exit
	fsub	%r6, %r0, %r6
.LBB144_13:                             # %V6137.V2546.sin.exit
	store %r6, %fp, 4               # 4-byte Folded Spill
	fmul	%r3, %r4, %r3
	fsub	%r3, %r5, %r3
	store %r3, %r0, 83
	bl read_float
	store %r3, %fp, 3               # 4-byte Folded Spill
	load %r3, %fp, 4                # 4-byte Folded Reload
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB144_15
# %bb.14:                               # %V6137.V2546.sin.exit
	liw %r5, 1065353216
.LBB144_15:                             # %V6137.V2546.sin.exit
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB144_17
# %bb.16:                               # %V6137.V2546.sin.exit
	addi	%r6, %r3, 0
.LBB144_17:                             # %V6137.V2546.sin.exit
	liw %r7, 1070141402
	fsub	%r3, %r0, %r5
	cmpf %r6,%r7
	bge	.LBB144_19
# %bb.18:                               # %V6137.V2546.sin.exit
	addi	%r3, %r5, 0
.LBB144_19:                             # %V6137.V2546.sin.exit
	store %r3, %fp, 4               # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB144_21
# %bb.20:                               # %V6137.V2546.sin.exit
	addi	%r3, %r6, 0
.LBB144_21:                             # %V6137.V2546.sin.exit
	liw %r4, 1016003125
	load %r5, %fp, 3                # 4-byte Folded Reload
	fmul	%r7, %r5, %r4
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB144_23
	jump	.LBB144_22
.LBB144_23:                             # %else14.i30
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 2               # 4-byte Folded Spill
.LBB144_24:                             # %V6138.V2547.cos.exit33
	liw %r3, 0
	liw %r4, 1065353216
	cmpf %r7,%r3
	bge	.LBB144_26
# %bb.25:                               # %V6138.V2547.cos.exit33
	liw %r4, -1082130432
.LBB144_26:                             # %V6138.V2547.cos.exit33
	store %r4, %fp, 1               # 4-byte Folded Spill
	store %r7, %fp, 3               # 4-byte Folded Spill
	fmul	%r3, %r7, %r4
	bl reduction
	load %r6, %fp, 1                # 4-byte Folded Reload
	fsub	%r4, %r0, %r6
	liw %r5, 1078530008
	cmpf %r3,%r5
	bge	.LBB144_28
# %bb.27:                               # %V6138.V2547.cos.exit33
	addi	%r4, %r6, 0
.LBB144_28:                             # %V6138.V2547.cos.exit33
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r5
	bge	.LBB144_30
# %bb.29:                               # %V6138.V2547.cos.exit33
	addi	%r6, %r3, 0
.LBB144_30:                             # %V6138.V2547.cos.exit33
	fsub	%r3, %r5, %r6
	liw %r5, 1070141402
	cmpf %r6,%r5
	bge	.LBB144_32
# %bb.31:                               # %V6138.V2547.cos.exit33
	addi	%r3, %r6, 0
.LBB144_32:                             # %V6138.V2547.cos.exit33
	liw %r5, 1061752794
	cmpf %r3,%r5
	bgt	.LBB144_34
	jump	.LBB144_33
.LBB144_34:                             # %else11.i13
	liw %r5, 1070141402
	fsub	%r3, %r5, %r3
	liw %r5, -1123514240
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1131263730
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r3, %r6
	fmul	%r3, %r3, %r6
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	fadd	%r6, %r3, %r7
.LBB144_35:                             # %V6137.V2546.sin.exit16
	load %r5, %fp, 4                # 4-byte Folded Reload
	load %r3, %fp, 2                # 4-byte Folded Reload
	fmul	%r7, %r5, %r3
	liw %r5, 0
	load %r3, %fp, 3                # 4-byte Folded Reload
	cmpf %r3,%r5
	bge	.LBB144_37
# %bb.36:                               # %V6137.V2546.sin.exit16
	fsub	%r3, %r0, %r3
.LBB144_37:                             # %V6137.V2546.sin.exit16
	fmul	%r4, %r4, %r6
	store %r7, %fp, 4               # 4-byte Folded Spill
	fmul	%r4, %r7, %r4
	store %r4, %r0, 79
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB144_39
# %bb.38:                               # %V6137.V2546.sin.exit16
	liw %r5, 1065353216
.LBB144_39:                             # %V6137.V2546.sin.exit16
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB144_41
# %bb.40:                               # %V6137.V2546.sin.exit16
	addi	%r6, %r3, 0
.LBB144_41:                             # %V6137.V2546.sin.exit16
	liw %r7, 1070141402
	fsub	%r3, %r0, %r5
	cmpf %r6,%r7
	bge	.LBB144_43
# %bb.42:                               # %V6137.V2546.sin.exit16
	addi	%r3, %r5, 0
.LBB144_43:                             # %V6137.V2546.sin.exit16
	fsub	%r4, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB144_45
# %bb.44:                               # %V6137.V2546.sin.exit16
	addi	%r4, %r6, 0
.LBB144_45:                             # %V6137.V2546.sin.exit16
	liw %r5, 1061752794
	cmpf %r4,%r5
	bgt	.LBB144_47
	jump	.LBB144_46
.LBB144_47:                             # %else14.i
	liw %r5, 1070141402
	fsub	%r4, %r5, %r4
	liw %r5, -1128068060
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1134326311
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
.LBB144_48:                             # %V6138.V2547.cos.exit
	fmul	%r3, %r3, %r4
	load %r4, %fp, 4                # 4-byte Folded Reload
	fmul	%r3, %r4, %r3
	store %r3, %r0, 87
	bl read_float
	store %r3, %r0, 82
	load %lr, %fp, 5                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB144_9:                              # %then10.i
	liw %r5, -1128068060
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1134326311
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r3, %r3, %r5
	jump	.LBB144_11
.LBB144_22:                             # %then13.i28
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 2               # 4-byte Folded Spill
	jump	.LBB144_24
.LBB144_33:                             # %then10.i11
	liw %r5, -1128068060
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, -1134326311
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1119040307
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	liw %r6, -1104500051
	fmul	%r6, %r3, %r6
	fmul	%r6, %r3, %r6
	fmul	%r5, %r6, %r5
	fadd	%r5, %r5, %r7
	fmul	%r6, %r3, %r5
	jump	.LBB144_35
.LBB144_46:                             # %then13.i
	liw %r5, -1123514240
	fmul	%r5, %r4, %r5
	fmul	%r5, %r4, %r5
	liw %r6, -1131263730
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	liw %r7, 1065353216
	fadd	%r6, %r6, %r7
	fmul	%r5, %r5, %r6
	fadd	%r5, %r5, %r7
	liw %r6, -1112888666
	fmul	%r6, %r4, %r6
	fmul	%r6, %r4, %r6
	fmul	%r5, %r6, %r5
	liw %r6, -1090519040
	fmul	%r6, %r4, %r6
	fmul	%r4, %r4, %r6
	fadd	%r5, %r5, %r7
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r7
	jump	.LBB144_48
.Lfunc_end144:
	.size	V6195.V2604.read_light, .Lfunc_end144-V6195.V2604.read_light
                                        # -- End function
	.globl	V6199.V2608.read_all_object # -- Begin function V6199.V2608.read_all_object
	.p2align	2
	.type	V6199.V2608.read_all_object,@function
V6199.V2608.read_all_object:            # @V6199.V2608.read_all_object
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	li %r3, 0
.LBB145_1:                              # %then.i
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 1               # 4-byte Folded Spill
	bl V6197.V2606.read_nth_object
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB145_3
	jump	.LBB145_2
.LBB145_3:                              # %else.i
                                        #   in Loop: Header=BB145_1 Depth=1
	load %r3, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	cmpdi %r3,60
	blt	.LBB145_1
	jump	.LBB145_4
.LBB145_2:                              # %then1.i
	load %r3, %fp, 1                # 4-byte Folded Reload
	store %r3, %r0, 1
	jump	.LBB145_4
.LBB145_4:                              # %V6198.V2607.read_object.exit
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end145:
	.size	V6199.V2608.read_all_object, .Lfunc_end145-V6199.V2608.read_all_object
                                        # -- End function
	.globl	V6202.V2611.read_and_network # -- Begin function V6202.V2611.read_and_network
	.p2align	2
	.type	V6202.V2611.read_and_network,@function
V6202.V2611.read_and_network:           # @V6202.V2611.read_and_network
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 0
	bl V6200.V2609.read_net_item
	load %r4, %r3, 0
	cmpdi %r4,-1
	beq	.LBB146_3
	jump	.LBB146_1
.LBB146_1:                              # %else.preheader
	load %r4, %fp, 1                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	addi	%r5, %r4, 84
.LBB146_2:                              # %else
                                        # =>This Inner Loop Header: Depth=1
	store %r5, %fp, 1               # 4-byte Folded Spill
	store %r3, %r5, 0
	li %r3, 0
	bl V6200.V2609.read_net_item
	load %r5, %fp, 1                # 4-byte Folded Reload
	addi	%r5, %r5, 4
	load %r4, %r3, 0
	cmpdi %r4,-1
	bne	.LBB146_2
	jump	.LBB146_3
.LBB146_3:                              # %ifcont
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end146:
	.size	V6202.V2611.read_and_network, .Lfunc_end146-V6202.V2611.read_and_network
                                        # -- End function
	.globl	V6201.V2610.read_or_network # -- Begin function V6201.V2610.read_or_network
	.p2align	2
	.type	V6201.V2610.read_or_network,@function
V6201.V2610.read_or_network:            # @V6201.V2610.read_or_network
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 4
	store %fp, %sp, 0
	store %lr, %fp, 3               # 4-byte Folded Spill
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 0
	bl V6200.V2609.read_net_item
	addi	%r5, %r3, 0
	load %r3, %fp, 2                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	load %r4, %r5, 0
	cmpdi %r4,-1
	bne	.LBB147_3
	jump	.LBB147_1
.LBB147_3:                              # %else
	store %r5, %fp, 1               # 4-byte Folded Spill
	bl V6201.V2610.read_or_network
	load %r4, %fp, 2                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	add	%r4, %r3, %r4
	load %r5, %fp, 1                # 4-byte Folded Reload
	store %r5, %r4, 0
	jump	.LBB147_2
.LBB147_1:                              # %then
	addi	%r4, %r5, 0
	bl create_array
.LBB147_2:                              # %then
	load %lr, %fp, 3                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end147:
	.size	V6201.V2610.read_or_network, .Lfunc_end147-V6201.V2610.read_or_network
                                        # -- End function
	.globl	V6200.V2609.read_net_item # -- Begin function V6200.V2609.read_net_item
	.p2align	2
	.type	V6200.V2609.read_net_item,@function
V6200.V2609.read_net_item:              # @V6200.V2609.read_net_item
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	store %r3, %fp, 2               # 4-byte Folded Spill
	addi	%r3, %r3, 1
	store %r3, %fp, 3               # 4-byte Folded Spill
	bl read_int
	cmpdi %r3,-1
	bne	.LBB148_3
	jump	.LBB148_1
.LBB148_3:                              # %else
	store %r3, %fp, 1               # 4-byte Folded Spill
	load %r3, %fp, 3                # 4-byte Folded Reload
	bl V6200.V2609.read_net_item
	load %r4, %fp, 2                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	add	%r4, %r3, %r4
	load %r5, %fp, 1                # 4-byte Folded Reload
	store %r5, %r4, 0
	jump	.LBB148_2
.LBB148_1:                              # %then
	load %r3, %fp, 3                # 4-byte Folded Reload
	li %r4, -1
	bl create_array
.LBB148_2:                              # %then
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end148:
	.size	V6200.V2609.read_net_item, .Lfunc_end148-V6200.V2609.read_net_item
                                        # -- End function
	.globl	V6198.V2607.read_object # -- Begin function V6198.V2607.read_object
	.p2align	2
	.type	V6198.V2607.read_object,@function
V6198.V2607.read_object:                # @V6198.V2607.read_object
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	cmpdi %r3,59
	bgt	.LBB149_4
	jump	.LBB149_1
.LBB149_1:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r3, %fp, 1               # 4-byte Folded Spill
	bl V6197.V2606.read_nth_object
	li %r4, 1
	and	%r3, %r3, %r4
	cmpdi %r3,0
	bne	.LBB149_3
	jump	.LBB149_2
.LBB149_3:                              # %else
                                        #   in Loop: Header=BB149_1 Depth=1
	load %r3, %fp, 1                # 4-byte Folded Reload
	addi	%r3, %r3, 1
	cmpdi %r3,60
	blt	.LBB149_1
	jump	.LBB149_4
.LBB149_2:                              # %then1
	load %r3, %fp, 1                # 4-byte Folded Reload
	store %r3, %r0, 1
	jump	.LBB149_4
.LBB149_4:                              # %ifcont3
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end149:
	.size	V6198.V2607.read_object, .Lfunc_end149-V6198.V2607.read_object
                                        # -- End function
	.globl	V6197.V2606.read_nth_object # -- Begin function V6197.V2606.read_nth_object
	.p2align	2
	.type	V6197.V2606.read_nth_object,@function
V6197.V2606.read_nth_object:            # @V6197.V2606.read_nth_object
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 18
	store %fp, %sp, 0
	store %lr, %fp, 17              # 4-byte Folded Spill
	store %r3, %fp, 6               # 4-byte Folded Spill
	bl read_int
	li %r4, 0
	cmpdi %r3,-1
	beq	.LBB150_29
	jump	.LBB150_1
.LBB150_1:                              # %else2
	store %r3, %fp, 4               # 4-byte Folded Spill
	bl read_int
	store %r3, %fp, 7               # 4-byte Folded Spill
	bl read_int
	store %r3, %fp, 3               # 4-byte Folded Spill
	bl read_int
	store %r3, %fp, 10              # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	store %r3, %fp, 13              # 4-byte Folded Spill
	bl read_float
	load %r4, %fp, 13               # 4-byte Folded Reload
	store %r3, %r4, 0
	bl read_float
	load %r4, %fp, 13               # 4-byte Folded Reload
	store %r3, %r4, 4
	bl read_float
	load %r4, %fp, 13               # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	store %r3, %fp, 12              # 4-byte Folded Spill
	bl read_float
	load %r4, %fp, 12               # 4-byte Folded Reload
	store %r3, %r4, 0
	bl read_float
	load %r4, %fp, 12               # 4-byte Folded Reload
	store %r3, %r4, 4
	bl read_float
	load %r4, %fp, 12               # 4-byte Folded Reload
	store %r3, %r4, 8
	bl read_float
	store %r3, %fp, 5               # 4-byte Folded Spill
	li %r3, 2
	li %r4, 0
	bl create_array
	store %r3, %fp, 9               # 4-byte Folded Spill
	bl read_float
	load %r4, %fp, 9                # 4-byte Folded Reload
	store %r3, %r4, 0
	bl read_float
	load %r4, %fp, 9                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	store %r3, %fp, 11              # 4-byte Folded Spill
	bl read_float
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r3, %r4, 0
	bl read_float
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r3, %r4, 4
	bl read_float
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	store %r3, %fp, 8               # 4-byte Folded Spill
	load %r3, %fp, 10               # 4-byte Folded Reload
	cmpdi %r3,0
	beq	.LBB150_3
	jump	.LBB150_2
.LBB150_2:                              # %else7
	bl read_float
	liw %r4, 1016003125
	fmul	%r3, %r3, %r4
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 0
	bl read_float
	liw %r4, 1016003125
	fmul	%r3, %r3, %r4
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 4
	bl read_float
	liw %r4, 1016003125
	fmul	%r3, %r3, %r4
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 8
.LBB150_3:                              # %ifcont8
	liw %r4, 0
	li %r3, 1
	load %r5, %fp, 5                # 4-byte Folded Reload
	cmpf %r5,%r4
	li %r4, 1
	blt	.LBB150_5
# %bb.4:                                # %ifcont8
	li %r4, 0
.LBB150_5:                              # %ifcont8
	load %r5, %fp, 7                # 4-byte Folded Reload
	cmpdi %r5,2
	beq	.LBB150_7
# %bb.6:                                # %ifcont8
	li %r3, 0
.LBB150_7:                              # %ifcont8
	or	%r3, %r3, %r4
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 4
	li %r4, 0
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 11
	bl create_tuple
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 40
	load %r10, %fp, 8               # 4-byte Folded Reload
	store %r10, %r3, 36
	load %r4, %fp, 11               # 4-byte Folded Reload
	store %r4, %r3, 32
	load %r4, %fp, 9                # 4-byte Folded Reload
	store %r4, %r3, 28
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 24
	load %r4, %fp, 12               # 4-byte Folded Reload
	store %r4, %r3, 20
	load %r9, %fp, 13               # 4-byte Folded Reload
	store %r9, %r3, 16
	load %r4, %fp, 10               # 4-byte Folded Reload
	store %r4, %r3, 12
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 4                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %r5, %fp, 7                # 4-byte Folded Reload
	store %r5, %r3, 4
	load %r4, %fp, 6                # 4-byte Folded Reload
	srawi	%r4, %r4, 2
	store %r3, %r4, 13
	cmpdi %r5,2
	beq	.LBB150_22
	jump	.LBB150_8
.LBB150_8:                              # %ifcont8
	addi	%r3, %r5, 0
	cmpdi %r5,3
	bne	.LBB150_27
	jump	.LBB150_9
.LBB150_9:                              # %then12
	li %r3, 0
	load %r5, %r9, 0
	liw %r4, 0
	cmpf %r5,%r4
	li %r6, 0
	beq	.LBB150_13
	jump	.LBB150_10
.LBB150_10:                             # %then14
	liw %r6, 1065353216
	cmpf %r5,%r4
	bgt	.LBB150_12
# %bb.11:                               # %then14
	liw %r6, -1082130432
.LBB150_12:                             # %then14
	fmul	%r5, %r5, %r5
	fdiv	%r5, %r6, %r5
	addi	%r6, %fp, 16
	store %r5, %r6, 0
	load %r6, %fp, 16
.LBB150_13:                             # %ifcont16
	store %r6, %r9, 0
	load %r5, %r9, 4
	cmpf %r5,%r4
	beq	.LBB150_17
	jump	.LBB150_14
.LBB150_14:                             # %then18
	liw %r4, 0
	liw %r3, 1065353216
	cmpf %r5,%r4
	bgt	.LBB150_16
# %bb.15:                               # %then18
	liw %r3, -1082130432
.LBB150_16:                             # %then18
	fmul	%r4, %r5, %r5
	fdiv	%r3, %r3, %r4
	addi	%r4, %fp, 15
	store %r3, %r4, 0
	load %r3, %fp, 15
.LBB150_17:                             # %ifcont20
	store %r3, %r9, 4
	li %r4, 0
	load %r3, %r9, 8
	liw %r5, 0
	cmpf %r3,%r5
	beq	.LBB150_21
	jump	.LBB150_18
.LBB150_18:                             # %then22
	liw %r4, 1065353216
	cmpf %r3,%r5
	bgt	.LBB150_20
# %bb.19:                               # %then22
	liw %r4, -1082130432
.LBB150_20:                             # %then22
	fmul	%r3, %r3, %r3
	fdiv	%r3, %r4, %r3
	addi	%r4, %fp, 14
	store %r3, %r4, 0
	load %r4, %fp, 14
.LBB150_21:                             # %ifcont24
	store %r4, %r9, 8
	jump	.LBB150_27
.LBB150_22:                             # %then26
	load %r4, %r9, 4
	fmul	%r5, %r4, %r4
	load %r3, %r9, 0
	fmul	%r6, %r3, %r3
	fadd	%r6, %r6, %r5
	load %r5, %r9, 8
	fmul	%r7, %r5, %r5
	fadd	%r7, %r6, %r7
	liw %r6, 1065353216
	fsqrt	%r7, %r7
	liw %r8, 0
	cmpf %r7,%r8
	beq	.LBB150_26
	jump	.LBB150_23
.LBB150_23:                             # %then.i
	load %r6, %fp, 5                # 4-byte Folded Reload
	cmpf %r6,%r8
	bge	.LBB150_25
	jump	.LBB150_24
.LBB150_24:                             # %then4.i
	liw %r6, 1065353216
	fdiv	%r6, %r6, %r7
	jump	.LBB150_26
.LBB150_25:                             # %else.i
	liw %r6, -1082130432
	fdiv	%r6, %r6, %r7
.LBB150_26:                             # %V6150.V2559.vecunit_sgn.exit
	fmul	%r5, %r5, %r6
	store %r5, %r9, 8
	fmul	%r4, %r4, %r6
	store %r4, %r9, 4
	fmul	%r3, %r3, %r6
	store %r3, %r9, 0
.LBB150_27:                             # %ifcont29
	li %r4, 1
	load %r3, %fp, 10               # 4-byte Folded Reload
	cmpdi %r3,0
	beq	.LBB150_29
	jump	.LBB150_28
.LBB150_28:                             # %else34
	addi	%r3, %r9, 0
	addi	%r4, %r10, 0
	bl V6196.V2605.rotate_quadratic_matrix
	li %r4, 1
.LBB150_29:                             # %ifcont36
	addi	%r3, %r4, 0
	load %lr, %fp, 17               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end150:
	.size	V6197.V2606.read_nth_object, .Lfunc_end150-V6197.V2606.read_nth_object
                                        # -- End function
	.globl	V6193.V2602.rad         # -- Begin function V6193.V2602.rad
	.p2align	2
	.type	V6193.V2602.rad,@function
V6193.V2602.rad:                        # @V6193.V2602.rad
# %bb.0:                                # %entry
	liw %r4, 1016003125
	fmul	%r3, %r3, %r4
	blr
.Lfunc_end151:
	.size	V6193.V2602.rad, .Lfunc_end151-V6193.V2602.rad
                                        # -- End function
	.globl	V6196.V2605.rotate_quadratic_matrix # -- Begin function V6196.V2605.rotate_quadratic_matrix
	.p2align	2
	.type	V6196.V2605.rotate_quadratic_matrix,@function
V6196.V2605.rotate_quadratic_matrix:    # @V6196.V2605.rotate_quadratic_matrix
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 15
	store %fp, %sp, 0
	store %lr, %fp, 14              # 4-byte Folded Spill
	store %r3, %fp, 12              # 4-byte Folded Spill
	store %r4, %fp, 13              # 4-byte Folded Spill
	load %r3, %r4, 0
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB152_2
# %bb.1:                                # %entry
	fsub	%r3, %r0, %r3
.LBB152_2:                              # %entry
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB152_4
# %bb.3:                                # %entry
	liw %r5, 1065353216
.LBB152_4:                              # %entry
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB152_6
# %bb.5:                                # %entry
	addi	%r6, %r3, 0
.LBB152_6:                              # %entry
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB152_8
# %bb.7:                                # %entry
	addi	%r3, %r5, 0
.LBB152_8:                              # %entry
	store %r3, %fp, 11              # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB152_10
# %bb.9:                                # %entry
	addi	%r3, %r6, 0
.LBB152_10:                             # %entry
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB152_12
	jump	.LBB152_11
.LBB152_12:                             # %else14.i
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 10              # 4-byte Folded Spill
.LBB152_13:                             # %V6138.V2547.cos.exit
	load %r3, %fp, 13               # 4-byte Folded Reload
	load %r3, %r3, 0
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB152_15
# %bb.14:                               # %V6138.V2547.cos.exit
	liw %r5, -1082130432
.LBB152_15:                             # %V6138.V2547.cos.exit
	store %r5, %fp, 9               # 4-byte Folded Spill
	fmul	%r3, %r3, %r5
	bl reduction
	load %r6, %fp, 9                # 4-byte Folded Reload
	fsub	%r5, %r0, %r6
	liw %r4, 1078530008
	cmpf %r3,%r4
	bge	.LBB152_17
# %bb.16:                               # %V6138.V2547.cos.exit
	addi	%r5, %r6, 0
.LBB152_17:                             # %V6138.V2547.cos.exit
	store %r5, %fp, 9               # 4-byte Folded Spill
	liw %r5, -1068953640
	fadd	%r5, %r3, %r5
	cmpf %r3,%r4
	bge	.LBB152_19
# %bb.18:                               # %V6138.V2547.cos.exit
	addi	%r5, %r3, 0
.LBB152_19:                             # %V6138.V2547.cos.exit
	fsub	%r3, %r4, %r5
	liw %r4, 1070141402
	cmpf %r5,%r4
	bge	.LBB152_21
# %bb.20:                               # %V6138.V2547.cos.exit
	addi	%r3, %r5, 0
.LBB152_21:                             # %V6138.V2547.cos.exit
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB152_23
	jump	.LBB152_22
.LBB152_23:                             # %else11.i
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 8               # 4-byte Folded Spill
.LBB152_24:                             # %V6137.V2546.sin.exit
	load %r3, %fp, 13               # 4-byte Folded Reload
	load %r3, %r3, 4
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB152_26
# %bb.25:                               # %V6137.V2546.sin.exit
	fsub	%r3, %r0, %r3
.LBB152_26:                             # %V6137.V2546.sin.exit
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB152_28
# %bb.27:                               # %V6137.V2546.sin.exit
	liw %r5, 1065353216
.LBB152_28:                             # %V6137.V2546.sin.exit
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB152_30
# %bb.29:                               # %V6137.V2546.sin.exit
	addi	%r6, %r3, 0
.LBB152_30:                             # %V6137.V2546.sin.exit
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB152_32
# %bb.31:                               # %V6137.V2546.sin.exit
	addi	%r3, %r5, 0
.LBB152_32:                             # %V6137.V2546.sin.exit
	store %r3, %fp, 7               # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB152_34
# %bb.33:                               # %V6137.V2546.sin.exit
	addi	%r3, %r6, 0
.LBB152_34:                             # %V6137.V2546.sin.exit
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB152_36
	jump	.LBB152_35
.LBB152_36:                             # %else14.i18
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 6               # 4-byte Folded Spill
.LBB152_37:                             # %V6138.V2547.cos.exit21
	load %r3, %fp, 13               # 4-byte Folded Reload
	load %r3, %r3, 4
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB152_39
# %bb.38:                               # %V6138.V2547.cos.exit21
	liw %r5, -1082130432
.LBB152_39:                             # %V6138.V2547.cos.exit21
	store %r5, %fp, 5               # 4-byte Folded Spill
	fmul	%r3, %r3, %r5
	bl reduction
	load %r6, %fp, 5                # 4-byte Folded Reload
	fsub	%r5, %r0, %r6
	liw %r4, 1078530008
	cmpf %r3,%r4
	bge	.LBB152_41
# %bb.40:                               # %V6138.V2547.cos.exit21
	addi	%r5, %r6, 0
.LBB152_41:                             # %V6138.V2547.cos.exit21
	store %r5, %fp, 5               # 4-byte Folded Spill
	liw %r5, -1068953640
	fadd	%r5, %r3, %r5
	cmpf %r3,%r4
	bge	.LBB152_43
# %bb.42:                               # %V6138.V2547.cos.exit21
	addi	%r5, %r3, 0
.LBB152_43:                             # %V6138.V2547.cos.exit21
	fsub	%r3, %r4, %r5
	liw %r4, 1070141402
	cmpf %r5,%r4
	bge	.LBB152_45
# %bb.44:                               # %V6138.V2547.cos.exit21
	addi	%r3, %r5, 0
.LBB152_45:                             # %V6138.V2547.cos.exit21
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB152_47
	jump	.LBB152_46
.LBB152_47:                             # %else11.i33
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 4               # 4-byte Folded Spill
.LBB152_48:                             # %V6137.V2546.sin.exit36
	load %r3, %fp, 13               # 4-byte Folded Reload
	load %r3, %r3, 8
	liw %r4, 0
	cmpf %r3,%r4
	bge	.LBB152_50
# %bb.49:                               # %V6137.V2546.sin.exit36
	fsub	%r3, %r0, %r3
.LBB152_50:                             # %V6137.V2546.sin.exit36
	bl reduction
	liw %r4, 1078530008
	liw %r5, -1082130432
	cmpf %r3,%r4
	bge	.LBB152_52
# %bb.51:                               # %V6137.V2546.sin.exit36
	liw %r5, 1065353216
.LBB152_52:                             # %V6137.V2546.sin.exit36
	liw %r6, -1068953640
	fadd	%r6, %r3, %r6
	cmpf %r3,%r4
	bge	.LBB152_54
# %bb.53:                               # %V6137.V2546.sin.exit36
	addi	%r6, %r3, 0
.LBB152_54:                             # %V6137.V2546.sin.exit36
	fsub	%r3, %r0, %r5
	liw %r7, 1070141402
	cmpf %r6,%r7
	bge	.LBB152_56
# %bb.55:                               # %V6137.V2546.sin.exit36
	addi	%r3, %r5, 0
.LBB152_56:                             # %V6137.V2546.sin.exit36
	store %r3, %fp, 3               # 4-byte Folded Spill
	fsub	%r3, %r4, %r6
	cmpf %r6,%r7
	bge	.LBB152_58
# %bb.57:                               # %V6137.V2546.sin.exit36
	addi	%r3, %r6, 0
.LBB152_58:                             # %V6137.V2546.sin.exit36
	liw %r4, 1061752794
	cmpf %r3,%r4
	bgt	.LBB152_60
	jump	.LBB152_59
.LBB152_60:                             # %else14.i49
	liw %r4, 1070141402
	fsub	%r3, %r4, %r3
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 2               # 4-byte Folded Spill
.LBB152_61:                             # %V6138.V2547.cos.exit52
	load %r3, %fp, 13               # 4-byte Folded Reload
	load %r3, %r3, 8
	liw %r4, 0
	liw %r5, 1065353216
	cmpf %r3,%r4
	bge	.LBB152_63
# %bb.62:                               # %V6138.V2547.cos.exit52
	liw %r5, -1082130432
.LBB152_63:                             # %V6138.V2547.cos.exit52
	store %r5, %fp, 1               # 4-byte Folded Spill
	fmul	%r3, %r3, %r5
	bl reduction
	load %r5, %fp, 1                # 4-byte Folded Reload
	fsub	%r7, %r0, %r5
	liw %r4, 1078530008
	cmpf %r3,%r4
	bge	.LBB152_65
# %bb.64:                               # %V6138.V2547.cos.exit52
	addi	%r7, %r5, 0
.LBB152_65:                             # %V6138.V2547.cos.exit52
	liw %r5, -1068953640
	fadd	%r5, %r3, %r5
	cmpf %r3,%r4
	bge	.LBB152_67
# %bb.66:                               # %V6138.V2547.cos.exit52
	addi	%r5, %r3, 0
.LBB152_67:                             # %V6138.V2547.cos.exit52
	fsub	%r9, %r4, %r5
	liw %r3, 1070141402
	cmpf %r5,%r3
	bge	.LBB152_69
# %bb.68:                               # %V6138.V2547.cos.exit52
	addi	%r9, %r5, 0
.LBB152_69:                             # %V6138.V2547.cos.exit52
	load %r3, %fp, 11               # 4-byte Folded Reload
	load %r4, %fp, 10               # 4-byte Folded Reload
	fmul	%r4, %r3, %r4
	load %r3, %fp, 9                # 4-byte Folded Reload
	load %r5, %fp, 8                # 4-byte Folded Reload
	fmul	%r5, %r3, %r5
	load %r3, %fp, 7                # 4-byte Folded Reload
	load %r6, %fp, 6                # 4-byte Folded Reload
	fmul	%r6, %r3, %r6
	load %r3, %fp, 5                # 4-byte Folded Reload
	load %r8, %fp, 4                # 4-byte Folded Reload
	fmul	%r3, %r3, %r8
	load %r8, %fp, 3                # 4-byte Folded Reload
	load %r10, %fp, 2               # 4-byte Folded Reload
	fmul	%r8, %r8, %r10
	liw %r10, 1061752794
	cmpf %r9,%r10
	bgt	.LBB152_71
	jump	.LBB152_70
.LBB152_71:                             # %else11.i64
	liw %r10, 1070141402
	fsub	%r9, %r10, %r9
	liw %r10, -1123514240
	fmul	%r10, %r9, %r10
	fmul	%r10, %r9, %r10
	liw %r11, -1131263730
	fmul	%r11, %r9, %r11
	fmul	%r11, %r9, %r11
	liw %r12, 1065353216
	fadd	%r11, %r11, %r12
	fmul	%r10, %r10, %r11
	fadd	%r10, %r10, %r12
	liw %r11, -1112888666
	fmul	%r11, %r9, %r11
	fmul	%r11, %r9, %r11
	fmul	%r10, %r11, %r10
	liw %r11, -1090519040
	fmul	%r11, %r9, %r11
	fmul	%r9, %r9, %r11
	fadd	%r10, %r10, %r12
	fmul	%r9, %r9, %r10
	fadd	%r9, %r9, %r12
.LBB152_72:                             # %V6137.V2546.sin.exit67
	fmul	%r9, %r7, %r9
	fmul	%r7, %r4, %r9
	fmul	%r10, %r5, %r3
	fmul	%r11, %r10, %r8
	fsub	%r7, %r11, %r7
	fmul	%r10, %r10, %r9
	fmul	%r11, %r4, %r8
	fadd	%r10, %r11, %r10
	fmul	%r11, %r5, %r9
	fmul	%r12, %r4, %r3
	fmul	%r13, %r12, %r8
	fadd	%r11, %r13, %r11
	fmul	%r12, %r12, %r9
	fmul	%r13, %r5, %r8
	fsub	%r12, %r12, %r13
	fmul	%r13, %r12, %r12
	load %r19, %fp, 12              # 4-byte Folded Reload
	load %r14, %r19, 4
	fmul	%r13, %r14, %r13
	fmul	%r15, %r11, %r11
	load %r16, %r19, 0
	fmul	%r15, %r16, %r15
	fadd	%r13, %r15, %r13
	fmul	%r15, %r10, %r10
	fmul	%r15, %r14, %r15
	fmul	%r17, %r7, %r7
	fmul	%r17, %r16, %r17
	fadd	%r15, %r17, %r15
	fmul	%r9, %r6, %r9
	fmul	%r8, %r6, %r8
	fmul	%r4, %r4, %r6
	fmul	%r5, %r5, %r6
	fmul	%r6, %r5, %r5
	load %r17, %r19, 8
	fmul	%r6, %r6, %r17
	fadd	%r6, %r6, %r15
	fmul	%r15, %r4, %r4
	fmul	%r15, %r15, %r17
	fadd	%r13, %r15, %r13
	fmul	%r15, %r8, %r8
	fmul	%r15, %r15, %r16
	fmul	%r18, %r9, %r9
	fmul	%r18, %r14, %r18
	fadd	%r15, %r15, %r18
	liw %r18, 0
	fsub	%r3, %r18, %r3
	fmul	%r18, %r3, %r3
	fmul	%r18, %r18, %r17
	fadd	%r15, %r18, %r15
	store %r15, %r19, 0
	store %r13, %r19, 8
	store %r6, %r19, 4
	fmul	%r6, %r8, %r16
	fmul	%r8, %r14, %r9
	fmul	%r9, %r8, %r12
	fmul	%r13, %r6, %r11
	fadd	%r9, %r13, %r9
	fmul	%r3, %r3, %r17
	fmul	%r13, %r4, %r3
	fadd	%r9, %r9, %r13
	fmul	%r8, %r8, %r10
	fmul	%r6, %r6, %r7
	fadd	%r6, %r6, %r8
	fmul	%r3, %r5, %r3
	fadd	%r3, %r6, %r3
	fmul	%r6, %r14, %r10
	fadd	%r3, %r3, %r3
	load %r8, %fp, 13               # 4-byte Folded Reload
	store %r3, %r8, 8
	fadd	%r3, %r9, %r9
	store %r3, %r8, 4
	fmul	%r3, %r12, %r6
	fmul	%r6, %r16, %r7
	fmul	%r6, %r11, %r6
	fadd	%r3, %r6, %r3
	fmul	%r5, %r5, %r17
	fmul	%r4, %r4, %r5
	fadd	%r3, %r4, %r3
	fadd	%r3, %r3, %r3
	store %r3, %r8, 0
	load %lr, %fp, 14               # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.LBB152_11:                             # %then13.i
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 10              # 4-byte Folded Spill
	jump	.LBB152_13
.LBB152_22:                             # %then10.i
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 8               # 4-byte Folded Spill
	jump	.LBB152_24
.LBB152_35:                             # %then13.i16
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 6               # 4-byte Folded Spill
	jump	.LBB152_37
.LBB152_46:                             # %then10.i31
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	store %r3, %fp, 4               # 4-byte Folded Spill
	jump	.LBB152_48
.LBB152_59:                             # %then13.i47
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r3, %r4
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r3, %r5
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r3, %r5
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	store %r3, %fp, 2               # 4-byte Folded Spill
	jump	.LBB152_61
.LBB152_70:                             # %then10.i62
	liw %r10, -1128068060
	fmul	%r10, %r9, %r10
	fmul	%r10, %r9, %r10
	liw %r11, -1134326311
	fmul	%r11, %r9, %r11
	fmul	%r11, %r9, %r11
	liw %r12, 1065353216
	fadd	%r11, %r11, %r12
	fmul	%r10, %r10, %r11
	fadd	%r10, %r10, %r12
	liw %r11, -1119040307
	fmul	%r11, %r9, %r11
	fmul	%r11, %r9, %r11
	fmul	%r10, %r11, %r10
	fadd	%r10, %r10, %r12
	liw %r11, -1104500051
	fmul	%r11, %r9, %r11
	fmul	%r11, %r9, %r11
	fmul	%r10, %r11, %r10
	fadd	%r10, %r10, %r12
	fmul	%r9, %r9, %r10
	jump	.LBB152_72
.Lfunc_end152:
	.size	V6196.V2605.rotate_quadratic_matrix, .Lfunc_end152-V6196.V2605.rotate_quadratic_matrix
                                        # -- End function
	.globl	V6269.V2678.create_pixel # -- Begin function V6269.V2678.create_pixel
	.p2align	2
	.type	V6269.V2678.create_pixel,@function
V6269.V2678.create_pixel:               # @V6269.V2678.create_pixel
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 10
	store %fp, %sp, 0
	store %lr, %fp, 9               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	store %r3, %fp, 4               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	li %r3, 5
	bl create_array
	store %r3, %fp, 8               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 12
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r3, %r4, 16
	li %r3, 5
	li %r4, 0
	bl create_array
	store %r3, %fp, 3               # 4-byte Folded Spill
	li %r3, 5
	li %r4, 0
	bl create_array
	store %r3, %fp, 2               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	li %r3, 5
	bl create_array
	store %r3, %fp, 7               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r3, %r4, 12
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r3, %r4, 16
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	li %r3, 5
	bl create_array
	store %r3, %fp, 6               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 12
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 6                # 4-byte Folded Reload
	store %r3, %r4, 16
	li %r3, 1
	li %r4, 0
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	li %r3, 5
	bl create_array
	store %r3, %fp, 5               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 12
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r3, %r4, 16
	li %r3, 8
	bl create_tuple
	load %r4, %fp, 5                # 4-byte Folded Reload
	store %r4, %r3, 28
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r4, %r3, 24
	load %r4, %fp, 6                # 4-byte Folded Reload
	store %r4, %r3, 20
	load %r4, %fp, 7                # 4-byte Folded Reload
	store %r4, %r3, 16
	load %r4, %fp, 2                # 4-byte Folded Reload
	store %r4, %r3, 12
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r4, %r3, 8
	load %r4, %fp, 8                # 4-byte Folded Reload
	store %r4, %r3, 4
	load %r4, %fp, 4                # 4-byte Folded Reload
	store %r4, %r3, 0
	load %lr, %fp, 9                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end153:
	.size	V6269.V2678.create_pixel, .Lfunc_end153-V6269.V2678.create_pixel
                                        # -- End function
	.globl	V6270.V2679.init_line_elements # -- Begin function V6270.V2679.init_line_elements
	.p2align	2
	.type	V6270.V2679.init_line_elements,@function
V6270.V2679.init_line_elements:         # @V6270.V2679.init_line_elements
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 5
	store %fp, %sp, 0
	store %lr, %fp, 4               # 4-byte Folded Spill
	store %r3, %fp, 1               # 4-byte Folded Spill
	cmpdi %r4,0
	blt	.LBB154_3
	jump	.LBB154_1
.LBB154_1:                              # %then.preheader
	srawi	%r3, %r4, 2
	load %r5, %fp, 1                # 4-byte Folded Reload
	add	%r3, %r5, %r3
	addi	%r4, %r4, 1
.LBB154_2:                              # %then
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %fp, 2               # 4-byte Folded Spill
	store %r3, %fp, 3               # 4-byte Folded Spill
	bl V6269.V2678.create_pixel
	load %r4, %fp, 3                # 4-byte Folded Reload
	store %r3, %r4, 0
	load %r4, %fp, 2                # 4-byte Folded Reload
	load %r3, %fp, 3                # 4-byte Folded Reload
	addi	%r3, %r3, -4
	addi	%r4, %r4, -1
	cmpdi %r4,0
	bgt	.LBB154_2
	jump	.LBB154_3
.LBB154_3:                              # %ifcont
	load %r3, %fp, 1                # 4-byte Folded Reload
	load %lr, %fp, 4                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end154:
	.size	V6270.V2679.init_line_elements, .Lfunc_end154-V6270.V2679.init_line_elements
                                        # -- End function
	.globl	V6268.V2677.create_float5x3array # -- Begin function V6268.V2677.create_float5x3array
	.p2align	2
	.type	V6268.V2677.create_float5x3array,@function
V6268.V2677.create_float5x3array:       # @V6268.V2677.create_float5x3array
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 3
	store %fp, %sp, 0
	store %lr, %fp, 2               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	addi	%r4, %r3, 0
	li %r3, 5
	bl create_array
	store %r3, %fp, 1               # 4-byte Folded Spill
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r3, %r4, 4
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r3, %r4, 8
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r3, %r4, 12
	li %r3, 3
	li %r4, 0
	bl create_array
	load %r4, %fp, 1                # 4-byte Folded Reload
	store %r3, %r4, 16
	addi	%r3, %r4, 0
	load %lr, %fp, 2                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end155:
	.size	V6268.V2677.create_float5x3array, .Lfunc_end155-V6268.V2677.create_float5x3array
                                        # -- End function
	.globl	V6155.V2564.vecmul      # -- Begin function V6155.V2564.vecmul
	.p2align	2
	.type	V6155.V2564.vecmul,@function
V6155.V2564.vecmul:                     # @V6155.V2564.vecmul
# %bb.0:                                # %entry
	load %r5, %r4, 0
	load %r6, %r3, 0
	fmul	%r5, %r6, %r5
	store %r5, %r3, 0
	load %r5, %r3, 4
	load %r6, %r4, 4
	fmul	%r5, %r5, %r6
	store %r5, %r3, 4
	load %r4, %r4, 8
	load %r5, %r3, 8
	fmul	%r4, %r5, %r4
	store %r4, %r3, 8
	blr
.Lfunc_end156:
	.size	V6155.V2564.vecmul, .Lfunc_end156-V6155.V2564.vecmul
                                        # -- End function
	.globl	V6149.V2558.vecunit     # -- Begin function V6149.V2558.vecunit
	.p2align	2
	.type	V6149.V2558.vecunit,@function
V6149.V2558.vecunit:                    # @V6149.V2558.vecunit
# %bb.0:                                # %entry
	load %r4, %r3, 4
	fmul	%r5, %r4, %r4
	load %r6, %r3, 0
	fmul	%r7, %r6, %r6
	fadd	%r5, %r7, %r5
	load %r7, %r3, 8
	fmul	%r8, %r7, %r7
	fadd	%r5, %r5, %r8
	fsqrt	%r5, %r5
	liw %r8, 1065353216
	fdiv	%r5, %r8, %r5
	fmul	%r7, %r7, %r5
	store %r7, %r3, 8
	fmul	%r4, %r4, %r5
	store %r4, %r3, 4
	fmul	%r4, %r6, %r5
	store %r4, %r3, 0
	blr
.Lfunc_end157:
	.size	V6149.V2558.vecunit, .Lfunc_end157-V6149.V2558.vecunit
                                        # -- End function
	.globl	V6148.V2557.vecdist2    # -- Begin function V6148.V2557.vecdist2
	.p2align	2
	.type	V6148.V2557.vecdist2,@function
V6148.V2557.vecdist2:                   # @V6148.V2557.vecdist2
# %bb.0:                                # %entry
	load %r5, %r4, 0
	load %r6, %r3, 0
	fsub	%r5, %r6, %r5
	load %r6, %r4, 4
	load %r7, %r3, 4
	fsub	%r6, %r7, %r6
	fmul	%r6, %r6, %r6
	fmul	%r5, %r5, %r5
	fadd	%r5, %r5, %r6
	load %r4, %r4, 8
	load %r3, %r3, 8
	fsub	%r3, %r3, %r4
	fmul	%r3, %r3, %r3
	fadd	%r3, %r5, %r3
	blr
.Lfunc_end158:
	.size	V6148.V2557.vecdist2, .Lfunc_end158-V6148.V2557.vecdist2
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi	%fp, %sp, 0
	addi	%sp, %sp, 2
	store %fp, %sp, 0
	store %lr, %fp, 1               # 4-byte Folded Spill
	li %r3, 512
	li %r4, 512
	bl V6287.V2696.rt
	load %lr, %fp, 1                # 4-byte Folded Reload
	addi	%sp, %fp, 0
	load %fp, %fp, 0
	blr
.Lfunc_end159:
	.size	main, .Lfunc_end159-main
                                        # -- End function
	.globl	float_of_int            # -- Begin function float_of_int
	.p2align	2
	.type	float_of_int,@function
float_of_int:                           # @float_of_int
# %bb.0:
	itof	%r3, %r3
	blr
.Lfunc_end160:
	.size	float_of_int, .Lfunc_end160-float_of_int
                                        # -- End function
	.globl	int_of_float            # -- Begin function int_of_float
	.p2align	2
	.type	int_of_float,@function
int_of_float:                           # @int_of_float
# %bb.0:
	ftoi	%r3, %r3
	blr
.Lfunc_end161:
	.size	int_of_float, .Lfunc_end161-int_of_float
                                        # -- End function
	.globl	floor                   # -- Begin function floor
	.p2align	2
	.type	floor,@function
floor:                                  # @floor
# %bb.0:
	ftoi	%r3, %r3
	itof	%r3, %r3
	blr
.Lfunc_end162:
	.size	floor, .Lfunc_end162-floor
                                        # -- End function
	.globl	sqrt                    # -- Begin function sqrt
	.p2align	2
	.type	sqrt,@function
sqrt:                                   # @sqrt
# %bb.0:
	fsqrt	%r3, %r3
	blr
.Lfunc_end163:
	.size	sqrt, .Lfunc_end163-sqrt
                                        # -- End function
	.globl	kernel_cos              # -- Begin function kernel_cos
	.p2align	2
	.type	kernel_cos,@function
kernel_cos:                             # @kernel_cos
# %bb.0:
	liw %r4, -1123514240
	fmul	%r4, %r3, %r4
	fmul	%r4, %r4, %r3
	liw %r5, -1131263730
	fmul	%r5, %r3, %r5
	fmul	%r5, %r5, %r3
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1112888666
	fmul	%r5, %r3, %r5
	fmul	%r5, %r5, %r3
	fmul	%r4, %r5, %r4
	liw %r5, -1090519040
	fmul	%r5, %r3, %r5
	fmul	%r3, %r5, %r3
	fadd	%r4, %r4, %r6
	fmul	%r3, %r3, %r4
	fadd	%r3, %r3, %r6
	blr
.Lfunc_end164:
	.size	kernel_cos, .Lfunc_end164-kernel_cos
                                        # -- End function
	.globl	kernel_sin              # -- Begin function kernel_sin
	.p2align	2
	.type	kernel_sin,@function
kernel_sin:                             # @kernel_sin
# %bb.0:
	liw %r4, -1128068060
	fmul	%r4, %r3, %r4
	fmul	%r4, %r4, %r3
	liw %r5, -1134326311
	fmul	%r5, %r3, %r5
	fmul	%r5, %r5, %r3
	liw %r6, 1065353216
	fadd	%r5, %r5, %r6
	fmul	%r4, %r4, %r5
	fadd	%r4, %r4, %r6
	liw %r5, -1119040307
	fmul	%r5, %r3, %r5
	fmul	%r5, %r5, %r3
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	liw %r5, -1104500051
	fmul	%r5, %r3, %r5
	fmul	%r5, %r5, %r3
	fmul	%r4, %r5, %r4
	fadd	%r4, %r4, %r6
	fmul	%r3, %r4, %r3
	blr
.Lfunc_end165:
	.size	kernel_sin, .Lfunc_end165-kernel_sin
                                        # -- End function
	.globl	mymalloc                # -- Begin function mymalloc
	.p2align	2
	.type	mymalloc,@function
mymalloc:                               # @mymalloc
# %bb.0:
	load %r4, %r0, 1
	add	%r3, %r4, %r3
	store %r3, %r0, 1
	addi	%r3, %r4, 0
	blr
.Lfunc_end166:
	.size	mymalloc, .Lfunc_end166-mymalloc
                                        # -- End function
	.globl	create_tuple            # -- Begin function create_tuple
	.p2align	2
	.type	create_tuple,@function
create_tuple:                           # @create_tuple
# %bb.0:
	load %r4, %r0, 1
	add	%r3, %r4, %r3
	store %r3, %r0, 1
	addi	%r3, %r4, 0
	blr
.Lfunc_end167:
	.size	create_tuple, .Lfunc_end167-create_tuple
                                        # -- End function
	.globl	create_array            # -- Begin function create_array
	.p2align	2
	.type	create_array,@function
create_array:                           # @create_array
# %bb.0:
	addi	%r5, %r3, 0
	load %r3, %r0, 1
	add	%r6, %r3, %r5
	store %r6, %r0, 1
	cmpdi %r5,1
	blt	.LBB168_7
	jump	.LBB168_1
.LBB168_1:                              # %.lr.ph.preheader
	li %r7, 0
	cmpdi %r5,7
	bgt	.LBB168_3
	jump	.LBB168_2
.LBB168_3:                              # %min.iters.checked
	li %r6, -8
	and	%r6, %r5, %r6
	cmpdi %r6,0
	beq	.LBB168_2
	jump	.LBB168_4
.LBB168_4:                              # %vector.ph
	addi	%r7, %r3, 16
	addi	%r8, %r6, 0
.LBB168_5:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %r7, 0
	store %r4, %r7, -16
	store %r4, %r7, 4
	store %r4, %r7, -12
	store %r4, %r7, 8
	store %r4, %r7, -8
	store %r4, %r7, 12
	store %r4, %r7, -4
	addi	%r7, %r7, 32
	addi	%r8, %r8, -8
	cmpdi %r8,0
	bne	.LBB168_5
	jump	.LBB168_6
.LBB168_6:                              # %middle.block
	cmpd %r6,%r5
	addi	%r7, %r6, 0
	bne	.LBB168_2
	jump	.LBB168_7
.LBB168_2:                              # %.lr.ph.preheader5
	sub	%r5, %r5, %r7
	srawi	%r6, %r7, 2
	add	%r6, %r3, %r6
	jump	.LBB168_8
.LBB168_8:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	store %r4, %r6, 0
	addi	%r6, %r6, 4
	addi	%r5, %r5, -1
	cmpdi %r5,0
	beq	.LBB168_7
	jump	.LBB168_8
.LBB168_7:                              # %._crit_edge
	blr
.Lfunc_end168:
	.size	create_array, .Lfunc_end168-create_array
                                        # -- End function

	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
