# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

authors = Author.create([
    {first_name: 'John', last_name: 'Doe', age: 25}, 
    {first_name: 'Jane', last_name: 'Doe', age: 22}, 
    {first_name: 'Alice', last_name: 'Smith', age: 30}, 
    {first_name: 'Bob', last_name: 'Smith', age: 35}, 
    {first_name: 'Charlie', last_name: 'Brown', age: 40}
])

articles = Article.create([
    {title: "Hello World", body: "This is the first article", author: authors[0]}, 
    {title: "Goodbye World", body: "This is the last article", author: authors[1]}, 
    {title: "Rails is Awesome", body: "This is the third article", author: authors[2]}, 
    {title: "Ruby is Awesome", body: "This is the fourth article", author: authors[3]}, 
    {title: "Hello Ruby", body: "This is the fifth article", author: authors[4]}
])