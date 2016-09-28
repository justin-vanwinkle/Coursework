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
static const char *ng0 = "C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp6/exp6sch/test.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static int ng3[] = {2, 0};
static const char *ng4 = "Incorrect output for F = 1";
static int ng5[] = {1, 0, 0, 0};
static const char *ng6 = "Incorrect output for F = 0";
static const char *ng7 = "Incorrect output for G = 1";
static const char *ng8 = "Incorrect output for G = 0";



static void Initial_35_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(35, ng0);

LAB2:    xsi_set_current_line(36, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1608);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(41, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(42, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);

LAB1:    return;
}

static void Always_45_1(char *t0)
{
    char t10[8];
    char t32[8];
    char t58[8];
    char t74[8];
    char t106[8];
    char t120[8];
    char t136[8];
    char t144[8];
    char t182[16];
    char t185[16];
    char t191[8];
    char t199[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    int t98;
    int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t119;
    char *t121;
    char *t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    char *t135;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    char *t148;
    char *t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    char *t158;
    char *t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    int t168;
    int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    unsigned int t181;
    char *t183;
    char *t184;
    char *t186;
    unsigned int t187;
    unsigned int t188;
    unsigned int t189;
    char *t190;
    char *t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    char *t203;
    char *t204;
    char *t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    char *t213;
    char *t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    int t223;
    int t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    char *t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    char *t237;
    char *t238;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5796);
    *((int *)t8) = t7;

LAB5:    t9 = (t0 + 5796);
    if (*((int *)t9) > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5808);
    *((int *)t8) = t7;

LAB224:    t9 = (t0 + 5808);
    if (*((int *)t9) > 0)
        goto LAB225;

LAB226:    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);

LAB8:    xsi_set_current_line(47, ng0);
    t11 = (t0 + 1608);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB12;

LAB10:    if (*((unsigned int *)t14) == 0)
        goto LAB9;

LAB11:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB12:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB14;

LAB13:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 1608);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    memset(t10, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB18;

LAB16:    if (*((unsigned int *)t9) == 0)
        goto LAB15;

LAB17:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;

LAB18:    t12 = (t10 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB20;

LAB19:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t27 & 1U);
    t14 = (t0 + 2248);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5800);
    *((int *)t8) = t7;

LAB21:    t9 = (t0 + 5800);
    if (*((int *)t9) > 0)
        goto LAB22;

LAB23:    t2 = (t0 + 5796);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB5;

LAB9:    *((unsigned int *)t10) = 1;
    goto LAB12;

LAB14:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB13;

LAB15:    *((unsigned int *)t10) = 1;
    goto LAB18;

LAB20:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t24 | t25);
    goto LAB19;

LAB22:    xsi_set_current_line(49, ng0);

LAB24:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 1768);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB28;

LAB26:    if (*((unsigned int *)t14) == 0)
        goto LAB25;

LAB27:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB28:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB30;

LAB29:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 1768);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    memset(t10, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t9) == 0)
        goto LAB31;

LAB33:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;

LAB34:    t12 = (t10 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB36;

LAB35:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t27 & 1U);
    t14 = (t0 + 2408);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 1);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5804);
    *((int *)t8) = t7;

LAB37:    t9 = (t0 + 5804);
    if (*((int *)t9) > 0)
        goto LAB38;

LAB39:    t2 = (t0 + 5800);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB21;

LAB25:    *((unsigned int *)t10) = 1;
    goto LAB28;

LAB30:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB29;

LAB31:    *((unsigned int *)t10) = 1;
    goto LAB34;

LAB36:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t24 | t25);
    goto LAB35;

LAB38:    xsi_set_current_line(52, ng0);

LAB40:    xsi_set_current_line(53, ng0);
    t11 = (t0 + 1928);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t14) == 0)
        goto LAB41;

LAB43:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB44:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB46;

LAB45:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 1928);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    memset(t10, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB50;

LAB48:    if (*((unsigned int *)t9) == 0)
        goto LAB47;

LAB49:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;

LAB50:    t12 = (t10 + 4);
    t13 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB52;

LAB51:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t27 & 1U);
    t14 = (t0 + 2568);
    xsi_vlogvar_assign_value(t14, t10, 0, 0, 1);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3544);
    xsi_process_wait(t2, 1LL);
    *((char **)t1) = &&LAB53;

LAB1:    return;
LAB41:    *((unsigned int *)t10) = 1;
    goto LAB44;

LAB46:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB45;

LAB47:    *((unsigned int *)t10) = 1;
    goto LAB50;

LAB52:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t13);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t12);
    t25 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t24 | t25);
    goto LAB51;

LAB53:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 1768);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB57;

LAB55:    if (*((unsigned int *)t13) == 0)
        goto LAB54;

LAB56:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB57:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB59;

LAB58:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 1U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 | t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB60;

LAB61:
LAB62:    t54 = (t0 + 1928);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng1)));
    memset(t58, 0, 8);
    t59 = (t56 + 4);
    t60 = (t57 + 4);
    t61 = *((unsigned int *)t56);
    t62 = *((unsigned int *)t57);
    t63 = (t61 ^ t62);
    t64 = *((unsigned int *)t59);
    t65 = *((unsigned int *)t60);
    t66 = (t64 ^ t65);
    t67 = (t63 | t66);
    t68 = *((unsigned int *)t59);
    t69 = *((unsigned int *)t60);
    t70 = (t68 | t69);
    t71 = (~(t70));
    t72 = (t67 & t71);
    if (t72 != 0)
        goto LAB66;

LAB63:    if (t70 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t58) = 1;

LAB66:    t75 = *((unsigned int *)t32);
    t76 = *((unsigned int *)t58);
    t77 = (t75 & t76);
    *((unsigned int *)t74) = t77;
    t78 = (t32 + 4);
    t79 = (t58 + 4);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t78);
    t82 = *((unsigned int *)t79);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB67;

LAB68:
LAB69:    memset(t106, 0, 8);
    t107 = (t74 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (t110 & t109);
    t112 = (t111 & 1U);
    if (t112 != 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t107) != 0)
        goto LAB72;

LAB73:    t114 = (t106 + 4);
    t115 = *((unsigned int *)t106);
    t116 = *((unsigned int *)t114);
    t117 = (t115 || t116);
    if (t117 > 0)
        goto LAB74;

LAB75:    memcpy(t144, t106, 8);

LAB76:    t176 = (t144 + 4);
    t177 = *((unsigned int *)t176);
    t178 = (~(t177));
    t179 = *((unsigned int *)t144);
    t180 = (t179 & t178);
    t181 = (t180 != 0);
    if (t181 > 0)
        goto LAB88;

LAB89:
LAB90:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 1768);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB95;

LAB93:    if (*((unsigned int *)t13) == 0)
        goto LAB92;

LAB94:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB95:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB97;

LAB96:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 1U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 1U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 | t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB98;

LAB99:
LAB100:    t54 = (t0 + 1928);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng2)));
    memset(t58, 0, 8);
    t59 = (t56 + 4);
    t60 = (t57 + 4);
    t61 = *((unsigned int *)t56);
    t62 = *((unsigned int *)t57);
    t63 = (t61 ^ t62);
    t64 = *((unsigned int *)t59);
    t65 = *((unsigned int *)t60);
    t66 = (t64 ^ t65);
    t67 = (t63 | t66);
    t68 = *((unsigned int *)t59);
    t69 = *((unsigned int *)t60);
    t70 = (t68 | t69);
    t71 = (~(t70));
    t72 = (t67 & t71);
    if (t72 != 0)
        goto LAB104;

