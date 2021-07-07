@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim mips_behav -key {Behavioral:sim_1:Functional:mips} -tclbatch mips.tcl -view F:/Vivadoprojects/mips32multi/mips_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
