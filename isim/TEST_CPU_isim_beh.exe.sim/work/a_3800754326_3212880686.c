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
static const char *ng0 = "C:/Users/Nikifor Zhao/CPU/Branch.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3800754326_3212880686_p_0(char *t0)
{
    char t1[16];
    char t6[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5660U);
    t4 = (t0 + 5782);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 15;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (15 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t4, t6);
    t11 = (t1 + 12U);
    t10 = *((unsigned int *)t11);
    t12 = (1U * t10);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB2;

LAB3:    t14 = (t0 + 3712);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 16U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3776);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t19 = *((unsigned char *)t4);
    t20 = (t13 != t19);
    if (t20 != 0)
        goto LAB4;

LAB6:
LAB5:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(16U, t12, 0);
    goto LAB3;

LAB4:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3776);
    t5 = (t2 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3840);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t19 = (t13 == (unsigned char)3);
    if (t19 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t19 = (t13 == (unsigned char)3);
    if (t19 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 3712);
    t5 = (t2 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 5676U);
    t5 = (t0 + 5798);
    t8 = (t6 + 0U);
    t11 = (t8 + 0U);
    *((int *)t11) = 0;
    t11 = (t8 + 4U);
    *((int *)t11) = 15;
    t11 = (t8 + 8U);
    *((int *)t11) = 1;
    t9 = (15 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t11 = (t8 + 12U);
    *((unsigned int *)t11) = t10;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t4, t2, t5, t6);
    t14 = (t1 + 12U);
    t10 = *((unsigned int *)t14);
    t12 = (1U * t10);
    t20 = (16U != t12);
    if (t20 == 1)
        goto LAB13;

LAB14:    t15 = (t0 + 3712);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t21 = *((char **)t18);
    memcpy(t21, t11, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB11;

LAB13:    xsi_size_not_matching(16U, t12, 0);
    goto LAB14;

}


extern void work_a_3800754326_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3800754326_3212880686_p_0};
	xsi_register_didat("work_a_3800754326_3212880686", "isim/TEST_CPU_isim_beh.exe.sim/work/a_3800754326_3212880686.didat");
	xsi_register_executes(pe);
}