LAB101:    if (t70 != 0)
        goto LAB103;

LAB102:    *((unsigned int *)t58) = 1;

LAB104:    t75 = *((unsigned int *)t32);
    t76 = *((unsigned int *)t58);
    t77 = (t75 & t76);
    *((unsigned int *)t74) = t77;
    t78 = (t32 + 4);
    t79 = (t58 + 4);
    t80 = (t74 + 4);
    t81 = *((unsigned int *)t78);
    t82 = *((unsigned int *)t79);
    t83 = (t81 | t82);
    *((unsigned int *)t80) = t83;
    t84 = *((unsigned int *)t80);
    t85 = (t84 != 0);
    if (t85 == 1)
        goto LAB105;

LAB106:
LAB107:    memset(t106, 0, 8);
    t107 = (t74 + 4);
    t108 = *((unsigned int *)t107);
    t109 = (~(t108));
    t110 = *((unsigned int *)t74);
    t111 = (t110 & t109);
    t112 = (t111 & 1U);
    if (t112 != 0)
        goto LAB108;

LAB109:    if (*((unsigned int *)t107) != 0)
        goto LAB110;

LAB111:    t114 = (t106 + 4);
    t115 = *((unsigned int *)t106);
    t116 = *((unsigned int *)t114);
    t117 = (t115 || t116);
    if (t117 > 0)
        goto LAB112;

LAB113:    memcpy(t144, t106, 8);

LAB114:    t176 = (t144 + 4);
    t177 = *((unsigned int *)t176);
    t178 = (~(t177));
    t179 = *((unsigned int *)t144);
    t180 = (t179 & t178);
    t181 = (t180 != 0);
    if (t181 > 0)
        goto LAB126;

LAB127:
LAB128:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 2248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB133;

LAB131:    if (*((unsigned int *)t13) == 0)
        goto LAB130;

LAB132:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB133:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB135;

LAB134:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 4294967295U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 4294967295U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 & t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB136;

LAB137:
LAB138:    t54 = (t0 + 2408);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t0 + 2568);
    t59 = (t57 + 56U);
    t60 = *((char **)t59);
    memset(t58, 0, 8);
    t73 = (t60 + 4);
    t65 = *((unsigned int *)t73);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB142;

LAB140:    if (*((unsigned int *)t73) == 0)
        goto LAB139;

LAB141:    t78 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t78) = 1;

LAB142:    t79 = (t58 + 4);
    t80 = (t60 + 4);
    t70 = *((unsigned int *)t60);
    t71 = (~(t70));
    *((unsigned int *)t58) = t71;
    *((unsigned int *)t79) = 0;
    if (*((unsigned int *)t80) != 0)
        goto LAB144;

LAB143:    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & 4294967295U);
    t82 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t82 & 4294967295U);
    t83 = *((unsigned int *)t56);
    t84 = *((unsigned int *)t58);
    t85 = (t83 & t84);
    *((unsigned int *)t74) = t85;
    t88 = (t56 + 4);
    t89 = (t58 + 4);
    t107 = (t74 + 4);
    t86 = *((unsigned int *)t88);
    t87 = *((unsigned int *)t89);
    t90 = (t86 | t87);
    *((unsigned int *)t107) = t90;
    t91 = *((unsigned int *)t107);
    t92 = (t91 != 0);
    if (t92 == 1)
        goto LAB145;

LAB146:
LAB147:    t115 = *((unsigned int *)t32);
    t116 = *((unsigned int *)t74);
    t117 = (t115 | t116);
    *((unsigned int *)t106) = t117;
    t118 = (t32 + 4);
    t119 = (t74 + 4);
    t121 = (t106 + 4);
    t123 = *((unsigned int *)t118);
    t124 = *((unsigned int *)t119);
    t125 = (t123 | t124);
    *((unsigned int *)t121) = t125;
    t126 = *((unsigned int *)t121);
    t127 = (t126 != 0);
    if (t127 == 1)
        goto LAB148;

LAB149:
LAB150:    t137 = ((char*)((ng1)));
    memset(t120, 0, 8);
    t143 = (t106 + 4);
    t148 = (t137 + 4);
    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t137);
    t147 = (t145 ^ t146);
    t151 = *((unsigned int *)t143);
    t152 = *((unsigned int *)t148);
    t153 = (t151 ^ t152);
    t154 = (t147 | t153);
    t155 = *((unsigned int *)t143);
    t156 = *((unsigned int *)t148);
    t157 = (t155 | t156);
    t160 = (~(t157));
    t161 = (t154 & t160);
    if (t161 != 0)
        goto LAB154;

LAB151:    if (t157 != 0)
        goto LAB153;

LAB152:    *((unsigned int *)t120) = 1;

LAB154:    memset(t136, 0, 8);
    t150 = (t120 + 4);
    t162 = *((unsigned int *)t150);
    t163 = (~(t162));
    t164 = *((unsigned int *)t120);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB155;

LAB156:    if (*((unsigned int *)t150) != 0)
        goto LAB157;

LAB158:    t159 = (t136 + 4);
    t167 = *((unsigned int *)t136);
    t170 = *((unsigned int *)t159);
    t171 = (t167 || t170);
    if (t171 > 0)
        goto LAB159;

LAB160:    memcpy(t199, t136, 8);

LAB161:    t231 = (t199 + 4);
    t232 = *((unsigned int *)t231);
    t233 = (~(t232));
    t234 = *((unsigned int *)t199);
    t235 = (t234 & t233);
    t236 = (t235 != 0);
    if (t236 > 0)
        goto LAB173;

LAB174:
LAB175:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 2248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB180;

LAB178:    if (*((unsigned int *)t13) == 0)
        goto LAB177;

LAB179:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB180:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB182;

LAB181:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 4294967295U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 4294967295U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 & t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB183;

LAB184:
LAB185:    t54 = (t0 + 2408);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t0 + 2568);
    t59 = (t57 + 56U);
    t60 = *((char **)t59);
    memset(t58, 0, 8);
    t73 = (t60 + 4);
    t65 = *((unsigned int *)t73);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB189;

LAB187:    if (*((unsigned int *)t73) == 0)
        goto LAB186;

LAB188:    t78 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t78) = 1;

LAB189:    t79 = (t58 + 4);
    t80 = (t60 + 4);
    t70 = *((unsigned int *)t60);
    t71 = (~(t70));
    *((unsigned int *)t58) = t71;
    *((unsigned int *)t79) = 0;
    if (*((unsigned int *)t80) != 0)
        goto LAB191;

LAB190:    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & 4294967295U);
    t82 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t82 & 4294967295U);
    t83 = *((unsigned int *)t56);
    t84 = *((unsigned int *)t58);
    t85 = (t83 & t84);
    *((unsigned int *)t74) = t85;
    t88 = (t56 + 4);
    t89 = (t58 + 4);
    t107 = (t74 + 4);
    t86 = *((unsigned int *)t88);
    t87 = *((unsigned int *)t89);
    t90 = (t86 | t87);
    *((unsigned int *)t107) = t90;
    t91 = *((unsigned int *)t107);
    t92 = (t91 != 0);
    if (t92 == 1)
        goto LAB192;

LAB193:
LAB194:    t115 = *((unsigned int *)t32);
    t116 = *((unsigned int *)t74);
    t117 = (t115 | t116);
    *((unsigned int *)t106) = t117;
    t118 = (t32 + 4);
    t119 = (t74 + 4);
    t121 = (t106 + 4);
    t123 = *((unsigned int *)t118);
    t124 = *((unsigned int *)t119);
    t125 = (t123 | t124);
    *((unsigned int *)t121) = t125;
    t126 = *((unsigned int *)t121);
    t127 = (t126 != 0);
    if (t127 == 1)
        goto LAB195;

