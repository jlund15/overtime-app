namespace :notification do
  desc "sends SMS notification to employees asking them to log overtime or not"
  task sms: :environment do
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate overall employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and s link to log times
    #   User.all.each do |user|
    #     SmsTool.send_sms()
    # number: "555-555-3323"
    # No spaces or dashes
    # exactly 10 charachters
    # all charachters have to be a number
  end

end
