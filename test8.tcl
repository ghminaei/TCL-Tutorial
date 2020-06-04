##########################
# #8: working with files #
##########################


# f is file handler
set f [open "text.txt" w+]
# write to file
puts $f "Hello World!"

# remember to close files
close $f


set f2 [open "text.txt" r]
# read from file
gets $f2 d
puts $d
close $f2
