#############################
# #11: classes - destructor #
#############################

Class Student

# use init to define destructor
Student instproc destroy {} {
    puts "destroy"
}
Student ob1
ob1 destroy