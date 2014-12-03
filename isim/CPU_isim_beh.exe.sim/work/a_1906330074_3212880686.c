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
static const char *ng0 = "C:/Users/Nikifor Zhao/CPU/RegisterHeap.vhd";



static void work_a_1906330074_3212880686_p_0(char *t0)
{
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
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 6376);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(37, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 6440);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 10406);
    t8 = xsi_mem_cmp(t1, t2, 4U);
    if (t8 == 1)
        goto LAB3;

LAB16:    t4 = (t0 + 10410);
    t9 = xsi_mem_cmp(t4, t2, 4U);
    if (t9 == 1)
        goto LAB4;

LAB17:    t6 = (t0 + 10414);
    t10 = xsi_mem_cmp(t6, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB18:    t11 = (t0 + 10418);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB19:    t14 = (t0 + 10422);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB20:    t17 = (t0 + 10426);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB21:    t20 = (t0 + 10430);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB22:    t23 = (t0 + 10434);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB23:    t26 = (t0 + 10438);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB24:    t29 = (t0 + 10442);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB25:    t32 = (t0 + 10446);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB26:    t35 = (t0 + 10450);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB27:
LAB15:    xsi_set_current_line(64, ng0);

LAB2:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 10454);
    t8 = xsi_mem_cmp(t1, t2, 4U);
    if (t8 == 1)
        goto LAB30;

LAB43:    t4 = (t0 + 10458);
    t9 = xsi_mem_cmp(t4, t2, 4U);
    if (t9 == 1)
        goto LAB31;

LAB44:    t6 = (t0 + 10462);
    t10 = xsi_mem_cmp(t6, t2, 4U);
    if (t10 == 1)
        goto LAB32;

LAB45:    t11 = (t0 + 10466);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB33;

LAB46:    t14 = (t0 + 10470);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB34;

LAB47:    t17 = (t0 + 10474);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB35;

LAB48:    t20 = (t0 + 10478);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB36;

LAB49:    t23 = (t0 + 10482);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB37;

LAB50:    t26 = (t0 + 10486);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB38;

LAB51:    t29 = (t0 + 10490);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB39;

LAB52:    t32 = (t0 + 10494);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB40;

LAB53:    t35 = (t0 + 10498);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB41;

LAB54:
LAB42:    xsi_set_current_line(93, ng0);

LAB29:    t1 = (t0 + 6280);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(40, ng0);
    t38 = (t0 + 2792U);
    t39 = *((char **)t38);
    t38 = (t0 + 6376);
    t40 = (t38 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 16U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB4:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB9:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB10:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB13:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB14:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t1 = (t0 + 6376);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB28:;
LAB30:    xsi_set_current_line(69, ng0);
    t38 = (t0 + 2792U);
    t39 = *((char **)t38);
    t38 = (t0 + 6440);
    t40 = (t38 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t39, 16U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB29;

LAB31:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB32:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB33:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB34:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB35:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB36:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB37:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB38:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB39:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 4072U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB40:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB41:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t1 = (t0 + 6440);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB55:;
}

static void work_a_1906330074_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1632U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6296);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t4 = (t0 + 10502);
    t10 = xsi_mem_cmp(t4, t8, 4U);
    if (t10 == 1)
        goto LAB9;

LAB22:    t11 = (t0 + 10506);
    t13 = xsi_mem_cmp(t11, t8, 4U);
    if (t13 == 1)
        goto LAB10;

LAB23:    t14 = (t0 + 10510);
    t16 = xsi_mem_cmp(t14, t8, 4U);
    if (t16 == 1)
        goto LAB11;

LAB24:    t17 = (t0 + 10514);
    t19 = xsi_mem_cmp(t17, t8, 4U);
    if (t19 == 1)
        goto LAB12;

LAB25:    t20 = (t0 + 10518);
    t22 = xsi_mem_cmp(t20, t8, 4U);
    if (t22 == 1)
        goto LAB13;

LAB26:    t23 = (t0 + 10522);
    t25 = xsi_mem_cmp(t23, t8, 4U);
    if (t25 == 1)
        goto LAB14;

LAB27:    t26 = (t0 + 10526);
    t28 = xsi_mem_cmp(t26, t8, 4U);
    if (t28 == 1)
        goto LAB15;

LAB28:    t29 = (t0 + 10530);
    t31 = xsi_mem_cmp(t29, t8, 4U);
    if (t31 == 1)
        goto LAB16;

LAB29:    t32 = (t0 + 10534);
    t34 = xsi_mem_cmp(t32, t8, 4U);
    if (t34 == 1)
        goto LAB17;

LAB30:    t35 = (t0 + 10538);
    t37 = xsi_mem_cmp(t35, t8, 4U);
    if (t37 == 1)
        goto LAB18;

LAB31:    t38 = (t0 + 10542);
    t40 = xsi_mem_cmp(t38, t8, 4U);
    if (t40 == 1)
        goto LAB19;

LAB32:    t41 = (t0 + 10546);
    t43 = xsi_mem_cmp(t41, t8, 4U);
    if (t43 == 1)
        goto LAB20;

LAB33:
LAB21:    xsi_set_current_line(127, ng0);

LAB8:    goto LAB3;

LAB5:    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB9:    xsi_set_current_line(103, ng0);
    t44 = (t0 + 1512U);
    t45 = *((char **)t44);
    t44 = (t0 + 6504);
    t46 = (t44 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 16U);
    xsi_driver_first_trans_fast(t44);
    goto LAB8;

LAB10:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6568);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB11:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6632);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB12:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6696);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB13:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6760);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB14:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6824);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB15:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6888);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB16:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 6952);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB17:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 7016);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB18:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 7080);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB19:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 7144);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB20:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 7208);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB34:;
}


extern void work_a_1906330074_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1906330074_3212880686_p_0,(void *)work_a_1906330074_3212880686_p_1};
	xsi_register_didat("work_a_1906330074_3212880686", "isim/CPU_isim_beh.exe.sim/work/a_1906330074_3212880686.didat");
	xsi_register_executes(pe);
}
