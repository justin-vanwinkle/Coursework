/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/justi_000/Dropbox/Justin/Academia/Current Courses/Digital/Labs/Exp4/exp4schTest.v";
static int ng1[] = {0, 0};
static int ng2[] = {8, 0};
static int ng3[] = {7, 0};
static int ng4[] = {1, 0};
static const char *ng5 = "Assertion Error 1";
static const char *ng6 = "Assertion Error 2";



static void Initial_26_0(char *t0)
{
    char t17[8];
    char t20[8];
    char t35[8];
    char t53[8];
    char t55[8];
    char t59[8];
    char t67[8];
    char t111[8];
    char t113[8];
    char t116[8];
    char t131[8];
    char t145[8];
    char t161[8];
    char t169[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t112;
    char *t114;
    char *t115;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    char *t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    char *t144;
    char *t146;
    char *t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    char *t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    char *t168;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    char *t173;
    char *t174;
    char *t175;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    char *t183;
    char *t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    int t193;
    int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    char *t201;
    unsigned int t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);

LAB4:    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4640);
    *((int *)t8) = t7;

LAB5:    t9 = (t0 + 4640);
    if (*((int *)t9) > 0)
        goto LAB6;

LAB7:
LAB1:    return;
LAB6:    xsi_set_current_line(33, ng0);

LAB8:    xsi_set_current_line(34, ng0);
    t10 = ((char*)((ng1)));
    t11 = (t0 + 1768);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 3);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4644);
    *((int *)t8) = t7;

LAB9:    t9 = (t0 + 4644);
    if (*((int *)t9) > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 32, t8, 3, t9, 32);
    t10 = (t0 + 1608);
    xsi_vlogvar_assign_value(t10, t17, 0, 0, 3);
    t2 = (t0 + 4640);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB5;

LAB10:    xsi_set_current_line(37, ng0);

LAB12:    xsi_set_current_line(38, ng0);
    t10 = (t0 + 2496);
    xsi_process_wait(t10, 1LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(42, ng0);
    t11 = (t0 + 1608);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 1768);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 3, t13, 3, t16, 3);
    t18 = (t0 + 1048U);
    t19 = *((char **)t18);
    memset(t20, 0, 8);
    t18 = (t17 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t17);
    t23 = *((unsigned int *)t19);
    t24 = (t22 ^ t23);
    t25 = *((unsigned int *)t18);
    t26 = *((unsigned int *)t21);
    t27 = (t25 ^ t26);
    t28 = (t24 | t27);
    t29 = *((unsigned int *)t18);
    t30 = *((unsigned int *)t21);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB15;

LAB14:    if (t31 != 0)
        goto LAB16;

LAB17:    memset(t35, 0, 8);
    t36 = (t20 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t36) != 0)
        goto LAB20;

LAB21:    t43 = (t35 + 4);
    t44 = *((unsigned int *)t35);
    t45 = *((unsigned int *)t43);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB22;

LAB23:    memcpy(t67, t35, 8);

LAB24:    t99 = (t67 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t67);
    t103 = (t102 & t101);
    t104 = (t103 != 0);
    if (t104 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 1768);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 3, t8, 3, t11, 3);
    t12 = (t0 + 1048U);
    t13 = *((char **)t12);
    memset(t20, 0, 8);
    t12 = (t17 + 4);
    t14 = (t13 + 4);
    t4 = *((unsigned int *)t17);
    t5 = *((unsigned int *)t13);
    t6 = (t4 ^ t5);
    t22 = *((unsigned int *)t12);
    t23 = *((unsigned int *)t14);
    t24 = (t22 ^ t23);
    t25 = (t6 | t24);
    t26 = *((unsigned int *)t12);
    t27 = *((unsigned int *)t14);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB69;

LAB68:    if (t28 != 0)
        goto LAB70;

LAB71:    t16 = (t20 + 4);
    t31 = *((unsigned int *)t16);
    t32 = (~(t31));
    t33 = *((unsigned int *)t20);
    t37 = (t33 & t32);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB72;

LAB73:
LAB74:
LAB39:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = ((char*)((ng4)));
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 32, t8, 3, t9, 32);
    t10 = (t0 + 1768);
    xsi_vlogvar_assign_value(t10, t17, 0, 0, 3);
    t2 = (t0 + 4644);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB9;

LAB15:    *((unsigned int *)t20) = 1;
    goto LAB17;

LAB16:    t34 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB17;

LAB18:    *((unsigned int *)t35) = 1;
    goto LAB21;

LAB20:    t42 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB21;

