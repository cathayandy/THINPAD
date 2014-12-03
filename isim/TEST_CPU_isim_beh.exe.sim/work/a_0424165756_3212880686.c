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
static const char *ng0 = "C:/Users/Nikifor Zhao/CPU/Extend.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0424165756_3212880686_p_0(char *t0)
{
    char t34[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t35;
    unsigned char t37;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4586);
    t8 = xsi_mem_cmp(t1, t2, 3U);
    if (t8 == 1)
        goto LAB3;

LAB10:    t4 = (t0 + 4589);
    t9 = xsi_mem_cmp(t4, t2, 3U);
    if (t9 == 1)
        goto LAB4;

LAB11:    t6 = (t0 + 4592);
    t10 = xsi_mem_cmp(t6, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB12:    t11 = (t0 + 4595);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB13:    t14 = (t0 + 4598);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB14:    t17 = (t0 + 4601);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_delta(t3, 0U, 16U, 0LL);

LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(21, ng0);
    t20 = xsi_get_transient_memory(8U);
    memset(t20, 0, 8U);
    t21 = t20;
    t22 = (t0 + 1032U);
    t23 = *((char **)t22);
    t24 = (7 - 10);
    t25 = (t24 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t22 = (t23 + t27);
    t28 = *((unsigned char *)t22);
    memset(t21, t28, 8U);
    t29 = (t0 + 2912);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t20, 8U);
    xsi_driver_first_trans_delta(t29, 0U, 8U, 0LL);
    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 7);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_delta(t3, 8U, 8U, 0LL);
    goto LAB2;

LAB4:    xsi_set_current_line(24, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t8 = (3 - 10);
    t25 = (t8 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t3 = (t4 + t27);
    t28 = *((unsigned char *)t3);
    memset(t2, t28, 12U);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 12U);
    xsi_driver_first_trans_delta(t5, 0U, 12U, 0LL);
    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 3);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_delta(t3, 12U, 4U, 0LL);
    goto LAB2;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_delta(t3, 0U, 8U, 0LL);
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 7);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_delta(t3, 8U, 8U, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);
    t1 = xsi_get_transient_memory(12U);
    memset(t1, 0, 12U);
    t2 = t1;
    memset(t2, (unsigned char)2, 12U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 12U);
    xsi_driver_first_trans_delta(t3, 0U, 12U, 0LL);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 4);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t34 + 0U);
    t4 = (t3 + 0U);
    *((int *)t4) = 4;
    t4 = (t3 + 4U);
    *((int *)t4) = 2;
    t4 = (t3 + 8U);
    *((int *)t4) = -1;
    t8 = (2 - 4);
    t35 = (t8 * -1);
    t35 = (t35 + 1);
    t4 = (t3 + 12U);
    *((unsigned int *)t4) = t35;
    t4 = (t0 + 4604);
    t6 = (t36 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 2;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (2 - 0);
    t35 = (t9 * 1);
    t35 = (t35 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t35;
    t28 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t34, t4, t36);
    if (t28 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2912);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 12U, 1, 0LL);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 4);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_delta(t3, 13U, 3U, 0LL);

LAB18:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);
    t1 = xsi_get_transient_memory(11U);
    memset(t1, 0, 11U);
    t2 = t1;
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t8 = (4 - 10);
    t25 = (t8 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t3 = (t4 + t27);
    t28 = *((unsigned char *)t3);
    memset(t2, t28, 11U);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 11U);
    xsi_driver_first_trans_delta(t5, 0U, 11U, 0LL);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 4);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 5U);
    xsi_driver_first_trans_delta(t3, 11U, 5U, 0LL);
    goto LAB2;

LAB8:    xsi_set_current_line(41, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t8 = (10 - 10);
    t25 = (t8 * -1);
    t26 = (1U * t25);
    t27 = (0 + t26);
    t3 = (t4 + t27);
    t28 = *((unsigned char *)t3);
    memset(t2, t28, 5U);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_delta(t5, 0U, 5U, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = (10 - 10);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t1 = (t2 + t27);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 11U);
    xsi_driver_first_trans_delta(t3, 5U, 11U, 0LL);
    goto LAB2;

LAB16:;
LAB17:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 4607);
    t37 = (4U != 4U);
    if (t37 == 1)
        goto LAB20;

LAB21:    t12 = (t0 + 2912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 4U);
    xsi_driver_first_trans_delta(t12, 12U, 4U, 0LL);
    goto LAB18;

LAB20:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB21;

}


extern void work_a_0424165756_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0424165756_3212880686_p_0};
	xsi_register_didat("work_a_0424165756_3212880686", "isim/TEST_CPU_isim_beh.exe.sim/work/a_0424165756_3212880686.didat");
	xsi_register_executes(pe);
}
