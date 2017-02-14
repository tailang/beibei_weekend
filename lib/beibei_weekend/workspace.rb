require "fileutils"

module BeibeiWeekend
  class Workspace

    class << self
      def create workspace_name
        if Dir.exist? workspace_name
          Log.error "你创建的workspace已经存在!"
        else
          Log.info "正在创建workspace..."
          begin
            Dir.mkdir workspace_name
            @resource_dir = File.expand_path('../resource', __FILE__)
            FileUtils.cp_r @resource_dir, "./#{workspace_name}/"
          rescue
            Log.error "创建workspace失败,请重新尝试!"
          end
          Log.info "创建workspace完成!"
        end
      end
    end
  end

end
