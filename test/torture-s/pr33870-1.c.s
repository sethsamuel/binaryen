	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr33870-1.c"
	.section	.text.sort_pagelist,"ax",@progbits
	.hidden	sort_pagelist
	.globl	sort_pagelist
	.type	sort_pagelist,@function
sort_pagelist:                          # @sort_pagelist
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push48=, 0
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 160
	i32.sub 	$push66=, $pop46, $pop47
	i32.store	$push0=, __stack_pointer($pop48), $pop66
	i32.const	$push67=, 0
	i32.const	$push1=, 100
	i32.call	$1=, memset@FUNCTION, $pop0, $pop67, $pop1
	i32.const	$12=, 0
	block
	i32.eqz 	$push129=, $0
	br_if   	0, $pop129      # 0: down to label0
# BB#1:                                 # %while.body.lr.ph
	i32.const	$push58=, 112
	i32.add 	$push59=, $1, $pop58
	i32.const	$push68=, 32
	i32.add 	$4=, $pop59, $pop68
	i32.const	$push14=, 96
	i32.add 	$6=, $1, $pop14
.LBB0_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #     Child Loop BB0_22 Depth 2
	loop                            # label1:
	copy_local	$push74=, $0
	tee_local	$push73=, $8=, $pop74
	i32.const	$push72=, 32
	i32.add 	$push71=, $pop73, $pop72
	tee_local	$push70=, $10=, $pop71
	i32.load	$0=, 0($pop70)
	i32.const	$push69=, 0
	i32.store	$2=, 0($10), $pop69
	i32.const	$7=, 0
.LBB0_3:                                # %for.body
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	block
	block
	block
	block
	loop                            # label7:
	i32.const	$push79=, 2
	i32.shl 	$push2=, $7, $pop79
	i32.add 	$push78=, $1, $pop2
	tee_local	$push77=, $5=, $pop78
	i32.load	$push76=, 0($pop77)
	tee_local	$push75=, $10=, $pop76
	i32.eqz 	$push130=, $pop75
	br_if   	2, $pop130      # 2: down to label6
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB0_3 Depth=2
	i32.store	$3=, xx($2), $4
	block
	block
	block
	i32.eqz 	$push131=, $8
	br_if   	0, $pop131      # 0: down to label11
# BB#5:                                 # %while.body.i.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	i32.const	$push64=, 112
	i32.add 	$push65=, $1, $pop64
	copy_local	$9=, $pop65
.LBB0_6:                                # %while.body.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	loop                            # label12:
	block
	block
	i32.load	$push4=, 4($10)
	i32.load	$push3=, 4($8)
	i32.ge_u	$push5=, $pop4, $pop3
	br_if   	0, $pop5        # 0: down to label15
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB0_6 Depth=3
	i32.const	$push83=, 32
	i32.add 	$push8=, $9, $pop83
	i32.store	$push82=, 0($pop8), $10
	tee_local	$push81=, $10=, $pop82
	i32.const	$push80=, 32
	i32.add 	$push9=, $pop81, $pop80
	i32.load	$12=, 0($pop9)
	copy_local	$11=, $8
	copy_local	$9=, $10
	br      	1               # 1: down to label14
.LBB0_8:                                # %if.else.i
                                        #   in Loop: Header=BB0_6 Depth=3
	end_block                       # label15:
	i32.const	$push87=, 32
	i32.add 	$push6=, $9, $pop87
	i32.store	$push86=, 0($pop6), $8
	tee_local	$push85=, $8=, $pop86
	i32.const	$push84=, 32
	i32.add 	$push7=, $pop85, $pop84
	i32.load	$11=, 0($pop7)
	copy_local	$12=, $10
	copy_local	$9=, $8
.LBB0_9:                                # %if.end.i
                                        #   in Loop: Header=BB0_6 Depth=3
	end_block                       # label14:
	i32.load	$push10=, 0($3)
	i32.load	$push11=, 0($pop10)
	i32.store	$drop=, vx($2), $pop11
	i32.eqz 	$push132=, $12
	br_if   	1, $pop132      # 1: down to label13
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB0_6 Depth=3
	copy_local	$8=, $11
	copy_local	$10=, $12
	br_if   	0, $11          # 0: up to label12
