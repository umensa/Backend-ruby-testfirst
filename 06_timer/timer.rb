class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(number)
    number >= 10 ? number.to_s : "0#{number}"
  end

  def time_string
    second = @seconds % 60
    minute = @seconds / 60
    hour = minute / 60
    minute = minute % 60
    padded(hour) + ":" + padded(minute) + ":" + padded(second)
  end
end
