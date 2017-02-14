require 'redcarpet'
require 'yaml'
require 'mail'

module BeibeiWeekend
  class SendMail
    
    class << self
      def send mail
        if File.exist? mail

          begin
            Log.info "正在为你发送邮件..."
            markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
            html = "<!DOCTYPE html><html><head><style>"
            html += File.read "./resource/base.css" if File.exist? "./resource/base.css"
            html += "</style></head><body>"
            html += markdown.render File.read mail
            html += "</body></html>"

            mail_config = YAML.load_file "./resource/config.yml" if File.exist? "./resource/config.yml"

            address = mail_config["mail_defaults"]["address"]
            domain = mail_config["mail_defaults"]["domain"]
            port = mail_config["mail_defaults"]["port"]
            user_name = mail_config["mail_defaults"]["user_name"]
            password = mail_config["mail_defaults"]["password"]
            authentication = mail_config["mail_defaults"]["authentication"]
            enable_starttls_auto = mail_config["mail_defaults"]["enable_starttls_auto"]

            Mail.defaults do
              delivery_method  :smtp,
                               :address    => address,
                               :domain     => domain,
                               :port       => port,
                               :user_name  => user_name,
                               :password   => password,
                               :authentication => authentication,
                               :enable_starttls_auto => enable_starttls_auto
            end

            from = mail_config["mail_send_info"]["from"]
            to = mail_config["mail_send_info"]["to"]
            cc = mail_config["mail_send_info"]["cc"]

            mail = Mail.new do
              from     from
              to       to
              cc       cc
              subject   File.basename mail, ".md"
              html_part do
                content_type 'text/html; charset=UTF-8'
                body html
              end
            end
            mail.deliver!
            Log.info "邮件发送成功"
          rescue
            Log.error "发送邮件失败,请重现尝试"
          end

        else
          Log.warn "指定的邮件不存在!"
        end

      end
    end
    
  end
end