.LBB0_11:                               # %while.end.i
                                        #   in Loop: Header=BB0_3 Depth=2
	end_loop                        # label13:
	i32.const	$push88=, 32
	i32.add 	$8=, $9, $pop88
	i32.eqz 	$push133=, $12
	br_if   	1, $pop133      # 1: down to label10
# BB#12:                                # %if.then14.i
                                        #   in Loop: Header=BB0_3 Depth=2
	i32.store	$drop=, 0($8), $12
	br      	2               # 2: down to label9
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	end_block                       # label11:
	copy_local	$push43=, $3
	copy_local	$push44=, $10
	i32.store	$drop=, 0($pop43), $pop44
	br      	1               # 1: down to label9
.LBB0_14:                               # %if.else17.i
                                        #   in Loop: Header=BB0_3 Depth=2
	end_block                       # label10:
	block
	i32.eqz 	$push134=, $11
	br_if   	0, $pop134      # 0: down to label16
# BB#15:                                # %if.then19.i
                                        #   in Loop: Header=BB0_3 Depth=2
	i32.store	$drop=, 0($8), $11
	br      	1               # 1: down to label9
.LBB0_16:                               # %if.else22.i
                                        #   in Loop: Header=BB0_3 Depth=2
	end_block                       # label16:
	i32.store	$drop=, 0($8), $2
.LBB0_17:                               # %merge_pagelist.exit
                                        #   in Loop: Header=BB0_3 Depth=2
	end_block                       # label9:
	i32.load	$8=, 0($3)
	i32.store	$10=, 0($5), $2
	i32.const	$push92=, 1
	i32.add 	$push91=, $7, $pop92
	tee_local	$push90=, $7=, $pop91
	i32.const	$push89=, 24
	i32.lt_s	$push12=, $pop90, $pop89
	br_if   	0, $pop12       # 0: up to label7
# BB#18:                                # %for.end
                                        #   in Loop: Header=BB0_2 Depth=1
	end_loop                        # label8:
	i32.const	$push93=, 24
	i32.ne  	$push13=, $7, $pop93
	br_if   	3, $pop13       # 3: down to label3
# BB#19:                                # %if.then9
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.load	$9=, 0($6)
	i32.store	$2=, xx($10), $3
	i32.ne  	$5=, $8, $10
	i32.ne  	$7=, $9, $10
	i32.const	$push60=, 112
	i32.add 	$push61=, $1, $pop60
	copy_local	$3=, $pop61
	i32.eqz 	$push135=, $8
	br_if   	1, $pop135      # 1: down to label5
# BB#20:                                # %if.then9
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.eqz 	$push136=, $9
	br_if   	1, $pop136      # 1: down to label5
# BB#21:                                # %while.body.i89.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push62=, 112
	i32.add 	$push63=, $1, $pop62
	copy_local	$3=, $pop63
.LBB0_22:                               # %while.body.i89
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop                            # label17:
	block
	block
	i32.load	$push16=, 4($9)
	i32.load	$push15=, 4($8)
	i32.ge_u	$push17=, $pop16, $pop15
	br_if   	0, $pop17       # 0: down to label20
# BB#23:                                # %if.then.i91
                                        #   in Loop: Header=BB0_22 Depth=2
	i32.const	$push97=, 32
	i32.add 	$push20=, $3, $pop97
	i32.store	$push96=, 0($pop20), $9
	tee_local	$push95=, $9=, $pop96
	i32.const	$push94=, 32
	i32.add 	$push21=, $pop95, $pop94
	i32.load	$12=, 0($pop21)
	copy_local	$11=, $8
	copy_local	$3=, $9
	br      	1               # 1: down to label19
