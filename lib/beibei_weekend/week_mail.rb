require "fileutils"

module BeibeiWeekend
  class WeekMail
    
    class << self
      def generate mail
        begin
          if File.exist? "./resource/template.md"
            FileUtils.cp "./resource/template.md", "./#{mail}.md"
          else
            Log.error "未找到模板文件,生成失败!"
          end
        rescue
          Log.error "生成邮件模板失败!"
        end
      end
    end
    
  end
end