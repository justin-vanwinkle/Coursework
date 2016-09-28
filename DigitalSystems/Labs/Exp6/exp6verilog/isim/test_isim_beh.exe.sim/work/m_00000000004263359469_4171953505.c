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
static const char *ng0 = "C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp6/exp6verilog/mydecoder24vlog.v";
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {8U, 0U};
static int ng8[] = {0, 0};



static void Always_27_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    int t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(27, ng0);

LAB2:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1048U);
    t2 = *((char **)t1);
    t1 = ((char*)((ng1)));
    memset(t3, 0, 8);
    t4 = (t2 + 4);
    t5 = (t1 + 4);
    t6 = *((unsigned int *)t2);
    t7 = *((unsigned int *)t1);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = (t8 | t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 | t14);
    t16 = (~(t15));
    t17 = (t12 & t16);
    if (t17 != 0)
        goto LAB6;

LAB3:    if (t15 != 0)
        goto LAB5;

LAB4:    *((unsigned int *)t3) = 1;

LAB6:    t19 = (t3 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1048U);
    t2 = *((char **)t1);
    t1 = ((char*)((ng8)));
    memset(t3, 0, 8);
    t4 = (t2 + 4);
    t5 = (t1 + 4);
    t6 = *((unsigned int *)t2);
    t7 = *((unsigned int *)t1);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = (t8 | t11);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 | t14);
    t16 = (~(t15));
    t17 = (t12 & t16);
    if (t17 != 0)
        goto LAB23;

LAB20:    if (t15 != 0)
        goto LAB22;

LAB21:    *((unsigned int *)t3) = 1;

LAB23:    t19 = (t3 + 4);
    t20 = *((unsigned int *)t19);
    t21 = (~(t20));
    t22 = *((unsigned int *)t3);
    t23 = (t22 & t21);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB24;

LAB25:
LAB26:
LAB9:    goto LAB9;

LAB5:    t18 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB6;

LAB7:    xsi_set_current_line(29, ng0);
    t25 = (t0 + 1208U);
    t26 = *((char **)t25);

LAB10:    t25 = ((char*)((ng2)));
    t27 = xsi_vlog_unsigned_case_compare(t26, 2, t25, 2);
    if (t27 == 1)
        goto LAB11;

LAB12:    t1 = ((char*)((ng3)));
    t27 = xsi_vlog_unsigned_case_compare(t26, 2, t1, 2);
    if (t27 == 1)
        goto LAB13;

LAB14:    t1 = ((char*)((ng4)));
    t27 = xsi_vlog_unsigned_case_compare(t26, 2, t1, 2);
    if (t27 == 1)
        goto LAB15;

LAB16:    t1 = ((char*)((ng6)));
    t27 = xsi_vlog_unsigned_case_compare(t26, 2, t1, 2);
    if (t27 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB9;

LAB11:    xsi_set_current_line(30, ng0);
    t28 = ((char*)((ng3)));
    t29 = (t0 + 1608);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 1);
    goto LAB19;

LAB13:    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB15:    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB17:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    goto LAB19;

LAB22:    t18 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB23;

LAB24:    xsi_set_current_line(35, ng0);

LAB27:    xsi_set_current_line(36, ng0);
    t25 = ((char*)((ng2)));
    t28 = (t0 + 1608);
    xsi_vlogvar_assign_value(t28, t25, 0, 0, 1);
    goto LAB26;

LAB1:    return;
}


extern void work_m_00000000004263359469_4171953505_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000004263359469_4171953505", "isim/test_isim_beh.exe.sim/work/m_00000000004263359469_4171953505.didat");
	xsi_register_executes(pe);
}
