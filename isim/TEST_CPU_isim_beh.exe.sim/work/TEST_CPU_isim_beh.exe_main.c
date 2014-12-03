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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1991350011_3212880686_init();
    work_a_1707665227_1566020785_init();
    work_a_0347971011_3212880686_init();
    work_a_3222946569_3212880686_init();
    work_a_1906330074_3212880686_init();
    work_a_0424165756_3212880686_init();
    work_a_0758161670_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0978040133_3212880686_init();
    work_a_1579866252_3212880686_init();
    work_a_4095883993_3212880686_init();
    work_a_3800754326_3212880686_init();
    work_a_4183448815_1566020785_init();
    work_a_1415465652_1566020785_init();
    work_a_1966753845_2372691052_init();


    xsi_register_tops("work_a_1966753845_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
