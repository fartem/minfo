module Minfo
  class MemoryUnit
    def initialize(memory_value)
      @memory_value = memory_value
    end

    def to_kb
      @memory_value
    end

    def to_mb
      (@memory_value.to_f / 1024).round(2)
    end

    def to_gb
      (@memory_value.to_f / 1048576).round(2)
    end
  end
end
