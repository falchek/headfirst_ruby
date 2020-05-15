# These methods are placed in the top-level execution environment
# That means they're called without the dot operate. 
def accelerate
    puts "Stepping on the gas"
    puts "Speeding up!"
end

def sound_horn
    puts "Pressing the horn button"
    puts "Beep beep!"
end

def use_headlights(brightness = "low-beams")
    puts "Turning on #{brightness} headlights"
    puts "Watch out for deer!"
end

def start_engine
    puts "Starting the engine!  Vroommm vroooooommmm!!"
end

def stop_engine
    puts "Stopping engine... "
end

def mileage(miles_driven, gas_used)
    if gas_used == 0 
        return 0.0
    end
    miles_driven / gas_used
end

use_headlights
stop_engine
start_engine
sound_horn
accelerate
use_headlights("high-beam")
stop_engine