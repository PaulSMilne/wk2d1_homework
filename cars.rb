class Car

    attr_reader :speed, :fuel

    def initialize (speed, fuel)
        @speed  = speed
        @fuel   = fuel
    end

    def what_is_car_speed(speed)
        return speed if (@speed == speed)
    end
end
