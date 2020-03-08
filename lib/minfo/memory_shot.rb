require_relative 'memory_unit'

module Minfo
  class OSInfoUnavailable < StandardError; end

  class MemoryShot
    @@memory_shot = Hash.new

    def total
      prepare_memory_shot
      @@memory_shot['total']
    end

    def prepare_memory_shot
      raise OSInfoUnavailable unless File.exist?('/proc/meminfo')

      if @@memory_shot.empty?
        total = 0
        free = 0
        File.open('/proc/meminfo').read.each_line { |line|
          if line.start_with?('MemTotal:')
            total = line.split(/ +/)[1].to_i
            @@memory_shot['total'] = MemoryUnit.new(total)
          elsif line.start_with?('MemFree:')
            free = line.split(/ +/)[1].to_i
            @@memory_shot['free'] = MemoryUnit.new(free)
          end
        }
        @@memory_shot['used'] = MemoryUnit.new(total - free)
      end
    end

    def free
      prepare_memory_shot
      @@memory_shot['free']
    end

    def used
      prepare_memory_shot
      @@memory_shot['used']
    end
  end
end
