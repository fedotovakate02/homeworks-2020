class Mentor
  attr_accessor :name, :surname

  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def subscribe_to
    # передать студента и у студента вызвать метод submit_mentor
  end

  def notifications; end

  def read_notifications; end
end
