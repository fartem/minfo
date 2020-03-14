require_relative 'minfo/memory_shot'

module Minfo
  class PlatformError < StandardError; end

  # Class for executes memory shot.
  # If OS is not Linux - raises PlatformError (because supports only Linux).
  class MemoryInfo
    def memory_shot
      return Minfo::MemoryShot.new if RUBY_PLATFORM.include?('linux')

      raise PlatformError, "Unsupported OS: #{RUBY_PLATFORM}"
    end
  end
end
