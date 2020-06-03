set disable-randomization

break fancy_abort
break internal_error
#break abort
#break exit

define ptree
  call debug_tree ($arg0)
end

define pr
  call debug_rtx ($arg0)
end
define pr2
  call debug_rtx ($arg0)
  call debug_rtx ($arg1)
end

define prl
  call debug_rtx_list (get_insns(), $arg0)
end

define prx
  set debug_rtx_count = 1
  set $RTX=debug_rtx_find(get_insns(),$arg0)
  set debug_rtx_count = 0
end

define prxl
  set debug_rtx_count = $arg1
  set $RTX=debug_rtx_find(get_insns(),$arg0)
  set debug_rtx_count = 0
end

define prxx
set $INSN=get_insns()
while ((int)$INSN!=0&&(int)$arg0!=((struct rtx_def *)$INSN)->fld[0].rtint)
set $INSN=((struct rtx_def *)$INSN)->fld[2].rtx
end
output debug_rtx($INSN)
set $RTX=$INSN
end

document prx
Print the full structure of insn N.
end

define prf
set $FILE=fopen ("$arg0", "w")
print print_rtl($FILE, get_insns())
print fclose($FILE)
end

document prf
Print all insns to file FILE.
end

define prfs
set $FILE=fopen ("$arg0", "a")
print print_rtl_single($FILE, $arg0)
print fclose($FILE)
end

document prf
Print an insn to file FILE.
end

define pfunc
print current_function_name()
end

document pfunc
Print the name of the function currently being compiled.
end

define ps
  call debug_gimple_stmt ($arg0)
end

document ps
Print a gimple statement.
end

define pbb
if($arg0 >= 0 &&  $arg0 <= 10000)
  call debug_bb_n_slim($arg0)
else
  call debug_bb_n_slim($arg0->index)
end
end

define pfuns
  call push_cfun($arg0)
  call dump_flow_info(stderr, 0)
  call pop_cfun()
end

define pfun
  if($argc != 0)
     print function_name($arg0)
  else
     print current_function_name()
  end
end

document pbb
  Print basic block <arg>
end

define pallbb
if (cfun != 0)
  call dump_flow_info(stderr, 0)
else
   Print "not set cfun"
end
end

document pallbb
  Print all basic block
end

define preference
  call ($arg0)->dump_references(stderr)
end

define preferring
  call $arg0->dump_referring(stderr)
end

define pnode
  call $arg0->dump(stderr)
end

define pedge
  Print ($arg0)->caller->dump_name()
  if ($arg0->callee != 0)
      Print $arg0->callee->dump_name()
  else
      Print  " -> NULL"
   end
end

define pcgraph
 call cgraph_node::dump_cgraph(stderr)
end