LAB196:
LAB197:    t137 = ((char*)((ng2)));
    memset(t120, 0, 8);
    t143 = (t106 + 4);
    t148 = (t137 + 4);
    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t137);
    t147 = (t145 ^ t146);
    t151 = *((unsigned int *)t143);
    t152 = *((unsigned int *)t148);
    t153 = (t151 ^ t152);
    t154 = (t147 | t153);
    t155 = *((unsigned int *)t143);
    t156 = *((unsigned int *)t148);
    t157 = (t155 | t156);
    t160 = (~(t157));
    t161 = (t154 & t160);
    if (t161 != 0)
        goto LAB201;

LAB198:    if (t157 != 0)
        goto LAB200;

LAB199:    *((unsigned int *)t120) = 1;

LAB201:    memset(t136, 0, 8);
    t150 = (t120 + 4);
    t162 = *((unsigned int *)t150);
    t163 = (~(t162));
    t164 = *((unsigned int *)t120);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB202;

LAB203:    if (*((unsigned int *)t150) != 0)
        goto LAB204;

LAB205:    t159 = (t136 + 4);
    t167 = *((unsigned int *)t136);
    t170 = *((unsigned int *)t159);
    t171 = (t167 || t170);
    if (t171 > 0)
        goto LAB206;

LAB207:    memcpy(t199, t136, 8);

LAB208:    t231 = (t199 + 4);
    t232 = *((unsigned int *)t231);
    t233 = (~(t232));
    t234 = *((unsigned int *)t199);
    t235 = (t234 & t233);
    t236 = (t235 != 0);
    if (t236 > 0)
        goto LAB220;

LAB221:
LAB222:    t2 = (t0 + 5804);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB37;

LAB54:    *((unsigned int *)t10) = 1;
    goto LAB57;

LAB59:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB58;

LAB60:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (~(t43));
    t45 = *((unsigned int *)t8);
    t7 = (t45 & t44);
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t10);
    t49 = (t48 & t47);
    t50 = (~(t7));
    t51 = (~(t49));
    t52 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t52 & t50);
    t53 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t53 & t51);
    goto LAB62;

LAB65:    t73 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB66;

LAB67:    t86 = *((unsigned int *)t74);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t74) = (t86 | t87);
    t88 = (t32 + 4);
    t89 = (t58 + 4);
    t90 = *((unsigned int *)t32);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t58);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t98 = (t91 & t93);
    t99 = (t95 & t97);
    t100 = (~(t98));
    t101 = (~(t99));
    t102 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t102 & t100);
    t103 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t103 & t101);
    t104 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t104 & t100);
    t105 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t105 & t101);
    goto LAB69;

LAB70:    *((unsigned int *)t106) = 1;
    goto LAB73;

LAB72:    t113 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB73;

LAB74:    t118 = (t0 + 1048U);
    t119 = *((char **)t118);
    t118 = ((char*)((ng1)));
    memset(t120, 0, 8);
    t121 = (t119 + 4);
    t122 = (t118 + 4);
    t123 = *((unsigned int *)t119);
    t124 = *((unsigned int *)t118);
    t125 = (t123 ^ t124);
    t126 = *((unsigned int *)t121);
    t127 = *((unsigned int *)t122);
    t128 = (t126 ^ t127);
    t129 = (t125 | t128);
    t130 = *((unsigned int *)t121);
    t131 = *((unsigned int *)t122);
    t132 = (t130 | t131);
    t133 = (~(t132));
    t134 = (t129 & t133);
    if (t134 != 0)
        goto LAB78;

LAB77:    if (t132 != 0)
        goto LAB79;

LAB80:    memset(t136, 0, 8);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t139 = (~(t138));
    t140 = *((unsigned int *)t120);
    t141 = (t140 & t139);
    t142 = (t141 & 1U);
    if (t142 != 0)
        goto LAB81;

LAB82:    if (*((unsigned int *)t137) != 0)
        goto LAB83;

LAB84:    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t136);
    t147 = (t145 & t146);
    *((unsigned int *)t144) = t147;
    t148 = (t106 + 4);
    t149 = (t136 + 4);
    t150 = (t144 + 4);
    t151 = *((unsigned int *)t148);
    t152 = *((unsigned int *)t149);
    t153 = (t151 | t152);
    *((unsigned int *)t150) = t153;
    t154 = *((unsigned int *)t150);
    t155 = (t154 != 0);
    if (t155 == 1)
        goto LAB85;

LAB86:
LAB87:    goto LAB76;

LAB78:    *((unsigned int *)t120) = 1;
    goto LAB80;

LAB79:    t135 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB80;

LAB81:    *((unsigned int *)t136) = 1;
    goto LAB84;

LAB83:    t143 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t143) = 1;
    goto LAB84;

LAB85:    t156 = *((unsigned int *)t144);
    t157 = *((unsigned int *)t150);
    *((unsigned int *)t144) = (t156 | t157);
    t158 = (t106 + 4);
    t159 = (t136 + 4);
    t160 = *((unsigned int *)t106);
    t161 = (~(t160));
    t162 = *((unsigned int *)t158);
    t163 = (~(t162));
    t164 = *((unsigned int *)t136);
    t165 = (~(t164));
    t166 = *((unsigned int *)t159);
    t167 = (~(t166));
    t168 = (t161 & t163);
    t169 = (t165 & t167);
    t170 = (~(t168));
    t171 = (~(t169));
    t172 = *((unsigned int *)t150);
    *((unsigned int *)t150) = (t172 & t170);
    t173 = *((unsigned int *)t150);
    *((unsigned int *)t150) = (t173 & t171);
    t174 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t174 & t170);
    t175 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t175 & t171);
    goto LAB87;

LAB88:    xsi_set_current_line(56, ng0);

LAB91:    xsi_set_current_line(57, ng0);
    t183 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t184 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t184, 32);
    xsi_vlogfile_write(1, 0, 0, ng4, 2, t0, (char)118, t185, 64);
    goto LAB90;

LAB92:    *((unsigned int *)t10) = 1;
    goto LAB95;

LAB97:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB96;

LAB98:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t41);
    t44 = (~(t43));
    t45 = *((unsigned int *)t8);
    t7 = (t45 & t44);
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t10);
    t49 = (t48 & t47);
    t50 = (~(t7));
    t51 = (~(t49));
    t52 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t52 & t50);
    t53 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t53 & t51);
    goto LAB100;

LAB103:    t73 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB104;

LAB105:    t86 = *((unsigned int *)t74);
    t87 = *((unsigned int *)t80);
    *((unsigned int *)t74) = (t86 | t87);
    t88 = (t32 + 4);
    t89 = (t58 + 4);
    t90 = *((unsigned int *)t32);
    t91 = (~(t90));
    t92 = *((unsigned int *)t88);
    t93 = (~(t92));
    t94 = *((unsigned int *)t58);
    t95 = (~(t94));
    t96 = *((unsigned int *)t89);
    t97 = (~(t96));
    t98 = (t91 & t93);
    t99 = (t95 & t97);
    t100 = (~(t98));
    t101 = (~(t99));
    t102 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t102 & t100);
    t103 = *((unsigned int *)t80);
    *((unsigned int *)t80) = (t103 & t101);
    t104 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t104 & t100);
    t105 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t105 & t101);
    goto LAB107;

LAB108:    *((unsigned int *)t106) = 1;
    goto LAB111;

