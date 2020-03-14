require_relative 'memory_unit'

module Minfo
  class OSInfoUnavailable < StandardError; end

  # Class for manipulating memory information.
  class MemoryShot
    def initialize
      @memory_shot = {}
    end

    # Get total memory value.
    # '/proc/meminfo' line: 'MemTotal:'.
    def total
      _prepare_memory_shot
      @memory_shot['total']
    end

    # Get free memory value.
    # '/proc/meminfo' line: 'MemFree:'.
    def free
      _prepare_memory_shot
      @memory_shot['free']
    end

    # Get used memory value.
    # Calculation: @memory_shot['total'] - @memory_shot['free'].
    def used
      _prepare_memory_shot
      @memory_shot['used']
    end

    private

    # Get memory shot from '/proc/meminfo'.
    # If memory shot empty - parse '/proc/meminfo'.
    def _prepare_memory_shot
      _parse_memory_info if @memory_shot.empty?
    end

    # Parse '/proc/meminfo'.
    def _parse_memory_info
      raise OSInfoUnavailable unless File.exist?('/proc/meminfo')

      File.open('/proc/meminfo').read.each_line do |line|
        _handle_line(line)
      end
      @memory_shot['used'] = MemoryUnit.new(
        @memory_shot['total'] - @memory_shot['free']
      )
    end

    # Handle memory info line.
    def _handle_line(line)
      if line.start_with?('MemTotal:')
        @memory_shot['total'] = _memory_unit(line)
      elsif line.start_with?('MemFree:')
        @memory_shot['free'] = _memory_unit(line)
      end
    end

    # Prepare memory unit from parsed line.
    def _memory_unit(line)
      value = _extract_memory_value(line)
      MemoryUnit.new(value)
    end

    # Parse memory value from line.
    def _extract_memory_value(proc_string)
      proc_string.split(/ +/)[1].to_i
    end
  end
end
