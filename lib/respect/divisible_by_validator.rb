module Respect
  class DivisibleByValidator < Validator
    def initialize(divider)
      @divider = divider
    end

    def validate(value)
      unless (value % @divider).zero?
        raise ValidationError, "#{value} is not divisible by #@divider"
      end
    end

    private

    def to_h_org3
      { 'divisibleBy' => @divider }
    end

  end
end
