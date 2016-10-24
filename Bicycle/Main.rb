require 'Gear.rb'
require 'Wheel.rb'

class Main
  #Creo el objeto Gear
  puts Gear.new(:chainring => 52,
                :cog => 11,
                :wheel => Wheel.new(26,1.5)).gear_inches
  
  #Creo el objeto Gear
  puts Gear.new(:chainring => 52,
                :cog => 11,
                :wheel => Wheel.new(26,1.5)).ratio
  
end