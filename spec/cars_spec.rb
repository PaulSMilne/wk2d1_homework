require('minitest/autorun')
require('minitest/rg')
require_relative('../cars')

class TestCars < MiniTest::Test

    def setup
        @mustang = Car.new(0, 100)
    end

    def test_what_is_car_speed
        running_speed = @mustang.speed
        assert_equal(0,running_speed)
    end

end
