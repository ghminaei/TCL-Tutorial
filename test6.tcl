##################
# #6: procedures #
##################

#function: 
# proc name {arg1 arg2} {
#     statements  
# }

#pay attention to the exact place of { and }
proc max {a b} {
    if {$a > $b} {
        puts $a
    } else {
        puts $b
    }
}


# calling a function 
# and passing arguments
max 23 45