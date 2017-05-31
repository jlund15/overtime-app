@employee = Employee.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: "3856956182")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", 
                  password: "asdfasdf", 
                  password_confirmation: "asdfasdf", 
                  first_name: "Admin", 
                  last_name: "Name",
                  phone: "3856956182")

puts "1 Admin user created"

100.times do |audit_log|
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
  AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))
end

puts "3 audit logs have been created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras mattis consectetur purus sit amet fermentum. Vestibulum id ligula porta felis euismod semper.", user_id: @employee.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
