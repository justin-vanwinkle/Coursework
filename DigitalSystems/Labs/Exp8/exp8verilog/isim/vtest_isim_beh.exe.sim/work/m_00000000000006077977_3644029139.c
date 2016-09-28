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
static const char *ng0 = "C:/Users/justi_000/Dropbox/Academia/Current Courses/Digital/Labs/Exp8/exp8verilog/code.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};



static void Always_23_0(char *t0)
{
    char t13[8];
    char t28[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t29;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB5;

LAB6:
LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(24, ng0);

LAB8:    xsi_set_current_line(25, ng0);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    t11 = (t0 + 1608);
    t14 = (t0 + 1608);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t13, t16, 2, t17, 32, 1);
    t18 = (t13 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (!(t19));
    if (t20 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t2) == 0)
        goto LAB11;

LAB13:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB14:    t5 = (t13 + 4);
    t11 = (t3 + 4);
    t19 = *((unsigned int *)t3);
    t21 = (~(t19));
    *((unsigned int *)t13) = t21;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t11) != 0)
        goto LAB16;

LAB15:    t26 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t26 & 1U);
    t27 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t27 & 1U);
    t12 = (t0 + 1608);
    t14 = (t0 + 1608);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t28, t16, 2, t17, 32, 1);
    t18 = (t28 + 4);
    t29 = *((unsigned int *)t18);
    t20 = (!(t29));
    if (t20 == 1)
        goto LAB17;

LAB18:    goto LAB7;

LAB9:    xsi_vlogvar_wait_assign_value(t11, t12, 0, *((unsigned int *)t13), 1, 0LL);
    goto LAB10;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB14;

LAB16:    t22 = *((unsigned int *)t13);
    t23 = *((unsigned int *)t11);
    *((unsigned int *)t13) = (t22 | t23);
    t24 = *((unsigned int *)t5);
    t25 = *((unsigned int *)t11);
    *((unsigned int *)t5) = (t24 | t25);
    goto LAB15;

LAB17:    xsi_vlogvar_wait_assign_value(t12, t13, 0, *((unsigned int *)t28), 1, 0LL);
    goto LAB18;

}


extern void work_m_00000000000006077977_3644029139_init()
{
	static char *pe[] = {(void *)Always_23_0};
	xsi_register_didat("work_m_00000000000006077977_3644029139", "isim/vtest_isim_beh.exe.sim/work/m_00000000000006077977_3644029139.didat");
	xsi_register_executes(pe);
}
