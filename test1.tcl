#########################
# #1: print & variables #
#########################

set a 10
#use set command to assign value to var
set b "this"  
set c 2.3


set r [expr $a + 12]
#use expr to evaluate an expression

#refer to a variable using $
puts $r

#print things
puts -nonewline "hello "
puts "world"

#run this using: ns filename.tcl