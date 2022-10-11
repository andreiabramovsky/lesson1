# WagonPassenger

# class WagonPassenger
class WagonPassenger < Wagon
  attr_reader :type

  validate :number, :presence
  validate :number, :format, NUMBER_FORMAT
  validate :company, :presence
  validate :total_space, :presence

  def initialize(number, company, total_space)
    super(number, company, total_space)
    @type = 'пассажирский'
  end

  def take_space
    raise 'В вагоне нет свободных мест' if free_space.zero?

    self.occupied_space += 1
    self.free_space -= 1
  end
end
