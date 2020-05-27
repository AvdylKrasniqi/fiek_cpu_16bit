/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_159(char*, char *);
extern void execute_641(char*, char *);
extern void execute_626(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_628(char*, char *);
extern void execute_629(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_632(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void execute_636(char*, char *);
extern void execute_637(char*, char *);
extern void execute_638(char*, char *);
extern void execute_639(char*, char *);
extern void execute_640(char*, char *);
extern void execute_6(char*, char *);
extern void execute_384(char*, char *);
extern void execute_160(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_172(char*, char *);
extern void execute_161(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_173(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_76(char*, char *);
extern void execute_386(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_82(char*, char *);
extern void execute_397(char*, char *);
extern void execute_398(char*, char *);
extern void execute_85(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_642(char*, char *);
extern void execute_643(char*, char *);
extern void execute_644(char*, char *);
extern void execute_645(char*, char *);
extern void execute_646(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[65] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_159, (funcp)execute_641, (funcp)execute_626, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_628, (funcp)execute_629, (funcp)execute_630, (funcp)execute_631, (funcp)execute_632, (funcp)execute_633, (funcp)execute_634, (funcp)execute_635, (funcp)execute_636, (funcp)execute_637, (funcp)execute_638, (funcp)execute_639, (funcp)execute_640, (funcp)execute_6, (funcp)execute_384, (funcp)execute_160, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_172, (funcp)execute_161, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_169, (funcp)execute_173, (funcp)execute_73, (funcp)execute_74, (funcp)execute_76, (funcp)execute_386, (funcp)execute_79, (funcp)execute_80, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_393, (funcp)execute_394, (funcp)execute_395, (funcp)execute_396, (funcp)execute_82, (funcp)execute_397, (funcp)execute_398, (funcp)execute_85, (funcp)execute_152, (funcp)execute_153, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_642, (funcp)execute_643, (funcp)execute_644, (funcp)execute_645, (funcp)execute_646, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 65;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/fiek_cpu_tb_behav/xsim.reloc",  (void **)funcTab, 65);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/fiek_cpu_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/fiek_cpu_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/fiek_cpu_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/fiek_cpu_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/fiek_cpu_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
