##############################
# #10: classes - constructor #
##############################

Class Student

Student instproc show {} {
    $self instvar name id
    puts "name: $name"
    puts "id: $id"
}

# use init to define constructor
Student instproc init {} {
    $self instvar name id
    set name "defult"
    set id 00
}

Student ob1
ob1 show