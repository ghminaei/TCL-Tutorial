##################
# #3: while loop #
##################

set a 0

#pay attention to the exact place of { and }
while {$a < 101} {
    puts $a
    set a [expr $a + 2]
}