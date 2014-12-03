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
static const char *ng0 = "C:/Users/Nikifor Zhao/CPU/Forward.vhd";



static void work_a_4095883993_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4096);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6248);
    t8 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    if ((!(t8)) == 1)
        goto LAB5;

LAB6:    t7 = (unsigned char)0;

LAB7:    if (t7 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6252);
    t8 = 1;
    if (4U == 4U)
        goto LAB26;

LAB27:    t8 = 0;

LAB28:    if ((!(t8)) == 1)
        goto LAB23;

LAB24:    t7 = (unsigned char)0;

LAB25:    if (t7 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6256);
    t8 = 1;
    if (4U == 4U)
        goto LAB44;

LAB45:    t8 = 0;

LAB46:    if ((!(t8)) == 1)
        goto LAB41;

LAB42:    t7 = (unsigned char)0;

LAB43:    if (t7 != 0)
        goto LAB38;

LAB40:
LAB39:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6260);
    t8 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t8 = 0;

LAB64:    if ((!(t8)) == 1)
        goto LAB59;

LAB60:    t7 = (unsigned char)0;

LAB61:    if (t7 != 0)
        goto LAB56;

LAB58:
LAB57:    t1 = (t0 + 3952);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t15 = (t0 + 4032);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB3;

LAB5:    t6 = (t0 + 1992U);
    t10 = *((char **)t6);
    t6 = (t0 + 1832U);
    t11 = *((char **)t6);
    t12 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t12 = 0;

LAB16:    t7 = t12;
    goto LAB7;

LAB8:    t9 = 0;

LAB11:    if (t9 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t4 = (t2 + t9);
    t5 = (t1 + t9);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB14:    t13 = 0;

LAB17:    if (t13 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t14))
        goto LAB15;

LAB19:    t13 = (t13 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(50, ng0);
    t15 = (t0 + 1192U);
    t16 = *((char **)t15);
    t15 = (t0 + 4096);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB21;

LAB23:    t6 = (t0 + 2152U);
    t10 = *((char **)t6);
    t6 = (t0 + 1832U);
    t11 = *((char **)t6);
    t12 = 1;
    if (4U == 4U)
        goto LAB32;

LAB33:    t12 = 0;

LAB34:    t7 = t12;
    goto LAB25;

LAB26:    t9 = 0;

LAB29:    if (t9 < 4U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t4 = (t2 + t9);
    t5 = (t1 + t9);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB27;

LAB31:    t9 = (t9 + 1);
    goto LAB29;

LAB32:    t13 = 0;

LAB35:    if (t13 < 4U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t6 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t14))
        goto LAB33;

LAB37:    t13 = (t13 + 1);
    goto LAB35;

LAB38:    xsi_set_current_line(53, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t15 = (t0 + 4032);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB39;

LAB41:    t6 = (t0 + 1992U);
    t10 = *((char **)t6);
    t6 = (t0 + 1672U);
    t11 = *((char **)t6);
    t12 = 1;
    if (4U == 4U)
        goto LAB50;

LAB51:    t12 = 0;

LAB52:    t7 = t12;
    goto LAB43;

LAB44:    t9 = 0;

LAB47:    if (t9 < 4U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t4 = (t2 + t9);
    t5 = (t1 + t9);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB45;

LAB49:    t9 = (t9 + 1);
    goto LAB47;

LAB50:    t13 = 0;

LAB53:    if (t13 < 4U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t6 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t14))
        goto LAB51;

LAB55:    t13 = (t13 + 1);
    goto LAB53;

LAB56:    xsi_set_current_line(56, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t15 = (t0 + 4096);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 16U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB57;

LAB59:    t6 = (t0 + 2152U);
    t10 = *((char **)t6);
    t6 = (t0 + 1672U);
    t11 = *((char **)t6);
    t12 = 1;
    if (4U == 4U)
        goto LAB68;

LAB69:    t12 = 0;

LAB70:    t7 = t12;
    goto LAB61;

LAB62:    t9 = 0;

LAB65:    if (t9 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t4 = (t2 + t9);
    t5 = (t1 + t9);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB63;

LAB67:    t9 = (t9 + 1);
    goto LAB65;

LAB68:    t13 = 0;

LAB71:    if (t13 < 4U)
        goto LAB72;
    else
        goto LAB70;

LAB72:    t6 = (t10 + t13);
    t14 = (t11 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t14))
        goto LAB69;

LAB73:    t13 = (t13 + 1);
    goto LAB71;

}


extern void work_a_4095883993_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4095883993_3212880686_p_0};
	xsi_register_didat("work_a_4095883993_3212880686", "isim/CPU_isim_beh.exe.sim/work/a_4095883993_3212880686.didat");
	xsi_register_executes(pe);
}
