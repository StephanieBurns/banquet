# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sku.create(name: 'Tray 1 - Assorted Sandwiches and Desserts', price: 100, cogs: 45)
Sku.create(name: 'Tray 2 - Assorted Sandwiches and Soups', price: 130, cogs: 55)
Sku.create(name: 'Tray 3 - Assorted Sandwiches, Soups and Desserts', price: 180, cogs: 65)
Sku.create(name: 'Tray 4 - Assorted Sandwiches, Soups, Salads, and Desserts', price: 200, cogs: 85)
Sku.create(name: '6 Turkey Sandwiches', price: 24, cogs: 6)
Sku.create(name: '6 Ham Sandwiches', price: 24, cogs: 6)
Sku.create(name: '6 Chicken Sandwiches', price: 24, cogs: 6)
Sku.create(name: '6 Veggie Sandwiches', price: 20, cogs: 4)
Sku.create(name: '6 Clam Chowders', price: 12, cogs: 6)
Sku.create(name: '6 Minestrones', price: 6, cogs: 3)
Sku.create(name: '6 Caesar Salads', price: 18, cogs: 6)
Sku.create(name: '6 Green Salads', price: 12, cogs: 6)
Sku.create(name: '6 Chocolate Cakes', price: 12, cogs: 4)
Sku.create(name: '6 Fruit Cups', price: 12, cogs: 4)
Sku.create(name: 'Delivery', price: 20, cogs: 0)

User.create(email:"admin@banquet.com", password:"my_super_secret_passwd", password_confirmation:"my_super_secret_passwd")