LAB110:    t113 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t113) = 1;
    goto LAB111;

LAB112:    t118 = (t0 + 1048U);
    t119 = *((char **)t118);
    t118 = ((char*)((ng2)));
    memset(t120, 0, 8);
    t121 = (t119 + 4);
    t122 = (t118 + 4);
    t123 = *((unsigned int *)t119);
    t124 = *((unsigned int *)t118);
    t125 = (t123 ^ t124);
    t126 = *((unsigned int *)t121);
    t127 = *((unsigned int *)t122);
    t128 = (t126 ^ t127);
    t129 = (t125 | t128);
    t130 = *((unsigned int *)t121);
    t131 = *((unsigned int *)t122);
    t132 = (t130 | t131);
    t133 = (~(t132));
    t134 = (t129 & t133);
    if (t134 != 0)
        goto LAB116;

LAB115:    if (t132 != 0)
        goto LAB117;

LAB118:    memset(t136, 0, 8);
    t137 = (t120 + 4);
    t138 = *((unsigned int *)t137);
    t139 = (~(t138));
    t140 = *((unsigned int *)t120);
    t141 = (t140 & t139);
    t142 = (t141 & 1U);
    if (t142 != 0)
        goto LAB119;

LAB120:    if (*((unsigned int *)t137) != 0)
        goto LAB121;

LAB122:    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t136);
    t147 = (t145 & t146);
    *((unsigned int *)t144) = t147;
    t148 = (t106 + 4);
    t149 = (t136 + 4);
    t150 = (t144 + 4);
    t151 = *((unsigned int *)t148);
    t152 = *((unsigned int *)t149);
    t153 = (t151 | t152);
    *((unsigned int *)t150) = t153;
    t154 = *((unsigned int *)t150);
    t155 = (t154 != 0);
    if (t155 == 1)
        goto LAB123;

LAB124:
LAB125:    goto LAB114;

LAB116:    *((unsigned int *)t120) = 1;
    goto LAB118;

LAB117:    t135 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB118;

LAB119:    *((unsigned int *)t136) = 1;
    goto LAB122;

LAB121:    t143 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t143) = 1;
    goto LAB122;

LAB123:    t156 = *((unsigned int *)t144);
    t157 = *((unsigned int *)t150);
    *((unsigned int *)t144) = (t156 | t157);
    t158 = (t106 + 4);
    t159 = (t136 + 4);
    t160 = *((unsigned int *)t106);
    t161 = (~(t160));
    t162 = *((unsigned int *)t158);
    t163 = (~(t162));
    t164 = *((unsigned int *)t136);
    t165 = (~(t164));
    t166 = *((unsigned int *)t159);
    t167 = (~(t166));
    t168 = (t161 & t163);
    t169 = (t165 & t167);
    t170 = (~(t168));
    t171 = (~(t169));
    t172 = *((unsigned int *)t150);
    *((unsigned int *)t150) = (t172 & t170);
    t173 = *((unsigned int *)t150);
    *((unsigned int *)t150) = (t173 & t171);
    t174 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t174 & t170);
    t175 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t175 & t171);
    goto LAB125;

LAB126:    xsi_set_current_line(59, ng0);

LAB129:    xsi_set_current_line(60, ng0);
    t183 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t184 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t184, 32);
    xsi_vlogfile_write(1, 0, 0, ng6, 2, t0, (char)118, t185, 64);
    goto LAB128;

LAB130:    *((unsigned int *)t10) = 1;
    goto LAB133;

LAB135:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB134;

LAB136:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t8);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t10);
    t48 = (~(t47));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t7 = (t44 & t46);
    t49 = (t48 & t51);
    t52 = (~(t7));
    t53 = (~(t49));
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t52);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t53);
    t63 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t63 & t52);
    t64 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t64 & t53);
    goto LAB138;

LAB139:    *((unsigned int *)t58) = 1;
    goto LAB142;

LAB144:    t72 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t80);
    *((unsigned int *)t58) = (t72 | t75);
    t76 = *((unsigned int *)t79);
    t77 = *((unsigned int *)t80);
    *((unsigned int *)t79) = (t76 | t77);
    goto LAB143;

LAB145:    t93 = *((unsigned int *)t74);
    t94 = *((unsigned int *)t107);
    *((unsigned int *)t74) = (t93 | t94);
    t113 = (t56 + 4);
    t114 = (t58 + 4);
    t95 = *((unsigned int *)t56);
    t96 = (~(t95));
    t97 = *((unsigned int *)t113);
    t100 = (~(t97));
    t101 = *((unsigned int *)t58);
    t102 = (~(t101));
    t103 = *((unsigned int *)t114);
    t104 = (~(t103));
    t98 = (t96 & t100);
    t99 = (t102 & t104);
    t105 = (~(t98));
    t108 = (~(t99));
    t109 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t109 & t105);
    t110 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t110 & t108);
    t111 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t111 & t105);
    t112 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t112 & t108);
    goto LAB147;

LAB148:    t128 = *((unsigned int *)t106);
    t129 = *((unsigned int *)t121);
    *((unsigned int *)t106) = (t128 | t129);
    t122 = (t32 + 4);
    t135 = (t74 + 4);
    t130 = *((unsigned int *)t122);
    t131 = (~(t130));
    t132 = *((unsigned int *)t32);
    t168 = (t132 & t131);
    t133 = *((unsigned int *)t135);
    t134 = (~(t133));
    t138 = *((unsigned int *)t74);
    t169 = (t138 & t134);
    t139 = (~(t168));
    t140 = (~(t169));
    t141 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t141 & t139);
    t142 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t142 & t140);
    goto LAB150;

LAB153:    t149 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB154;

LAB155:    *((unsigned int *)t136) = 1;
    goto LAB158;

LAB157:    t158 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t158) = 1;
    goto LAB158;

LAB159:    t176 = (t0 + 1208U);
    t183 = *((char **)t176);
    t176 = ((char*)((ng1)));
    memset(t144, 0, 8);
    t184 = (t183 + 4);
    t186 = (t176 + 4);
    t172 = *((unsigned int *)t183);
    t173 = *((unsigned int *)t176);
    t174 = (t172 ^ t173);
    t175 = *((unsigned int *)t184);
    t177 = *((unsigned int *)t186);
    t178 = (t175 ^ t177);
    t179 = (t174 | t178);
    t180 = *((unsigned int *)t184);
    t181 = *((unsigned int *)t186);
    t187 = (t180 | t181);
    t188 = (~(t187));
    t189 = (t179 & t188);
    if (t189 != 0)
        goto LAB163;

LAB162:    if (t187 != 0)
        goto LAB164;

LAB165:    memset(t191, 0, 8);
    t192 = (t144 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t144);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB166;

LAB167:    if (*((unsigned int *)t192) != 0)
        goto LAB168;

LAB169:    t200 = *((unsigned int *)t136);
    t201 = *((unsigned int *)t191);
    t202 = (t200 & t201);
    *((unsigned int *)t199) = t202;
    t203 = (t136 + 4);
    t204 = (t191 + 4);
    t205 = (t199 + 4);
    t206 = *((unsigned int *)t203);
    t207 = *((unsigned int *)t204);
    t208 = (t206 | t207);
    *((unsigned int *)t205) = t208;
    t209 = *((unsigned int *)t205);
    t210 = (t209 != 0);
    if (t210 == 1)
        goto LAB170;

LAB171:
LAB172:    goto LAB161;

LAB163:    *((unsigned int *)t144) = 1;
    goto LAB165;

LAB164:    t190 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB165;

