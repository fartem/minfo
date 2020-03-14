require_relative 'minfo/memory_shot'

module Minfo
  class PlatformError < StandardError; end

  # Class for executes memory shot.
  class MemoryInfo
    def memory_shot
      return Minfo::MemoryShot.new if RUBY_PLATFORM.include?('linux')

      raise PlatformError, "Unsupported OS: #{RUBY_PLATFORM}"
    end
  end
end
