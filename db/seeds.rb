require_relative('../models/student')
require_relative('../models/house')
require( 'pry-byebug' )
# Student.delete_all()
# House.delete_all()

student1 = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'house_name' => 'Gryffindor',
  'age' =>  '16'
})

student2 = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'house_name' => 'Gryffindor',
  'age' =>  '15'
})

student3 = Student.new({
  'first_name' => 'Dracko',
  'last_name' => 'Malfoy',
  'house_name' => 'Slytherin',
  'age' =>  '18'
})

student4 = Student.new({
  'first_name' => 'Luna',
  'last_name' => 'Lovejoy',
  'house_name' => 'Hufflepuff',
  'age' =>  '16'
})

student5 = Student.new({
  'first_name' => 'Cedric',
  'last_name' => 'Diggery',
  'house_name' => 'Ravenclaw',
  'age' =>  '17'
})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()

binding.pry
nil