.LBB0_24:                               # %if.else.i93
                                        #   in Loop: Header=BB0_22 Depth=2
	end_block                       # label20:
	i32.const	$push101=, 32
	i32.add 	$push18=, $3, $pop101
	i32.store	$push100=, 0($pop18), $8
	tee_local	$push99=, $8=, $pop100
	i32.const	$push98=, 32
	i32.add 	$push19=, $pop99, $pop98
	i32.load	$11=, 0($pop19)
	copy_local	$12=, $9
	copy_local	$3=, $8
.LBB0_25:                               # %if.end.i100
                                        #   in Loop: Header=BB0_22 Depth=2
	end_block                       # label19:
	i32.load	$push22=, 0($2)
	i32.load	$push23=, 0($pop22)
	i32.store	$drop=, vx($10), $pop23
	i32.ne  	$5=, $11, $10
	i32.ne  	$7=, $12, $10
	i32.eqz 	$push137=, $12
	br_if   	4, $pop137      # 4: down to label4
# BB#26:                                # %if.end.i100
                                        #   in Loop: Header=BB0_22 Depth=2
	copy_local	$8=, $11
	copy_local	$9=, $12
	br_if   	0, $11          # 0: up to label17
	br      	4               # 4: down to label4
.LBB0_27:                               # %for.end.thread
                                        #   in Loop: Header=BB0_2 Depth=1
	end_loop                        # label18:
	end_block                       # label6:
	i32.store	$drop=, 0($5), $8
	br      	2               # 2: down to label3
.LBB0_28:                               #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label5:
	copy_local	$12=, $9
	copy_local	$11=, $8
.LBB0_29:                               # %while.end.i107
                                        #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label4:
	block
	block
	i32.eqz 	$push138=, $7
	br_if   	0, $pop138      # 0: down to label22
# BB#30:                                # %if.then14.i108
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push102=, 32
	i32.add 	$push26=, $3, $pop102
	i32.store	$drop=, 0($pop26), $12
	br      	1               # 1: down to label21
.LBB0_31:                               # %if.else17.i109
                                        #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label22:
	block
	i32.eqz 	$push139=, $5
	br_if   	0, $pop139      # 0: down to label23
# BB#32:                                # %if.then19.i110
                                        #   in Loop: Header=BB0_2 Depth=1
	i32.const	$push103=, 32
	i32.add 	$push25=, $3, $pop103
	i32.store	$drop=, 0($pop25), $11
	br      	1               # 1: down to label21
.LBB0_33:                               # %if.else22.i111
                                        #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label23:
	i32.const	$push104=, 32
	i32.add 	$push24=, $3, $pop104
	i32.store	$drop=, 0($pop24), $10
.LBB0_34:                               # %merge_pagelist.exit112
                                        #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label21:
	i32.load	$push27=, 0($2)
	i32.store	$drop=, 0($6), $pop27
.LBB0_35:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_2 Depth=1
	end_block                       # label3:
	br_if   	0, $0           # 0: up to label1
# BB#36:                                # %while.end.loopexit
	end_loop                        # label2:
	i32.load	$12=, 0($1)
.LBB0_37:                               # %while.end
	end_block                       # label0:
	i32.const	$push52=, 112
	i32.add 	$push53=, $1, $pop52
	i32.const	$push105=, 32
	i32.add 	$4=, $pop53, $pop105
	i32.const	$5=, 1
.LBB0_38:                               # %for.body17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
	loop                            # label24:
	i32.const	$push109=, 2
	i32.shl 	$push28=, $5, $pop109
	i32.add 	$push29=, $1, $pop28
	i32.load	$11=, 0($pop29)
	i32.const	$push108=, 0
	i32.store	$3=, xx($pop108), $4
	i32.const	$push107=, 0
	i32.ne  	$2=, $12, $pop107
	i32.const	$push106=, 0
	i32.ne  	$7=, $11, $pop106
	i32.const	$push54=, 112
	i32.add 	$push55=, $1, $pop54
	copy_local	$9=, $pop55
	block
	block
	i32.eqz 	$push140=, $12
	br_if   	0, $pop140      # 0: down to label27
