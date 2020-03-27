module Minfo
  # Memory value representations in gbs
  class MinfoGb
    def initialize(kbs)
      @gbs = (kbs.to_f / 1024 / 1024).round(2)
    end

    def value
      @gbs
    end

    def +(other)
      MinfoGb.new(value + other.value)
    end

    def -(other)
      MinfoGb.new(value - other.value)
    end

    def ==(other)
      value == other.value
    end
  end
end
