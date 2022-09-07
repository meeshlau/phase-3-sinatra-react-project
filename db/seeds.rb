puts "🌱 Seeding spices..."

# Seed your database here
emp_2 = Employee.create(first_name: "Michelle", last_name: "Lau", email: "mlau@yhata.com")
emp_3 = Employee.create(first_name: "Scott", last_name: "Lao", email: "slao@yhata.com")
emp_4 = Employee.create(first_name: "Roger", last_name: "Pliska", email: "rpliska@yhata.com")
emp_5 = Employee.create(first_name: "Nancy", last_name: "Ching", email: "nching@yhata.com")
emp_6 = Employee.create(first_name: "Deryl", last_name: "Wan", email: "dwan@yhata.com")
emp_7 = Employee.create(first_name: "Christie", last_name: "Seino", email: "cseino@yhata.com")

Post.create(message: "Hi, this is a test.", employee: emp_2)

puts "✅ Done seeding!"