# BB#39:                                # %for.body17
                                        #   in Loop: Header=BB0_38 Depth=1
	i32.eqz 	$push141=, $11
	br_if   	0, $pop141      # 0: down to label27
# BB#40:                                # %while.body.i54.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	i32.const	$push56=, 112
	i32.add 	$push57=, $1, $pop56
	copy_local	$9=, $pop57
.LBB0_41:                               # %while.body.i54
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop                            # label28:
	block
	block
	i32.load	$push31=, 4($12)
	i32.load	$push30=, 4($11)
	i32.ge_u	$push32=, $pop31, $pop30
	br_if   	0, $pop32       # 0: down to label31
# BB#42:                                # %if.then.i56
                                        #   in Loop: Header=BB0_41 Depth=2
	i32.const	$push113=, 32
	i32.add 	$push35=, $9, $pop113
	i32.store	$push112=, 0($pop35), $12
	tee_local	$push111=, $12=, $pop112
	i32.const	$push110=, 32
	i32.add 	$push36=, $pop111, $pop110
	i32.load	$8=, 0($pop36)
	copy_local	$10=, $11
	copy_local	$9=, $12
	br      	1               # 1: down to label30
.LBB0_43:                               # %if.else.i58
                                        #   in Loop: Header=BB0_41 Depth=2
	end_block                       # label31:
	i32.const	$push117=, 32
	i32.add 	$push33=, $9, $pop117
	i32.store	$push116=, 0($pop33), $11
	tee_local	$push115=, $11=, $pop116
	i32.const	$push114=, 32
	i32.add 	$push34=, $pop115, $pop114
	i32.load	$10=, 0($pop34)
	copy_local	$8=, $12
	copy_local	$9=, $11
.LBB0_44:                               # %if.end.i65
                                        #   in Loop: Header=BB0_41 Depth=2
	end_block                       # label30:
	i32.const	$push120=, 0
	i32.load	$push37=, 0($3)
	i32.load	$push38=, 0($pop37)
	i32.store	$drop=, vx($pop120), $pop38
	i32.const	$push119=, 0
	i32.ne  	$7=, $10, $pop119
	i32.const	$push118=, 0
	i32.ne  	$2=, $8, $pop118
	i32.eqz 	$push142=, $8
	br_if   	3, $pop142      # 3: down to label26
# BB#45:                                # %if.end.i65
                                        #   in Loop: Header=BB0_41 Depth=2
	copy_local	$11=, $10
	copy_local	$12=, $8
	br_if   	0, $10          # 0: up to label28
	br      	3               # 3: down to label26
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=1
	end_loop                        # label29:
	end_block                       # label27:
	copy_local	$8=, $12
	copy_local	$10=, $11
.LBB0_47:                               # %while.end.i72
                                        #   in Loop: Header=BB0_38 Depth=1
	end_block                       # label26:
	block
	block
	i32.eqz 	$push143=, $2
	br_if   	0, $pop143      # 0: down to label33
# BB#48:                                # %if.then14.i73
                                        #   in Loop: Header=BB0_38 Depth=1
	i32.const	$push121=, 32
	i32.add 	$push41=, $9, $pop121
	i32.store	$drop=, 0($pop41), $8
	br      	1               # 1: down to label32
.LBB0_49:                               # %if.else17.i74
                                        #   in Loop: Header=BB0_38 Depth=1
	end_block                       # label33:
	block
	i32.eqz 	$push144=, $7
	br_if   	0, $pop144      # 0: down to label34
# BB#50:                                # %if.then19.i75
                                        #   in Loop: Header=BB0_38 Depth=1
	i32.const	$push122=, 32
	i32.add 	$push40=, $9, $pop122
	i32.store	$drop=, 0($pop40), $10
	br      	1               # 1: down to label32
