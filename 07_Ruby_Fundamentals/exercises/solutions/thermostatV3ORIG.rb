
class Thermostat
  attr_accessor :degrees
  attr_reader :target

def initialize(temp, target)
  @degrees = temp
  @target = target
end

def calibrate_temp

  if @degrees > @target
    puts "It's #{degrees}"
    turn_on_heater 
    #puts "It's #{degrees}. That's too hot! Turn on the air conditioner"
  elsif @degrees < @target
    
    puts "Brr!! It's #{degrees}.It's too cold. Turn on the heat"
  else
    puts "ahhh! Just right"
  end
end

def self.detect_temperature(all_temps, target_temp)
  all_temps.each do |temp|
    reading = Thermostat.new(temp, target_temp)
    reading.calibrate_temp
  end
end

all_temps = [45, 65, 85, 95, 66, 99 75, 12, 22, 45, 65, 75,70, 100, 10, 52, 22]

target_temp = 75



private

def turn_on_heater
  puts "That's too hot! Turn on the air conditioner"

end
  
