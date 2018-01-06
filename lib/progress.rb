class Progress
  attr_accessor :id, :account, :workout

  def initialize(id, account, workout)
    @id = id
    @account = account
    @workout = workout
  end

  def to_s
    "#{account.login} - date: #{workout.date} distance: #{workout.distance} duration: #{workout.duration}"
  end
end
