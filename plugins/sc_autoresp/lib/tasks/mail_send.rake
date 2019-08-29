namespace :redmine do
  namespace :sc_autoresp do
    desc 'Send emails'
    task :mail => :environment do
      config = ScConfig.first.where(active: true)
      tickets = Issue.where(status_id: config.i_status).where(project_id: config.project_id)
      tickets.each do |t|
        @mail = Mail.deliver do
          from config.from_email
          to t.author.email_address
          subject config.subject
          body config.body
        end
      end
    end
  end
end