require_relative 'memory_unit'

module Minfo
  class OSInfoUnavailable < StandardError; end

  class MemoryShot
    def initialize
      @memory_shot = {}
    end

    def total
      prepare_memory_shot
      @memory_shot['total']
    end

    def prepare_memory_shot
      if @memory_shot.empty?
        raise OSInfoUnavailable unless File.exist?('/proc/meminfo')

        parse_memory_info
      end
    end

    def parse_memory_info
      File.open('/proc/meminfo').read.each_line do |line|
        if line.start_with?('MemTotal:')
          @memory_shot['total'] = memory_unit(line)
        elsif line.start_with?('MemFree:')
          @memory_shot['free'] = memory_unit(line)
        end
      end
      @memory_shot['used'] = MemoryUnit.new(
        @memory_shot['total'] - @memory_shot['free']
      )
    end

    def memory_unit(line)
      total = extract_memory_value(line)
      MemoryUnit.new(total)
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
