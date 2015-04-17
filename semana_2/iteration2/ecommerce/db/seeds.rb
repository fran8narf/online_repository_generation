# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Laptop.create( brand: "ASUS", model: "ZENBOOK UX32VD", proccessor_brand: "Intel", ram: 8, price: "800€")
Laptop.create( brand: "Packard Bell", model: "note jk-650", proccessor_brand: "Intel", ram: 4, price: "550€")
	#creates add a laptop to the database