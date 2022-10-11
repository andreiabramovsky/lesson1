# TrainPassanger

# class TrainPassenger
class TrainPassenger < Train

  validate :id, :presence
  validate :id, :format, ID_FORMAT
  validate :id, :type, String
  validate :company, :presence
  validate :type, :presence

  def initialize(id, company, type)
    super(id, company, type)
    @type = 'пассажирский'
  end
end