LAB166:    *((unsigned int *)t191) = 1;
    goto LAB169;

LAB168:    t198 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB169;

LAB170:    t211 = *((unsigned int *)t199);
    t212 = *((unsigned int *)t205);
    *((unsigned int *)t199) = (t211 | t212);
    t213 = (t136 + 4);
    t214 = (t191 + 4);
    t215 = *((unsigned int *)t136);
    t216 = (~(t215));
    t217 = *((unsigned int *)t213);
    t218 = (~(t217));
    t219 = *((unsigned int *)t191);
    t220 = (~(t219));
    t221 = *((unsigned int *)t214);
    t222 = (~(t221));
    t223 = (t216 & t218);
    t224 = (t220 & t222);
    t225 = (~(t223));
    t226 = (~(t224));
    t227 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t227 & t225);
    t228 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t228 & t226);
    t229 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t229 & t225);
    t230 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t230 & t226);
    goto LAB172;

LAB173:    xsi_set_current_line(62, ng0);

LAB176:    xsi_set_current_line(63, ng0);
    t237 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t238 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t238, 32);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t0, (char)118, t185, 64);
    goto LAB175;

LAB177:    *((unsigned int *)t10) = 1;
    goto LAB180;

LAB182:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB181;

LAB183:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t8);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t10);
    t48 = (~(t47));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t7 = (t44 & t46);
    t49 = (t48 & t51);
    t52 = (~(t7));
    t53 = (~(t49));
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t52);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t53);
    t63 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t63 & t52);
    t64 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t64 & t53);
    goto LAB185;

LAB186:    *((unsigned int *)t58) = 1;
    goto LAB189;

LAB191:    t72 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t80);
    *((unsigned int *)t58) = (t72 | t75);
    t76 = *((unsigned int *)t79);
    t77 = *((unsigned int *)t80);
    *((unsigned int *)t79) = (t76 | t77);
    goto LAB190;

LAB192:    t93 = *((unsigned int *)t74);
    t94 = *((unsigned int *)t107);
    *((unsigned int *)t74) = (t93 | t94);
    t113 = (t56 + 4);
    t114 = (t58 + 4);
    t95 = *((unsigned int *)t56);
    t96 = (~(t95));
    t97 = *((unsigned int *)t113);
    t100 = (~(t97));
    t101 = *((unsigned int *)t58);
    t102 = (~(t101));
    t103 = *((unsigned int *)t114);
    t104 = (~(t103));
    t98 = (t96 & t100);
    t99 = (t102 & t104);
    t105 = (~(t98));
    t108 = (~(t99));
    t109 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t109 & t105);
    t110 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t110 & t108);
    t111 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t111 & t105);
    t112 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t112 & t108);
    goto LAB194;

LAB195:    t128 = *((unsigned int *)t106);
    t129 = *((unsigned int *)t121);
    *((unsigned int *)t106) = (t128 | t129);
    t122 = (t32 + 4);
    t135 = (t74 + 4);
    t130 = *((unsigned int *)t122);
    t131 = (~(t130));
    t132 = *((unsigned int *)t32);
    t168 = (t132 & t131);
    t133 = *((unsigned int *)t135);
    t134 = (~(t133));
    t138 = *((unsigned int *)t74);
    t169 = (t138 & t134);
    t139 = (~(t168));
    t140 = (~(t169));
    t141 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t141 & t139);
    t142 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t142 & t140);
    goto LAB197;

LAB200:    t149 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB201;

LAB202:    *((unsigned int *)t136) = 1;
    goto LAB205;

LAB204:    t158 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t158) = 1;
    goto LAB205;

LAB206:    t176 = (t0 + 1208U);
    t183 = *((char **)t176);
    t176 = ((char*)((ng2)));
    memset(t144, 0, 8);
    t184 = (t183 + 4);
    t186 = (t176 + 4);
    t172 = *((unsigned int *)t183);
    t173 = *((unsigned int *)t176);
    t174 = (t172 ^ t173);
    t175 = *((unsigned int *)t184);
    t177 = *((unsigned int *)t186);
    t178 = (t175 ^ t177);
    t179 = (t174 | t178);
    t180 = *((unsigned int *)t184);
    t181 = *((unsigned int *)t186);
    t187 = (t180 | t181);
    t188 = (~(t187));
    t189 = (t179 & t188);
    if (t189 != 0)
        goto LAB210;

LAB209:    if (t187 != 0)
        goto LAB211;

LAB212:    memset(t191, 0, 8);
    t192 = (t144 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t144);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB213;

LAB214:    if (*((unsigned int *)t192) != 0)
        goto LAB215;

LAB216:    t200 = *((unsigned int *)t136);
    t201 = *((unsigned int *)t191);
    t202 = (t200 & t201);
    *((unsigned int *)t199) = t202;
    t203 = (t136 + 4);
    t204 = (t191 + 4);
    t205 = (t199 + 4);
    t206 = *((unsigned int *)t203);
    t207 = *((unsigned int *)t204);
    t208 = (t206 | t207);
    *((unsigned int *)t205) = t208;
    t209 = *((unsigned int *)t205);
    t210 = (t209 != 0);
    if (t210 == 1)
        goto LAB217;

LAB218:
LAB219:    goto LAB208;

LAB210:    *((unsigned int *)t144) = 1;
    goto LAB212;

LAB211:    t190 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB212;

LAB213:    *((unsigned int *)t191) = 1;
    goto LAB216;

LAB215:    t198 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB216;

LAB217:    t211 = *((unsigned int *)t199);
    t212 = *((unsigned int *)t205);
    *((unsigned int *)t199) = (t211 | t212);
    t213 = (t136 + 4);
    t214 = (t191 + 4);
    t215 = *((unsigned int *)t136);
    t216 = (~(t215));
    t217 = *((unsigned int *)t213);
    t218 = (~(t217));
    t219 = *((unsigned int *)t191);
    t220 = (~(t219));
    t221 = *((unsigned int *)t214);
    t222 = (~(t221));
    t223 = (t216 & t218);
    t224 = (t220 & t222);
    t225 = (~(t223));
    t226 = (~(t224));
    t227 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t227 & t225);
    t228 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t228 & t226);
    t229 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t229 & t225);
    t230 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t230 & t226);
    goto LAB219;

LAB220:    xsi_set_current_line(65, ng0);

LAB223:    xsi_set_current_line(66, ng0);
    t237 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t238 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t238, 32);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)118, t185, 64);
    goto LAB222;

LAB225:    xsi_set_current_line(75, ng0);

LAB227:    xsi_set_current_line(76, ng0);
    t11 = (t0 + 2248);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB231;

LAB229:    if (*((unsigned int *)t14) == 0)
        goto LAB228;

LAB230:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB231:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB233;

LAB232:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 2248);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5812);
    *((int *)t8) = t7;

LAB234:    t9 = (t0 + 5812);
    if (*((int *)t9) > 0)
        goto LAB235;

LAB236:    t2 = (t0 + 5808);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB224;

LAB228:    *((unsigned int *)t10) = 1;
    goto LAB231;

LAB233:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB232;

LAB235:    xsi_set_current_line(77, ng0);

LAB237:    xsi_set_current_line(78, ng0);
    t11 = (t0 + 2408);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB241;

LAB239:    if (*((unsigned int *)t14) == 0)
        goto LAB238;

LAB240:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB241:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB243;

LAB242:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 2408);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 5816);
    *((int *)t8) = t7;

LAB244:    t9 = (t0 + 5816);
    if (*((int *)t9) > 0)
        goto LAB245;

