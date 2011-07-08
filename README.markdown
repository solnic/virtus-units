# Virtus Units

This is a set of custom virtus attributes that use ruby-units to convert between
different units of measure.

The project is currently only a code spike, a proof of concept. We'll
see how it goes.

# API

It can look more or less like this:

  class WaterPool
    include Virtus

    attribute :capacity, Volume, :input_unit => :gallon, :output_unit => :lbs
  end

  water_pool = WaterPool.new(:capacity => 10000)
  water_pool.capacity # 37854.118
