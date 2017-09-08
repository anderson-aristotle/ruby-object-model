module Sleepable
  def go_to_sleep
    # code here
  end
end

class Person
  include Sleepable
end

class Computer
  include Sleepable
end