LAB246:    t2 = (t0 + 5812);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB234;

LAB238:    *((unsigned int *)t10) = 1;
    goto LAB241;

LAB243:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB242;

LAB245:    xsi_set_current_line(79, ng0);

LAB247:    xsi_set_current_line(80, ng0);
    t11 = (t0 + 2568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t10, 0, 8);
    t14 = (t13 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB251;

LAB249:    if (*((unsigned int *)t14) == 0)
        goto LAB248;

LAB250:    t20 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t20) = 1;

LAB251:    t21 = (t10 + 4);
    t22 = (t13 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    *((unsigned int *)t10) = t24;
    *((unsigned int *)t21) = 0;
    if (*((unsigned int *)t22) != 0)
        goto LAB253;

LAB252:    t29 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t29 & 1U);
    t30 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t30 & 1U);
    t31 = (t0 + 2568);
    xsi_vlogvar_assign_value(t31, t10, 0, 0, 1);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3544);
    xsi_process_wait(t2, 1LL);
    *((char **)t1) = &&LAB254;
    goto LAB1;

LAB248:    *((unsigned int *)t10) = 1;
    goto LAB251;

LAB253:    t25 = *((unsigned int *)t10);
    t26 = *((unsigned int *)t22);
    *((unsigned int *)t10) = (t25 | t26);
    t27 = *((unsigned int *)t21);
    t28 = *((unsigned int *)t22);
    *((unsigned int *)t21) = (t27 | t28);
    goto LAB252;

LAB254:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 2248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB258;

LAB256:    if (*((unsigned int *)t13) == 0)
        goto LAB255;

LAB257:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB258:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB260;

LAB259:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 4294967295U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 4294967295U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 & t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB261;

LAB262:
LAB263:    t54 = (t0 + 2408);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t0 + 2568);
    t59 = (t57 + 56U);
    t60 = *((char **)t59);
    memset(t58, 0, 8);
    t73 = (t60 + 4);
    t65 = *((unsigned int *)t73);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB267;

LAB265:    if (*((unsigned int *)t73) == 0)
        goto LAB264;

LAB266:    t78 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t78) = 1;

LAB267:    t79 = (t58 + 4);
    t80 = (t60 + 4);
    t70 = *((unsigned int *)t60);
    t71 = (~(t70));
    *((unsigned int *)t58) = t71;
    *((unsigned int *)t79) = 0;
    if (*((unsigned int *)t80) != 0)
        goto LAB269;

LAB268:    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & 4294967295U);
    t82 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t82 & 4294967295U);
    t83 = *((unsigned int *)t56);
    t84 = *((unsigned int *)t58);
    t85 = (t83 & t84);
    *((unsigned int *)t74) = t85;
    t88 = (t56 + 4);
    t89 = (t58 + 4);
    t107 = (t74 + 4);
    t86 = *((unsigned int *)t88);
    t87 = *((unsigned int *)t89);
    t90 = (t86 | t87);
    *((unsigned int *)t107) = t90;
    t91 = *((unsigned int *)t107);
    t92 = (t91 != 0);
    if (t92 == 1)
        goto LAB270;

LAB271:
LAB272:    t115 = *((unsigned int *)t32);
    t116 = *((unsigned int *)t74);
    t117 = (t115 | t116);
    *((unsigned int *)t106) = t117;
    t118 = (t32 + 4);
    t119 = (t74 + 4);
    t121 = (t106 + 4);
    t123 = *((unsigned int *)t118);
    t124 = *((unsigned int *)t119);
    t125 = (t123 | t124);
    *((unsigned int *)t121) = t125;
    t126 = *((unsigned int *)t121);
    t127 = (t126 != 0);
    if (t127 == 1)
        goto LAB273;

LAB274:
LAB275:    t137 = ((char*)((ng1)));
    memset(t120, 0, 8);
    t143 = (t106 + 4);
    t148 = (t137 + 4);
    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t137);
    t147 = (t145 ^ t146);
    t151 = *((unsigned int *)t143);
    t152 = *((unsigned int *)t148);
    t153 = (t151 ^ t152);
    t154 = (t147 | t153);
    t155 = *((unsigned int *)t143);
    t156 = *((unsigned int *)t148);
    t157 = (t155 | t156);
    t160 = (~(t157));
    t161 = (t154 & t160);
    if (t161 != 0)
        goto LAB279;

LAB276:    if (t157 != 0)
        goto LAB278;

LAB277:    *((unsigned int *)t120) = 1;

LAB279:    memset(t136, 0, 8);
    t150 = (t120 + 4);
    t162 = *((unsigned int *)t150);
    t163 = (~(t162));
    t164 = *((unsigned int *)t120);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB280;

LAB281:    if (*((unsigned int *)t150) != 0)
        goto LAB282;

LAB283:    t159 = (t136 + 4);
    t167 = *((unsigned int *)t136);
    t170 = *((unsigned int *)t159);
    t171 = (t167 || t170);
    if (t171 > 0)
        goto LAB284;

LAB285:    memcpy(t199, t136, 8);

LAB286:    t231 = (t199 + 4);
    t232 = *((unsigned int *)t231);
    t233 = (~(t232));
    t234 = *((unsigned int *)t199);
    t235 = (t234 & t233);
    t236 = (t235 != 0);
    if (t236 > 0)
        goto LAB298;

LAB299:
LAB300:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t9 = (t0 + 2248);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    memset(t10, 0, 8);
    t13 = (t12 + 4);
    t4 = *((unsigned int *)t13);
    t5 = (~(t4));
    t6 = *((unsigned int *)t12);
    t15 = (t6 & t5);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB305;

LAB303:    if (*((unsigned int *)t13) == 0)
        goto LAB302;

LAB304:    t14 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t14) = 1;

LAB305:    t20 = (t10 + 4);
    t21 = (t12 + 4);
    t17 = *((unsigned int *)t12);
    t18 = (~(t17));
    *((unsigned int *)t10) = t18;
    *((unsigned int *)t20) = 0;
    if (*((unsigned int *)t21) != 0)
        goto LAB307;

LAB306:    t26 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t26 & 4294967295U);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 & 4294967295U);
    t28 = *((unsigned int *)t8);
    t29 = *((unsigned int *)t10);
    t30 = (t28 & t29);
    *((unsigned int *)t32) = t30;
    t22 = (t8 + 4);
    t31 = (t10 + 4);
    t33 = (t32 + 4);
    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t31);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB308;

LAB309:
LAB310:    t54 = (t0 + 2408);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t0 + 2568);
    t59 = (t57 + 56U);
    t60 = *((char **)t59);
    memset(t58, 0, 8);
    t73 = (t60 + 4);
    t65 = *((unsigned int *)t73);
    t66 = (~(t65));
    t67 = *((unsigned int *)t60);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB314;

LAB312:    if (*((unsigned int *)t73) == 0)
        goto LAB311;

LAB313:    t78 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t78) = 1;

LAB314:    t79 = (t58 + 4);
    t80 = (t60 + 4);
    t70 = *((unsigned int *)t60);
    t71 = (~(t70));
    *((unsigned int *)t58) = t71;
    *((unsigned int *)t79) = 0;
    if (*((unsigned int *)t80) != 0)
        goto LAB316;

LAB315:    t81 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t81 & 4294967295U);
    t82 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t82 & 4294967295U);
    t83 = *((unsigned int *)t56);
    t84 = *((unsigned int *)t58);
    t85 = (t83 & t84);
    *((unsigned int *)t74) = t85;
    t88 = (t56 + 4);
    t89 = (t58 + 4);
    t107 = (t74 + 4);
    t86 = *((unsigned int *)t88);
    t87 = *((unsigned int *)t89);
    t90 = (t86 | t87);
    *((unsigned int *)t107) = t90;
    t91 = *((unsigned int *)t107);
    t92 = (t91 != 0);
    if (t92 == 1)
        goto LAB317;

