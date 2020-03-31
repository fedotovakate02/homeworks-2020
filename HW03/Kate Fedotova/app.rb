require_relative 'mentor'
require_relative 'student'
require_relative 'homework'
require_relative 'notification'

student = Student.new('John', 'Doe')
mentor = Mentor.new('Jack', 'Gonsales')

student.submit_homework('homework_1')
student.homeworks # => [Homework, ...]
