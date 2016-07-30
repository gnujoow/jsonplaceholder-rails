# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'
require 'open-uri'
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/posts').read)

doc.each do |a|
  Post.create(userId: a["userId"], title: a["title"], body: a["body"])
end
