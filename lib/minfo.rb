require_relative 'minfo/memory_data'

module Minfo
  class PlatformError < StandardError; end

  # Class for executes memory shot.
  # If OS is not Linux - raises PlatformError (because supports only Linux).
  class MemoryInfo
    def memory_shot
      return Minfo::MemoryData.new if RUBY_PLATFORM.include?('linux')

      raise PlatformError, "Unsupported OS: #{RUBY_PLATFORM}"
    end
  end
end
