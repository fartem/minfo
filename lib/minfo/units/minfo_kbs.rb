module Minfo
  # Memory value representations in kbs
  class MinfoKbs
    def initialize(kbs)
      @kbs = kbs
    end

    def value
      @kbs
    end

    def +(other)
      MinfoKbs.new(value + other.value)
    end

    def -(other)
      MinfoKbs.new(value - other.value)
    end

    def ==(other)
      value == other.value
    end
  end
end
