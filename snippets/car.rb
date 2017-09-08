class Car
  attr_reader :engine
  def initialize
    @engine = 1200
  end
end

class Ford < Car
end

focus = Ford.new
puts focus.engine
