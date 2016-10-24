class RevealingReferences
  attr_reader :wheels
  
  def initialize(data)
    @wheels = weelify(data)
  end
  
  def diameter
    wheels.collect {|wheel|
      diameter(wheel)
    }
  end
  
  Wheel = Struct.new(:rim, :tire)
  
  def weelify(data)
    data.collect {|cell|
      Wheel.new(cell[0], cell[1])
    }
  end
  
  def diameter(wheel)
    wheel.rim + (wheel.tire * 2)
  end

end

puts RevealingReferences.new([[520,120],[210,120]]).diameter()