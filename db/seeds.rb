
User.new(name: "Josh",
         email: "josh@gmail.com",
         password: "qweqwe",
         password_confirmation: "qweqwe").save(validate: false)
puts "User Josh created!"

User.new(name: "Admin",
         email: 'admin@gmail.com',
         password: 'qweqwe',
         password_confirmation: 'qweqwe',
         admin: true).save(validate: false)
puts "Admin created!"
