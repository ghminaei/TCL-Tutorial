#####################################
# #7: return values and global vars #
#####################################

proc sum {a b c} {
    # global c
    # uncomment line above to
    # make c a global variable
    set c [expr $a + $b + $c]
    return $c
    # return a value
}

set x [sum 12 23 45]
puts $x


proc func {} {
    return [list 12 23 77 90]
    # return a list of vars
}

puts [func]