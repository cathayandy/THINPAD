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
static const char *ng0 = "C:/Users/Nikifor Zhao/CPU/ALU.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t38[16];
    char t53[16];
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
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 3232);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(23, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5084);
    t8 = xsi_mem_cmp(t1, t2, 4U);
    if (t8 == 1)
        goto LAB3;

LAB16:    t4 = (t0 + 5088);
    t9 = xsi_mem_cmp(t4, t2, 4U);
    if (t9 == 1)
        goto LAB4;

LAB17:    t6 = (t0 + 5092);
    t10 = xsi_mem_cmp(t6, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB18:    t11 = (t0 + 5096);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB19:    t14 = (t0 + 5100);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB20:    t17 = (t0 + 5104);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB21:    t20 = (t0 + 5108);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB22:    t23 = (t0 + 5112);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB23:    t26 = (t0 + 5116);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB24:    t29 = (t0 + 5120);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB25:    t32 = (t0 + 5124);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB26:    t35 = (t0 + 5128);
    t37 = xsi_mem_cmp(t35, t2, 4U);
    if (t37 == 1)
        goto LAB14;

LAB27:
LAB15:    xsi_set_current_line(67, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 3232);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(26, ng0);
    t39 = (t0 + 1032U);
    t40 = *((char **)t39);
    t39 = (t0 + 4976U);
    t41 = (t0 + 1192U);
    t42 = *((char **)t41);
    t41 = (t0 + 4992U);
    t43 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t38, t40, t39, t42, t41);
    t44 = (t38 + 12U);
    t45 = *((unsigned int *)t44);
    t46 = (1U * t45);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB29;

LAB30:    t48 = (t0 + 3232);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memcpy(t52, t43, 16U);
    xsi_driver_first_trans_fast_port(t48);
    goto LAB2;

LAB4:    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t5 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t38, t2, t1, t4, t3);
    t6 = (t38 + 12U);
    t45 = *((unsigned int *)t6);
    t46 = (1U * t45);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB31;

LAB32:    t7 = (t0 + 3232);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB5:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t5 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t38, t2, t1, t4, t3);
    t6 = (t38 + 12U);
    t45 = *((unsigned int *)t6);
    t46 = (1U * t45);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB33;

LAB34:    t7 = (t0 + 3232);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t53, t2, t1, (unsigned char)0);
    t4 = (t53 + 12U);
    t45 = *((unsigned int *)t4);
    t45 = (t45 * 1U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4992U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t7 = xsi_vhdl_bitvec_sll(t7, t3, t45, t8);
    t11 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t38, t7, t53);
    t12 = (t38 + 12U);
    t46 = *((unsigned int *)t12);
    t46 = (t46 * 1U);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB35;

LAB36:    t14 = (t0 + 3232);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t11, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t53, t2, t1, (unsigned char)0);
    t4 = (t53 + 12U);
    t45 = *((unsigned int *)t4);
    t45 = (t45 * 1U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 4992U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t5);
    t7 = xsi_vhdl_bitvec_sra(t7, t3, t45, t8);
    t11 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t38, t7, t53);
    t12 = (t38 + 12U);
    t46 = *((unsigned int *)t12);
    t46 = (t46 * 1U);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB37;

LAB38:    t14 = (t0 + 3232);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t11, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB8:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t5 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t38, t2, t1, t4, t3);
    t6 = (t38 + 12U);
    t45 = *((unsigned int *)t6);
    t46 = (1U * t45);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB39;

LAB40:    t7 = (t0 + 3232);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB9:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t47 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t47 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(41, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t8 = (0 - 15);
    t45 = (t8 * -1);
    t46 = (1U * t45);
    t3 = (t2 + t46);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 3232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);

LAB42:    goto LAB2;

LAB10:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t47 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t47 != 0)
        goto LAB44;

LAB46:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (t0 + 3232);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 16U);
    xsi_driver_first_trans_fast_port(t3);

LAB45:    goto LAB2;

LAB11:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB12:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 5132);
    t5 = (t38 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 15;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t8 = (15 - 0);
    t45 = (t8 * 1);
    t45 = (t45 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t45;
    t47 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t38);
    if (t47 != 0)
        goto LAB47;

LAB49:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB48:    goto LAB2;

LAB13:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 5148);
    t5 = (t38 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 15;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t8 = (15 - 0);
    t45 = (t8 * 1);
    t45 = (t45 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t45;
    t47 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t38);
    if (t47 != 0)
        goto LAB50;

LAB52:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB51:    goto LAB2;

LAB14:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4976U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4992U);
    t5 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t38, t2, t1, t4, t3);
    t6 = (t38 + 12U);
    t45 = *((unsigned int *)t6);
    t46 = (1U * t45);
    t47 = (16U != t46);
    if (t47 == 1)
        goto LAB53;

LAB54:    t7 = (t0 + 3232);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3296);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB28:;
LAB29:    xsi_size_not_matching(16U, t46, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(16U, t46, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(16U, t46, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(16U, t46, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(16U, t46, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(16U, t46, 0);
    goto LAB40;

LAB41:    xsi_set_current_line(39, ng0);
    t5 = xsi_get_transient_memory(16U);
    memset(t5, 0, 16U);
    t6 = t5;
    memset(t6, (unsigned char)2, 16U);
    t7 = (t0 + 3232);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB42;

LAB44:    xsi_set_current_line(45, ng0);
    t5 = xsi_get_transient_memory(16U);
    memset(t5, 0, 16U);
    t6 = t5;
    memset(t6, (unsigned char)2, 16U);
    t8 = (0 - 15);
    t45 = (t8 * -1);
    t46 = (1U * t45);
    t7 = (t6 + t46);
    *((unsigned char *)t7) = (unsigned char)3;
    t11 = (t0 + 3232);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 16U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB45;

LAB47:    xsi_set_current_line(53, ng0);
    t6 = (t0 + 3296);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB48;

LAB50:    xsi_set_current_line(59, ng0);
    t6 = (t0 + 3296);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    goto LAB51;

LAB53:    xsi_size_not_matching(16U, t46, 0);
    goto LAB54;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/TEST_CPU_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
