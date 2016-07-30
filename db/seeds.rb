
require 'json'
require 'open-uri'

#seeding posts
puts "seeding posts"
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/posts').read)
doc.each do |a|
  Post.create(userId: a["userId"], title: a["title"], body: a["body"])
end

#seeding comments
puts "seeding comments"
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/comments').read)
doc.each do |a|
  Comment.create(postId: a["postId"], name: a["name"], email: a["email"], body: a["body"])
end

#seeding albums
puts "seeding albums"
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/comments').read)
doc.each do |a|
  Album.create(userId: a["userId"], title: a['title'])
end

#seeding photos
puts "seeding photos"
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/comments').read)
doc.each do |a|
  Photo.create(albumId: a["albumId"], title: a['title'], url: a["url"], thumbnailUrl: a['thumbnailUrl'])
end

#seeding todos
puts "seeding todos"
doc = JSON.parse(open('https://jsonplaceholder.typicode.com/comments').read)
doc.each do |a|
  Todo.create(userId: a["userId"], title: a['title'], completed: a["completed"])
end
