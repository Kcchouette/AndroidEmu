     drmd .req r5

    ;@ word variables

    .equ m68k_context,        0
    .equ m68k_run,            m68k_context+4
    .equ m68k_set_irq,        m68k_run+4
    .equ m68k_aim,            m68k_set_irq+4
    .equ m68k_total,          m68k_aim+4
    .equ z80_context,         m68k_total+4   
    .equ z80_run,             z80_context+4
    .equ z80_set_irq,         z80_run+4
    .equ z80_reset,           z80_set_irq+4
    .equ render_line,         z80_reset+4
    .equ frame_buffer,        render_line+4
    .equ fm_write,            frame_buffer+4
    .equ fm_read,             fm_write+4
    .equ psg_write,           fm_read+4
    .equ cart_rom,            psg_write+4
    .equ work_ram,            cart_rom+4
    .equ zram,                work_ram+4
    .equ vram,                zram+4
    .equ cram,                vram+4
    .equ local_pal,            cram+4
    .equ vsram,               local_pal+4   
    .equ zbank,               vsram+4 
    .equ romsize,             zbank+4 ;@ 23x4=92
    ;@ hword variables
    .equ spare5C,             romsize+4
    .equ sample_count,        spare5C+2
    .equ lines_per_frame,     sample_count+2
    .equ vdp_line,            lines_per_frame+2
    .equ vdp_status,          vdp_line+2
    .equ vdp_addr,            vdp_status+2
    .equ vdp_addr_latch,      vdp_addr+2    ;@ 5x2=10
    .equ gamma,               vdp_addr_latch+2
    .equ cpl_m68k,            gamma+2
    .equ cpl_z80,             cpl_m68k+2
    ;@ byte variables

    .equ spare70,                 cpl_z80+2
    .equ padselect,           spare70+1
    .equ zbusreq,             padselect+1
    .equ zbusack,             zbusreq+1
    .equ zreset,              zbusack+1
    .equ vdp_reg0,            zreset+1
    .equ vdp_reg1,            vdp_reg0+1
    .equ vdp_reg2,            vdp_reg1+1
    .equ vdp_reg3,            vdp_reg2+1
    .equ vdp_reg4,            vdp_reg3+1
    .equ vdp_reg5,            vdp_reg4+1
    .equ vdp_reg6,            vdp_reg5+1
    .equ vdp_reg7,            vdp_reg6+1
    .equ vdp_reg8,            vdp_reg7+1
    .equ vdp_reg9,            vdp_reg8+1
    .equ vdp_reg10,           vdp_reg9+1
    .equ vdp_reg11,           vdp_reg10+1
    .equ vdp_reg12,           vdp_reg11+1
    .equ vdp_reg13,           vdp_reg12+1
    .equ vdp_reg14,           vdp_reg13+1
    .equ vdp_reg15,           vdp_reg14+1
    .equ vdp_reg16,           vdp_reg15+1
    .equ vdp_reg17,           vdp_reg16+1
    .equ vdp_reg18,           vdp_reg17+1
    .equ vdp_reg19,           vdp_reg18+1
    .equ vdp_reg20,           vdp_reg19+1
    .equ vdp_reg21,           vdp_reg20+1
    .equ vdp_reg22,           vdp_reg21+1
    .equ vdp_reg23,           vdp_reg22+1
    .equ vdp_reg24,           vdp_reg23+1
    .equ vdp_reg25,           vdp_reg24+1
    .equ vdp_reg26,           vdp_reg25+1
    .equ vdp_reg27,           vdp_reg26+1
    .equ vdp_reg28,           vdp_reg27+1
    .equ vdp_reg29,           vdp_reg28+1
    .equ vdp_reg30,           vdp_reg29+1
    .equ vdp_reg31,           vdp_reg30+1
    .equ vdp_reg32,           vdp_reg31+1
    .equ vdp_counter,         vdp_reg32+1
    .equ hint_pending,        vdp_counter+1
    .equ vint_pending,        hint_pending+1
    .equ vdp_pending,         vint_pending+1
    .equ vdp_code,            vdp_pending+1
    .equ vdp_dma_fill,        vdp_code+1
    .equ pad_1_state,         vdp_dma_fill+1
    .equ pad_1_com,           pad_1_state+1
    .equ pad_2_state,         pad_1_com+1
    .equ pad_2_com,           pad_2_state+1
    .equ sram_start,          pad_2_com+1
    .equ sram_end,            sram_start+4
    .equ sram,                sram_end+4
    .equ region,              sram+4
	.equ sram_flags,          region+1
    .equ pad_1_type,             sram_flags+1
	.equ pad_2_type,             pad_1_type+1
	.equ cpl_fm,              pad_2_type+1
	.equ genesis_rom_banks,   cpl_fm+4
	.equ pad, genesis_rom_banks+16
	.equ pad_1_counter,  pad+4
	.equ pad_1_delay,  pad_1_counter+1
	.equ pad_2_counter, pad_1_delay+1
	.equ pad_2_delay,  pad_2_counter+1

    
    
    