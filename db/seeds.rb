# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tip.delete_all
Tip.create!([
			{ :tip_text => '"точное совпадение" - точное совпадение фразы, например "подключение к сети интернет"'},
			{ :tip_text => "! или - - не показывать результаты где встречается это слово, например 'обеды -ресторан' или 'обеды !ресторан'"},
			{ :tip_text => "| - или, например 'кафе | ресторан'"}
			])
