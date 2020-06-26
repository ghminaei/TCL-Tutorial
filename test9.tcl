###############
# #9: classes #
###############

# Student is a class
# I don't know why but C is CAPITAL!
Class Student

# show method for Student class
Student instproc show {} {
    # this line is important
    $self instvar name id
    puts "name: $name"
    puts "id: $id"
}

# assign fields to an object
Student ob1
ob1 set name "Ghazal"
ob1 set id 1234

ob1 show

# print a field
puts [ob1 set name]

Student ob2
ob2 set name "Sara"
ob2 set id 2345

ob2 show
