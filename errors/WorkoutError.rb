class WorkoutNotFoundError < StandardError
  def initialize(msg = 'Workout not found in database')
    super
  end
end
