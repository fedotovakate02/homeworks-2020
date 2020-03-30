require_relative 'mentor'
require_relative 'student'
require_relative 'homework'
require_relative 'notification'

module App
    def self.run
      student = Student.new(name: 'John', surname: 'Doe')
      mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')
  
      student.submit_homework!(homework_data)
      student.homeworks # => [Homework, ...]
  
      mentor.subscribe_to(student)
      mentor.notifications # => []
  
      student.submit_homework!(homework_data)
      mentor.notifications # => [Notification, ...]
  
      mentor.read_notifications!
      mentor.notifications # => []
    end
  end
