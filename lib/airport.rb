require_relative 'plane'

class Airport

  DEFAULT_CAPACITY = 20
  def initialize
    @planes = Array.new
  end

  def plane_landing
    if !full 
      plane = Plane.new
      @planes << plane
      plane
    end
  end

  def taking_off
    Plane.new
  end


  def full
  @planes.count >= DEFAULT_CAPACITY
  end

  def count_planes
    @planes.count
  end
end

# def leaving?
#   @plane.leaving?
#   if taking_off
#     leaving? == true
#   end
# end
