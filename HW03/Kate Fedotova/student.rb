class Student
  attr_accessor :name, :surname, :homeworks, :mentor

  def initialize(name, surname)
    @name = name
    @surname = surname
    @homeworks = []
  end

  def submit_homework(new_hw)
    homework = Homework.new(new_hw)
    @homeworks << homework
    notification_message = "#{name} #{surname} submit homework: #{new_hw}"
    send_notification(notification_message)
    puts homeworks.to_s
  end

  def send_notification(notification_message)
    @mentor&.send_notification(notification_message)
  end

  def submit_mentor(current_mentor)
    @mentor = current_mentor
  end
end