LAB22:    t47 = (t0 + 1608);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    t50 = (t0 + 1768);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memset(t53, 0, 8);
    xsi_vlog_unsigned_add(t53, 32, t49, 3, t52, 3);
    t54 = ((char*)((ng3)));
    memset(t55, 0, 8);
    t56 = (t53 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB26;

LAB25:    t57 = (t54 + 4);
    if (*((unsigned int *)t57) != 0)
        goto LAB26;

LAB29:    if (*((unsigned int *)t53) > *((unsigned int *)t54))
        goto LAB27;

LAB28:    memset(t59, 0, 8);
    t60 = (t55 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t55);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t60) != 0)
        goto LAB32;

LAB33:    t68 = *((unsigned int *)t35);
    t69 = *((unsigned int *)t59);
    t70 = (t68 & t69);
    *((unsigned int *)t67) = t70;
    t71 = (t35 + 4);
    t72 = (t59 + 4);
    t73 = (t67 + 4);
    t74 = *((unsigned int *)t71);
    t75 = *((unsigned int *)t72);
    t76 = (t74 | t75);
    *((unsigned int *)t73) = t76;
    t77 = *((unsigned int *)t73);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB34;

LAB35:
LAB36:    goto LAB24;

LAB26:    t58 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB28;

LAB27:    *((unsigned int *)t55) = 1;
    goto LAB28;

LAB30:    *((unsigned int *)t59) = 1;
    goto LAB33;

LAB32:    t66 = (t59 + 4);
    *((unsigned int *)t59) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB33;

LAB34:    t79 = *((unsigned int *)t67);
    t80 = *((unsigned int *)t73);
    *((unsigned int *)t67) = (t79 | t80);
    t81 = (t35 + 4);
    t82 = (t59 + 4);
    t83 = *((unsigned int *)t35);
    t84 = (~(t83));
    t85 = *((unsigned int *)t81);
    t86 = (~(t85));
    t87 = *((unsigned int *)t59);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (~(t89));
    t91 = (t84 & t86);
    t92 = (t88 & t90);
    t93 = (~(t91));
    t94 = (~(t92));
    t95 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t95 & t93);
    t96 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t96 & t94);
    t97 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t97 & t93);
    t98 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t98 & t94);
    goto LAB36;

LAB37:    xsi_set_current_line(42, ng0);

LAB40:    xsi_set_current_line(43, ng0);
    t105 = (t0 + 1608);
    t106 = (t105 + 56U);
    t107 = *((char **)t106);
    t108 = (t0 + 1768);
    t109 = (t108 + 56U);
    t110 = *((char **)t109);
    memset(t111, 0, 8);
    xsi_vlog_unsigned_add(t111, 32, t107, 3, t110, 3);
    t112 = ((char*)((ng2)));
    memset(t113, 0, 8);
    xsi_vlog_unsigned_minus(t113, 32, t111, 32, t112, 32);
    t114 = (t0 + 1048U);
    t115 = *((char **)t114);
    memset(t116, 0, 8);
    t114 = (t113 + 4);
    t117 = (t115 + 4);
    t118 = *((unsigned int *)t113);
    t119 = *((unsigned int *)t115);
    t120 = (t118 ^ t119);
    t121 = *((unsigned int *)t114);
    t122 = *((unsigned int *)t117);
    t123 = (t121 ^ t122);
    t124 = (t120 | t123);
    t125 = *((unsigned int *)t114);
    t126 = *((unsigned int *)t117);
    t127 = (t125 | t126);
    t128 = (~(t127));
    t129 = (t124 & t128);
    if (t129 != 0)
        goto LAB44;

LAB41:    if (t127 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t116) = 1;

LAB44:    memset(t131, 0, 8);
    t132 = (t116 + 4);
    t133 = *((unsigned int *)t132);
    t134 = (~(t133));
    t135 = *((unsigned int *)t116);
    t136 = (t135 & t134);
    t137 = (t136 & 1U);
    if (t137 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t132) != 0)
        goto LAB47;

LAB48:    t139 = (t131 + 4);
    t140 = *((unsigned int *)t131);
    t141 = *((unsigned int *)t139);
    t142 = (t140 || t141);
    if (t142 > 0)
        goto LAB49;

LAB50:    memcpy(t169, t131, 8);