LAB318:
LAB319:    t115 = *((unsigned int *)t32);
    t116 = *((unsigned int *)t74);
    t117 = (t115 | t116);
    *((unsigned int *)t106) = t117;
    t118 = (t32 + 4);
    t119 = (t74 + 4);
    t121 = (t106 + 4);
    t123 = *((unsigned int *)t118);
    t124 = *((unsigned int *)t119);
    t125 = (t123 | t124);
    *((unsigned int *)t121) = t125;
    t126 = *((unsigned int *)t121);
    t127 = (t126 != 0);
    if (t127 == 1)
        goto LAB320;

LAB321:
LAB322:    t137 = ((char*)((ng2)));
    memset(t120, 0, 8);
    t143 = (t106 + 4);
    t148 = (t137 + 4);
    t145 = *((unsigned int *)t106);
    t146 = *((unsigned int *)t137);
    t147 = (t145 ^ t146);
    t151 = *((unsigned int *)t143);
    t152 = *((unsigned int *)t148);
    t153 = (t151 ^ t152);
    t154 = (t147 | t153);
    t155 = *((unsigned int *)t143);
    t156 = *((unsigned int *)t148);
    t157 = (t155 | t156);
    t160 = (~(t157));
    t161 = (t154 & t160);
    if (t161 != 0)
        goto LAB326;

LAB323:    if (t157 != 0)
        goto LAB325;

LAB324:    *((unsigned int *)t120) = 1;

LAB326:    memset(t136, 0, 8);
    t150 = (t120 + 4);
    t162 = *((unsigned int *)t150);
    t163 = (~(t162));
    t164 = *((unsigned int *)t120);
    t165 = (t164 & t163);
    t166 = (t165 & 1U);
    if (t166 != 0)
        goto LAB327;

LAB328:    if (*((unsigned int *)t150) != 0)
        goto LAB329;

LAB330:    t159 = (t136 + 4);
    t167 = *((unsigned int *)t136);
    t170 = *((unsigned int *)t159);
    t171 = (t167 || t170);
    if (t171 > 0)
        goto LAB331;

LAB332:    memcpy(t199, t136, 8);

LAB333:    t231 = (t199 + 4);
    t232 = *((unsigned int *)t231);
    t233 = (~(t232));
    t234 = *((unsigned int *)t199);
    t235 = (t234 & t233);
    t236 = (t235 != 0);
    if (t236 > 0)
        goto LAB345;

LAB346:
LAB347:    t2 = (t0 + 5816);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB244;

LAB255:    *((unsigned int *)t10) = 1;
    goto LAB258;

LAB260:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB259;

LAB261:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t8);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t10);
    t48 = (~(t47));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t7 = (t44 & t46);
    t49 = (t48 & t51);
    t52 = (~(t7));
    t53 = (~(t49));
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t52);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t53);
    t63 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t63 & t52);
    t64 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t64 & t53);
    goto LAB263;

LAB264:    *((unsigned int *)t58) = 1;
    goto LAB267;

LAB269:    t72 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t80);
    *((unsigned int *)t58) = (t72 | t75);
    t76 = *((unsigned int *)t79);
    t77 = *((unsigned int *)t80);
    *((unsigned int *)t79) = (t76 | t77);
    goto LAB268;

LAB270:    t93 = *((unsigned int *)t74);
    t94 = *((unsigned int *)t107);
    *((unsigned int *)t74) = (t93 | t94);
    t113 = (t56 + 4);
    t114 = (t58 + 4);
    t95 = *((unsigned int *)t56);
    t96 = (~(t95));
    t97 = *((unsigned int *)t113);
    t100 = (~(t97));
    t101 = *((unsigned int *)t58);
    t102 = (~(t101));
    t103 = *((unsigned int *)t114);
    t104 = (~(t103));
    t98 = (t96 & t100);
    t99 = (t102 & t104);
    t105 = (~(t98));
    t108 = (~(t99));
    t109 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t109 & t105);
    t110 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t110 & t108);
    t111 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t111 & t105);
    t112 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t112 & t108);
    goto LAB272;

LAB273:    t128 = *((unsigned int *)t106);
    t129 = *((unsigned int *)t121);
    *((unsigned int *)t106) = (t128 | t129);
    t122 = (t32 + 4);
    t135 = (t74 + 4);
    t130 = *((unsigned int *)t122);
    t131 = (~(t130));
    t132 = *((unsigned int *)t32);
    t168 = (t132 & t131);
    t133 = *((unsigned int *)t135);
    t134 = (~(t133));
    t138 = *((unsigned int *)t74);
    t169 = (t138 & t134);
    t139 = (~(t168));
    t140 = (~(t169));
    t141 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t141 & t139);
    t142 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t142 & t140);
    goto LAB275;

LAB278:    t149 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB279;

LAB280:    *((unsigned int *)t136) = 1;
    goto LAB283;

LAB282:    t158 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t158) = 1;
    goto LAB283;

LAB284:    t176 = (t0 + 1208U);
    t183 = *((char **)t176);
    t176 = ((char*)((ng1)));
    memset(t144, 0, 8);
    t184 = (t183 + 4);
    t186 = (t176 + 4);
    t172 = *((unsigned int *)t183);
    t173 = *((unsigned int *)t176);
    t174 = (t172 ^ t173);
    t175 = *((unsigned int *)t184);
    t177 = *((unsigned int *)t186);
    t178 = (t175 ^ t177);
    t179 = (t174 | t178);
    t180 = *((unsigned int *)t184);
    t181 = *((unsigned int *)t186);
    t187 = (t180 | t181);
    t188 = (~(t187));
    t189 = (t179 & t188);
    if (t189 != 0)
        goto LAB288;

LAB287:    if (t187 != 0)
        goto LAB289;

LAB290:    memset(t191, 0, 8);
    t192 = (t144 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t144);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB291;

LAB292:    if (*((unsigned int *)t192) != 0)
        goto LAB293;

LAB294:    t200 = *((unsigned int *)t136);
    t201 = *((unsigned int *)t191);
    t202 = (t200 & t201);
    *((unsigned int *)t199) = t202;
    t203 = (t136 + 4);
    t204 = (t191 + 4);
    t205 = (t199 + 4);
    t206 = *((unsigned int *)t203);
    t207 = *((unsigned int *)t204);
    t208 = (t206 | t207);
    *((unsigned int *)t205) = t208;
    t209 = *((unsigned int *)t205);
    t210 = (t209 != 0);
    if (t210 == 1)
        goto LAB295;

LAB296:
LAB297:    goto LAB286;

LAB288:    *((unsigned int *)t144) = 1;
    goto LAB290;

LAB289:    t190 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB290;

LAB291:    *((unsigned int *)t191) = 1;
    goto LAB294;

LAB293:    t198 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB294;

LAB295:    t211 = *((unsigned int *)t199);
    t212 = *((unsigned int *)t205);
    *((unsigned int *)t199) = (t211 | t212);
    t213 = (t136 + 4);
    t214 = (t191 + 4);
    t215 = *((unsigned int *)t136);
    t216 = (~(t215));
    t217 = *((unsigned int *)t213);
    t218 = (~(t217));
    t219 = *((unsigned int *)t191);
    t220 = (~(t219));
    t221 = *((unsigned int *)t214);
    t222 = (~(t221));
    t223 = (t216 & t218);
    t224 = (t220 & t222);
    t225 = (~(t223));
    t226 = (~(t224));
    t227 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t227 & t225);
    t228 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t228 & t226);
    t229 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t229 & t225);
    t230 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t230 & t226);
    goto LAB297;

