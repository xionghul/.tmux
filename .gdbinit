file /home/luoxhu/workspace/gcc-git/gcc-trunk_debug/gcc/cc1
#dir /home/luoxhu/workspace/gcc-git/gcc/
#set args -I /usr/include -D_GNU_SOURCE fibonacci.cpp -quiet -dumpbase fibonacci.cpp -auxbase func -O3 -std=c++11 -version -fdump-tree-slsr-details -o /tmp/cccPMlRH.s
set args -quiet -v -imultiarch powerpc64le-linux-gnu -iprefix /home/luoxhu/workspace/gcc-git/build/gcc/../lib/gcc/powerpc64le-unknown-linux-gnu/9.0.1/ -isystem /home/luoxhu/workspace/gcc-git/build/gcc/include -isystem /home/luoxhu/workspace/gcc-git/build/gcc/include-fixed testcase.c -quiet -dumpbase testcase.c -auxbase testcase -O3 -version -fdump-tree-all-details -o testcase.s

#-mtune=generic 

#break vect_analyze_loop

source ~/gdbinit.inc
#source ~/.gdbinit.1

#break insert_initializers

#break reload_cse_regs

#break cgraph_optimize
#break execute_ipa_pass_list
#break gimple_register_cfg_hooks
#break execute_all_ipa_transforms
#break execute_pass_list
#break tree_rest_of_compilation
#break cgraph_expand_function
#break compile_file
#break rest_of_decl_compilation

#break rs6000_legitimate_address if (mode == TFmode)
#break rs6000_legitimize_address if (ALTIVEC_VECTOR_MODE (mode))

#run

#~/.cgdb/cgdbrc
#set ignorecase
#set ts=4
#set wso=vertical
#set eld=shortarrow
#set hls
#map <F9> :until<cr>

source ~/.gdbinit.stl
add-auto-load-safe-path /home/luoxhu/workspace/gcc-git/gcc-trunk_debug/gcc/
source /home/luoxhu/workspace/gcc-git/gcc-trunk/gcc/gdbinit.in
python import sys; sys.path.append('/home/luoxhu/workspace/gcc-git/gcc-trunk/gcc'); import gdbhooks

