# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if Article.count == 0
  Article.create([
    {title: 'たいとる1', content: 'ほげほげ1'},
    {title: 'たいとる2', content: 'ほげほげ2'},
    {title: 'たいとる3', content: 'ほげほげ3'},
    {title: 'たいとる4', content: 'ほげほげ4'},
    {title: 'たいとる5', content: 'ほげほげ5'},
    {title: 'たいとる6', content: 'ほげほげ6'},
  ])
end