class Workout
  attr_accessor :id, :date, :distance, :duration

  def initialize(id, date, distance, duration)
    @id = id
    @date = date
    @distance = distance
    @duration = duration
  end

  def to_s
    workout = "#{date} - #{distance} km - #{duration}"
    workout
  end
end
