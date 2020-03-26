module Minfo
  # Memory value representations in mbs
  class MinfoMb
    def initialize(kbs)
      @mbs = kbs / 1024
    end

    def value
      @mbs
    end

    def -(other)
      MinfoMb.new(value - other.value)
    end
  end
end
