require 'Gear.rb'
require 'Wheel.rb'

class Main

  puts Gear.new(:chainring => 52,
                :cog => 11,
                :wheel => Wheel.new(26,1.5)).gear_inches
  puts Gear.new(:chainring => 52,
                :cog => 11,
                :wheel => Wheel.new(26,1.5)).ratio
  
end