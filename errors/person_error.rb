class PersonNotFoundError < StandardError
  def initialize(msg = 'Person not found in database')
    super
  end
end
