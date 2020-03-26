module Minfo
  # Memory value representations in kbs
  class MinfoKb
    def initialize(kbs)
      @kbs = kbs
    end

    def value
      @kbs
    end

    def -(other)
      MinfoKb.new(value - other.value)
    end
  end
end
