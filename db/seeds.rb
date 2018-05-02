# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
if User.count == 0
  user=User.create(email: 'admin@gmail.com', password: '123123', password_confirmation: '123123', name: "Administrador", role:'admin')
  puts 'CREATED ADMIN USER: ' << user.email
end

# Environment variables (ENV['...']) can be set in the file .env file.
