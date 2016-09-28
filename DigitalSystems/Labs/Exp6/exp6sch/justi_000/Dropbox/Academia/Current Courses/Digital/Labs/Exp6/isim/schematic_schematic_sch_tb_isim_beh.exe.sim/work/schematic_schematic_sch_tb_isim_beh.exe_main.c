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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000003149700083_1668249201_init();
    unisims_ver_m_00000000001916527538_1360753511_init();
    unisims_ver_m_00000000003344785779_3356631773_init();
    unisims_ver_m_00000000002104292854_3205829195_init();
    work_m_00000000002289865731_0056526237_init();
    unisims_ver_m_00000000001162476414_1323117156_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    unisims_ver_m_00000000001762375489_3501834183_init();
    unisims_ver_m_00000000001915777083_3411452309_init();
    work_m_00000000001534849488_2421892831_init();
    work_m_00000000003861845609_0181236066_init();
    work_m_00000000002745843536_0540155903_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002745843536_0540155903");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
