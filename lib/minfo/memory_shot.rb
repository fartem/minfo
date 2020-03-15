require_relative 'memory_unit'

module Minfo
  class OSInfoUnavailable < StandardError; end

  # Class for manipulating memory information.
  class MemoryShot
    # Get total memory value.
    # '/proc/meminfo' line: 'MemTotal:'.
    def total
      _parse_proc_info_for('MemTotal:')
    end

    # Get free memory value.
    # '/proc/meminfo' line: 'MemFree:'.
    def free
      _parse_proc_info_for('MemFree:')
    end

    # Get used memory value.
    # Calculation: total - used
    def used
      total - free
    end

    private

    # Parse '/proc/meminfo'.
    def _parse_proc_info_for(parameter)
      raise OSInfoUnavailable unless File.exist?('/proc/meminfo')

      value = 0
      File.open('/proc/meminfo').read.each_line do |line|
        value = _memory_unit(line) if line.start_with?(parameter)
      end

      value
    end

    # Prepare memory unit from parsed line.
    def _memory_unit(line)
      value = line.split(/ +/)[1].to_i
      MemoryUnit.new(value)
    end
  end
end