.LBB0_51:                               # %if.else22.i76
                                        #   in Loop: Header=BB0_38 Depth=1
	end_block                       # label34:
	i32.const	$push124=, 32
	i32.add 	$push39=, $9, $pop124
	i32.const	$push123=, 0
	i32.store	$drop=, 0($pop39), $pop123
.LBB0_52:                               # %merge_pagelist.exit77
                                        #   in Loop: Header=BB0_38 Depth=1
	end_block                       # label32:
	i32.load	$12=, 0($3)
	i32.const	$push128=, 1
	i32.add 	$push127=, $5, $pop128
	tee_local	$push126=, $5=, $pop127
	i32.const	$push125=, 25
	i32.ne  	$push42=, $pop126, $pop125
	br_if   	0, $pop42       # 0: up to label24
# BB#53:                                # %for.end22
	end_loop                        # label25:
	i32.const	$push51=, 0
	i32.const	$push49=, 160
	i32.add 	$push50=, $1, $pop49
	i32.store	$drop=, __stack_pointer($pop51), $pop50
	copy_local	$push145=, $12
                                        # fallthrough-return: $pop145
	.endfunc
.Lfunc_end0:
	.size	sort_pagelist, .Lfunc_end0-sort_pagelist

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 224
	i32.sub 	$push35=, $pop29, $pop30
	i32.store	$push40=, __stack_pointer($pop31), $pop35
	tee_local	$push39=, $1=, $pop40
	i32.const	$push2=, 32
	i32.add 	$push3=, $pop39, $pop2
	i32.const	$push0=, 44
	i32.add 	$push1=, $1, $pop0
	i32.store	$drop=, 0($pop3), $pop1
	i32.const	$push4=, 48
	i32.add 	$push5=, $1, $pop4
	i32.const	$push6=, 4
	i32.store	$drop=, 0($pop5), $pop6
	i32.const	$push9=, 76
	i32.add 	$push10=, $1, $pop9
	i32.const	$push7=, 88
	i32.add 	$push8=, $1, $pop7
	i32.store	$drop=, 0($pop10), $pop8
	i32.const	$push11=, 92
	i32.add 	$push12=, $1, $pop11
	i32.const	$push13=, 1
	i32.store	$drop=, 0($pop12), $pop13
	i32.const	$push16=, 120
	i32.add 	$push17=, $1, $pop16
	i32.const	$push14=, 132
	i32.add 	$push15=, $1, $pop14
	i32.store	$drop=, 0($pop17), $pop15
	i32.const	$push18=, 136
	i32.add 	$push19=, $1, $pop18
	i32.const	$push20=, 3
	i32.store	$drop=, 0($pop19), $pop20
	i32.const	$push21=, 5
	i32.store	$drop=, 4($1), $pop21
	i32.const	$push22=, 164
	i32.add 	$push23=, $1, $pop22
	i32.const	$push24=, 0
	i32.store	$0=, 0($pop23), $pop24
	block
	i32.call	$push38=, sort_pagelist@FUNCTION, $1
	tee_local	$push37=, $2=, $pop38
	i32.const	$push36=, 32
	i32.add 	$push25=, $2, $pop36
	i32.load	$push26=, 0($pop25)
	i32.eq  	$push27=, $pop37, $pop26
	br_if   	0, $pop27       # 0: down to label35
# BB#1:                                 # %if.end
	i32.const	$push34=, 0
	i32.const	$push32=, 224
	i32.add 	$push33=, $1, $pop32
	i32.store	$drop=, __stack_pointer($pop34), $pop33
	return  	$0
.LBB1_2:                                # %if.then
	end_block                       # label35:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	xx                      # @xx
	.type	xx,@object
	.section	.bss.xx,"aw",@nobits
	.globl	xx
	.p2align	2
xx:
	.int32	0
	.size	xx, 4

	.hidden	vx                      # @vx
	.type	vx,@object
	.section	.bss.vx,"aw",@nobits
	.globl	vx
	.p2align	2
vx:
	.int32	0                       # 0x0
	.size	vx, 4


	.ident	"clang version 4.0.0 "
	.functype	abort, void
