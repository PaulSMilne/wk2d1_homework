require('minitest/autorun')
require('minitest/rg')
require_relative('../cars')

class TestCars < MiniTest::Test

    def setup
        @mustang = Car.new(0, 100)
    end

    def test_car_speed
        running_speed = @mustang.speed
        assert_equal(0,running_speed)
    end

    def test_fuel_level
        current_fuel_level = @mustang.fuel
        assert_equal(100, current_fuel_level)
    end

    def test_new_speed
        running_speed = @mustang.accelerate(10)
        assert_equal(10,  running_speed)
    end

    def test_new_fuel_level__speed_under_200
        current_fuel_level = @mustang.new_fuel_level(10)
        assert_equal(95, current_fuel_level)
    end

    def test_new_fuel_level__speed_200_and_over
        current_fuel_level = @mustang.new_fuel_level(200)
        assert_equal("Your car gradually slows to a stop as you have run out of fuel.", current_fuel_level)
    end

    def test_break__10mph_and_over
        running_speed = @mustang.break(42)
        assert_equal(32, running_speed)
    end
       
    def test_break__under_10mph
        running_speed = @mustang.break(8)
        assert_equal(0, running_speed)
    end
    
end
