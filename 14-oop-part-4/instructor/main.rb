require_relative 'student'
require_relative 'professor'

joe_smith = Person.new('Joe', 'Smith')
albert_einstein = Professor.new('Albert', 'Einstein', 'Physics')
jane_doe  = Student.new('Jane', 'Doe')
matt = Student.new('Matt', 'Lee')
mary = Student.new('Mary', 'Marvel')

puts albert_einstein.full_name
puts jane_doe.full_name

cohort = []
cohort << jane_doe
cohort << matt
cohort << mary
#cohort << joe_smith

albert_einstein.teach(cohort)
albert_einstein.teach(cohort)
albert_einstein.teach(cohort)
matt.learn
mary.slack

puts jane_doe.knowledge_level
puts matt.knowledge_level
puts mary.knowledge_level


#puts joe_smith.full_name
#puts joe_smith.learn
