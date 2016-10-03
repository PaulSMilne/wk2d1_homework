class Car

    attr_reader :speed, :fuel

    def initialize (speed, fuel)
        @speed  = speed
        @fuel   = fuel
    end

    def car_speed(speed)
        return speed if (@speed == speed)
    end 

    def accelerate(add_speed)
        @speed += add_speed
    end

    def new_fuel_level(add_speed)
         running_speed = accelerate(add_speed)
         if running_speed < 200
            @fuel -= ((running_speed/10) * 5)
            return @fuel
        else 
            return "Your car gradually slows to a stop as you have run out of fuel."
        end
    end

    def break(current_speed)
        @speed = current_speed
        if current_speed >=10
            @speed -= 10
        else 
            @speed = 0
        end
        return @speed
    end
    
end
