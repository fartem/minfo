module Minfo
  # Memory value representations in gbs
  class MinfoGbs
    def initialize(kbs)
      @kbs = kbs
      @gbs = (kbs.to_f / 1024 / 1024).round(2)
    end

    def value
      @gbs
    end

    def to_kbs
      @kbs
    end

    def +(other)
      MinfoGbs.new(to_kbs + other.to_kbs)
    end

    def -(other)
      MinfoGbs.new(to_kbs - other.to_kbs)
    end

    def ==(other)
      value == other.value
    end
  end
end
