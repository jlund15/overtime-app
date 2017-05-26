class ManagerMailer < ApplicationMailer
  def email ManagerMailer
    @manager = manager
    mail(to: manager.email, subject: "Daily Overtime Request Email")
  end
end