LAB51:    t201 = (t169 + 4);
    t202 = *((unsigned int *)t201);
    t203 = (~(t202));
    t204 = *((unsigned int *)t169);
    t205 = (t204 & t203);
    t206 = (t205 != 0);
    if (t206 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(45, ng0);

LAB67:    xsi_set_current_line(46, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);

LAB65:    goto LAB39;

LAB43:    t130 = (t116 + 4);
    *((unsigned int *)t116) = 1;
    *((unsigned int *)t130) = 1;
    goto LAB44;

LAB45:    *((unsigned int *)t131) = 1;
    goto LAB48;

LAB47:    t138 = (t131 + 4);
    *((unsigned int *)t131) = 1;
    *((unsigned int *)t138) = 1;
    goto LAB48;

LAB49:    t143 = (t0 + 1208U);
    t144 = *((char **)t143);
    t143 = ((char*)((ng4)));
    memset(t145, 0, 8);
    t146 = (t144 + 4);
    t147 = (t143 + 4);
    t148 = *((unsigned int *)t144);
    t149 = *((unsigned int *)t143);
    t150 = (t148 ^ t149);
    t151 = *((unsigned int *)t146);
    t152 = *((unsigned int *)t147);
    t153 = (t151 ^ t152);
    t154 = (t150 | t153);
    t155 = *((unsigned int *)t146);
    t156 = *((unsigned int *)t147);
    t157 = (t155 | t156);
    t158 = (~(t157));
    t159 = (t154 & t158);
    if (t159 != 0)
        goto LAB55;

LAB52:    if (t157 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t145) = 1;

LAB55:    memset(t161, 0, 8);
    t162 = (t145 + 4);
    t163 = *((unsigned int *)t162);
    t164 = (~(t163));
    t165 = *((unsigned int *)t145);
    t166 = (t165 & t164);
    t167 = (t166 & 1U);
    if (t167 != 0)
        goto LAB56;

LAB57:    if (*((unsigned int *)t162) != 0)
        goto LAB58;

LAB59:    t170 = *((unsigned int *)t131);
    t171 = *((unsigned int *)t161);
    t172 = (t170 & t171);
    *((unsigned int *)t169) = t172;
    t173 = (t131 + 4);
    t174 = (t161 + 4);
    t175 = (t169 + 4);
    t176 = *((unsigned int *)t173);
    t177 = *((unsigned int *)t174);
    t178 = (t176 | t177);
    *((unsigned int *)t175) = t178;
    t179 = *((unsigned int *)t175);
    t180 = (t179 != 0);
    if (t180 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB51;

LAB54:    t160 = (t145 + 4);
    *((unsigned int *)t145) = 1;
    *((unsigned int *)t160) = 1;
    goto LAB55;

LAB56:    *((unsigned int *)t161) = 1;
    goto LAB59;

LAB58:    t168 = (t161 + 4);
    *((unsigned int *)t161) = 1;
    *((unsigned int *)t168) = 1;
    goto LAB59;

LAB60:    t181 = *((unsigned int *)t169);
    t182 = *((unsigned int *)t175);
    *((unsigned int *)t169) = (t181 | t182);
    t183 = (t131 + 4);
    t184 = (t161 + 4);
    t185 = *((unsigned int *)t131);
    t186 = (~(t185));
    t187 = *((unsigned int *)t183);
    t188 = (~(t187));
    t189 = *((unsigned int *)t161);
    t190 = (~(t189));
    t191 = *((unsigned int *)t184);
    t192 = (~(t191));
    t193 = (t186 & t188);
    t194 = (t190 & t192);
    t195 = (~(t193));
    t196 = (~(t194));
    t197 = *((unsigned int *)t175);
    *((unsigned int *)t175) = (t197 & t195);
    t198 = *((unsigned int *)t175);
    *((unsigned int *)t175) = (t198 & t196);
    t199 = *((unsigned int *)t169);
    *((unsigned int *)t169) = (t199 & t195);
    t200 = *((unsigned int *)t169);
    *((unsigned int *)t169) = (t200 & t196);
    goto LAB62;

LAB63:    xsi_set_current_line(43, ng0);

LAB66:    goto LAB65;

LAB69:    *((unsigned int *)t20) = 1;
    goto LAB71;

LAB70:    t15 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB71;

LAB72:    xsi_set_current_line(49, ng0);

LAB75:    xsi_set_current_line(50, ng0);
    xsi_vlogfile_write(1, 0, 0, ng6, 1, t0);
    goto LAB74;

}


extern void work_m_00000000003789922505_2266325197_init()
{
	static char *pe[] = {(void *)Initial_26_0};
	xsi_register_didat("work_m_00000000003789922505_2266325197", "isim/exp4sch_exp4sch_sch_tb_isim_beh.exe.sim/work/m_00000000003789922505_2266325197.didat");
	xsi_register_executes(pe);
}