LAB298:    xsi_set_current_line(82, ng0);

LAB301:    xsi_set_current_line(83, ng0);
    t237 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t238 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t238, 32);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t0, (char)118, t185, 64);
    goto LAB300;

LAB302:    *((unsigned int *)t10) = 1;
    goto LAB305;

LAB307:    t19 = *((unsigned int *)t10);
    t23 = *((unsigned int *)t21);
    *((unsigned int *)t10) = (t19 | t23);
    t24 = *((unsigned int *)t20);
    t25 = *((unsigned int *)t21);
    *((unsigned int *)t20) = (t24 | t25);
    goto LAB306;

LAB308:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t8 + 4);
    t42 = (t10 + 4);
    t43 = *((unsigned int *)t8);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t10);
    t48 = (~(t47));
    t50 = *((unsigned int *)t42);
    t51 = (~(t50));
    t7 = (t44 & t46);
    t49 = (t48 & t51);
    t52 = (~(t7));
    t53 = (~(t49));
    t61 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t61 & t52);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t53);
    t63 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t63 & t52);
    t64 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t64 & t53);
    goto LAB310;

LAB311:    *((unsigned int *)t58) = 1;
    goto LAB314;

LAB316:    t72 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t80);
    *((unsigned int *)t58) = (t72 | t75);
    t76 = *((unsigned int *)t79);
    t77 = *((unsigned int *)t80);
    *((unsigned int *)t79) = (t76 | t77);
    goto LAB315;

LAB317:    t93 = *((unsigned int *)t74);
    t94 = *((unsigned int *)t107);
    *((unsigned int *)t74) = (t93 | t94);
    t113 = (t56 + 4);
    t114 = (t58 + 4);
    t95 = *((unsigned int *)t56);
    t96 = (~(t95));
    t97 = *((unsigned int *)t113);
    t100 = (~(t97));
    t101 = *((unsigned int *)t58);
    t102 = (~(t101));
    t103 = *((unsigned int *)t114);
    t104 = (~(t103));
    t98 = (t96 & t100);
    t99 = (t102 & t104);
    t105 = (~(t98));
    t108 = (~(t99));
    t109 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t109 & t105);
    t110 = *((unsigned int *)t107);
    *((unsigned int *)t107) = (t110 & t108);
    t111 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t111 & t105);
    t112 = *((unsigned int *)t74);
    *((unsigned int *)t74) = (t112 & t108);
    goto LAB319;

LAB320:    t128 = *((unsigned int *)t106);
    t129 = *((unsigned int *)t121);
    *((unsigned int *)t106) = (t128 | t129);
    t122 = (t32 + 4);
    t135 = (t74 + 4);
    t130 = *((unsigned int *)t122);
    t131 = (~(t130));
    t132 = *((unsigned int *)t32);
    t168 = (t132 & t131);
    t133 = *((unsigned int *)t135);
    t134 = (~(t133));
    t138 = *((unsigned int *)t74);
    t169 = (t138 & t134);
    t139 = (~(t168));
    t140 = (~(t169));
    t141 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t141 & t139);
    t142 = *((unsigned int *)t121);
    *((unsigned int *)t121) = (t142 & t140);
    goto LAB322;

LAB325:    t149 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB326;

LAB327:    *((unsigned int *)t136) = 1;
    goto LAB330;

LAB329:    t158 = (t136 + 4);
    *((unsigned int *)t136) = 1;
    *((unsigned int *)t158) = 1;
    goto LAB330;

LAB331:    t176 = (t0 + 1208U);
    t183 = *((char **)t176);
    t176 = ((char*)((ng2)));
    memset(t144, 0, 8);
    t184 = (t183 + 4);
    t186 = (t176 + 4);
    t172 = *((unsigned int *)t183);
    t173 = *((unsigned int *)t176);
    t174 = (t172 ^ t173);
    t175 = *((unsigned int *)t184);
    t177 = *((unsigned int *)t186);
    t178 = (t175 ^ t177);
    t179 = (t174 | t178);
    t180 = *((unsigned int *)t184);
    t181 = *((unsigned int *)t186);
    t187 = (t180 | t181);
    t188 = (~(t187));
    t189 = (t179 & t188);
    if (t189 != 0)
        goto LAB335;

LAB334:    if (t187 != 0)
        goto LAB336;

LAB337:    memset(t191, 0, 8);
    t192 = (t144 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t144);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB338;

LAB339:    if (*((unsigned int *)t192) != 0)
        goto LAB340;

LAB341:    t200 = *((unsigned int *)t136);
    t201 = *((unsigned int *)t191);
    t202 = (t200 & t201);
    *((unsigned int *)t199) = t202;
    t203 = (t136 + 4);
    t204 = (t191 + 4);
    t205 = (t199 + 4);
    t206 = *((unsigned int *)t203);
    t207 = *((unsigned int *)t204);
    t208 = (t206 | t207);
    *((unsigned int *)t205) = t208;
    t209 = *((unsigned int *)t205);
    t210 = (t209 != 0);
    if (t210 == 1)
        goto LAB342;

LAB343:
LAB344:    goto LAB333;

LAB335:    *((unsigned int *)t144) = 1;
    goto LAB337;

LAB336:    t190 = (t144 + 4);
    *((unsigned int *)t144) = 1;
    *((unsigned int *)t190) = 1;
    goto LAB337;

LAB338:    *((unsigned int *)t191) = 1;
    goto LAB341;

LAB340:    t198 = (t191 + 4);
    *((unsigned int *)t191) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB341;

LAB342:    t211 = *((unsigned int *)t199);
    t212 = *((unsigned int *)t205);
    *((unsigned int *)t199) = (t211 | t212);
    t213 = (t136 + 4);
    t214 = (t191 + 4);
    t215 = *((unsigned int *)t136);
    t216 = (~(t215));
    t217 = *((unsigned int *)t213);
    t218 = (~(t217));
    t219 = *((unsigned int *)t191);
    t220 = (~(t219));
    t221 = *((unsigned int *)t214);
    t222 = (~(t221));
    t223 = (t216 & t218);
    t224 = (t220 & t222);
    t225 = (~(t223));
    t226 = (~(t224));
    t227 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t227 & t225);
    t228 = *((unsigned int *)t205);
    *((unsigned int *)t205) = (t228 & t226);
    t229 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t229 & t225);
    t230 = *((unsigned int *)t199);
    *((unsigned int *)t199) = (t230 & t226);
    goto LAB344;

LAB345:    xsi_set_current_line(85, ng0);

LAB348:    xsi_set_current_line(86, ng0);
    t237 = xsi_vlog_time(t182, 1.0000000000000000, 1.0000000000000000);
    t238 = ((char*)((ng5)));
    xsi_vlog_unsigned_minus(t185, 64, t182, 64, t238, 32);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)118, t185, 64);
    goto LAB347;

}


extern void work_m_00000000002745843536_0540155903_init()
{
	static char *pe[] = {(void *)Initial_35_0,(void *)Always_45_1};
	xsi_register_didat("work_m_00000000002745843536_0540155903", "isim/schematic_schematic_sch_tb_isim_beh.exe.sim/work/m_00000000002745843536_0540155903.didat");
	xsi_register_executes(pe);
}
