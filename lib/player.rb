class Player
  attr_reader :name
  attr_accessor :hit_points

  def initialize(name, hit_points)
    @name = name
    @hit_points = hit_points
  end
end
