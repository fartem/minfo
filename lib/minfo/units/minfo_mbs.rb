module Minfo
  # Memory value representations in mbs
  class MinfoMbs
    def initialize(kbs)
      @kbs = kbs
      @mbs = kbs / 1024
    end

    def value
      @mbs
    end

    def to_kbs
      @kbs
    end

    def +(other)
      MinfoMbs.new(to_kbs + other.to_kbs)
    end

    def -(other)
      MinfoMbs.new(to_kbs - other.to_kbs)
    end

    def ==(other)
      value == other.value
    end
  end
end
