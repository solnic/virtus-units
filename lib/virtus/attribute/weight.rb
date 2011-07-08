module Virtus
  class Attribute
    class Weight < Float
      accept_options :input_unit, :output_unit

      input_unit  :kg
      output_unit :lbs

      def typecast(value)
        value_in_lbs = Unit("#{value} #{self.class.options[:input_unit]}").to(
          self.class.options[:output_unit].to_s)

        super(value_in_lbs.scalar)
      end

    end # Weight
  end # Attribute
end # Virtus
