require_relative './robot.rb'

class People
  attr_accessor :height, :class, :name, :gender, :weight

  def initialize(name)
    @name = name
  end

end