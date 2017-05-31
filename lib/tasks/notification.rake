namespace :notification do
  desc "sends SMS notification to employees asking them to log overtime or not"
  task sms: :environment do
    #if Time.now.sunday?
      employees = Employee.all?
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://bmf-jared-overtime.herokuapp.com"
      
      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SusTool.send_sms(number: employee.phone, message: notification_message)
        end
      end
    #end
  end

  desc "sends mail notification to managers (admin users) each day informing of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0 
      admin_users.each do |admin|
        ManagerMailer.(admin).deliver_now
      end
    end
  end