require('minitest/autorun')
require('minitest/rg')
require_relative('../engine')

class TestEngines < MiniTest::Test

    def setup
        @turbo = Engine.new(25, 10)
        @normal = Engine.new(10, 5)
        @electric = Engine.new(5, 1)
    end

    def test_acceleration
        assert_equal(25, @turbo.speed)
    end

    def test_fuel_consumption
        assert_equal(10, @turbo.fuel)
    end

end