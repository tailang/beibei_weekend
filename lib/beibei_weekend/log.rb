module BeibeiWeekend
  class Log
    class Color
      class << self
        def time
          "\e[37m"
        end

        def warn
          "\e[33;1m"
        end

        def info
          "\e[32m"
        end

        def error
          "\e[31;1m"
        end

        def reset
          "\e[0m"
        end

        def command
          "\e[34m"
        end
      end
    end

    class << self
      def warn message
        puts "#{Color.warn}WARN: #{message}#{Color.reset}"
      end

      def info message
        puts "#{Color.info}INFO: #{message}#{Color.reset}"
      end

      def error message
        puts "#{Color.error}ERROR: #{message}#{Color.reset}", STDERR
      end

      def command message
        puts "#{Color.command}RUN: \e[4m#{message}#{Color.reset}"
      end

      def puts message, io = STDOUT
        io.puts "#{Color.time}[#{Time.new}]#{Color.reset} #{message}"
      end
    end
  end
end
