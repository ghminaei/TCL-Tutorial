##################
# #4: for loop   #
##################

#for {init} {condition} {step}
#incr is: set a [expr $a+1]
for {set a 1} {$a < 11} {incr a} {
    puts $a
}


for {set a 1} {$a < 20} {set a [expr $a+2]} {
    puts $a
}