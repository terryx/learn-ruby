# this is car class
class Car
  attr_reader :state
  # attr_writer :state
  # attr_accessor :state
  def initialize(engine, tyres)
    @engine = engine
    @tyres = tyres
  end

  def start
    @state = 'stopped'
    p 'Car has stopped'
  end

  def stop
    @state = 'started'
    p 'Car has stopped'
  end
end

car = Car.new 'My beautiful engine', [1, 2, 3, 4]
# puts car.inspect

p "The current state of car: #{car.state}"
car.start
p "The current state of car: #{car.state}"
car.stop
