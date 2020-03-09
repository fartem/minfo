require_relative 'memory_unit'

module Minfo
  class OSInfoUnavailable < StandardError; end

  class MemoryShot
    def initialize
      @memory_shot = Hash.new
    end

    def total
      prepare_memory_shot
      @memory_shot['total']
    end

    def prepare_memory_shot
      if @memory_shot.empty?
        raise OSInfoUnavailable, 'Cannot find or read /proc/meminfo' unless File.exist?('/proc/meminfo')

        total = 0
        free = 0
        File.open('/proc/meminfo').read.each_line { |line|
          if line.start_with?('MemTotal:')
            total = extract_memory_value(line)
            @memory_shot['total'] = MemoryUnit.new(total)
          elsif line.start_with?('MemFree:')
            free = extract_memory_value(line)
            @memory_shot['free'] = MemoryUnit.new(free)
          end
        }
        @memory_shot['used'] = MemoryUnit.new(total - free)
      end
    end

    def extract_memory_value(proc_string)
      proc_string.split(/ +/)[1].to_i
    end

    def free
      prepare_memory_shot
      @memory_shot['free']
    end

    def used
      prepare_memory_shot
      @memory_shot['used']
    end
  end
end
