# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(first_name: "Aliana", last_name: "Melendez", email: "aliana@betterment.com", phone_number: "555-555-5555", short_bio: "There is some bio infomation here", linkedin_url: "www.linkedin.com", twitter_handle: "twitter", personal_site: "www.mysite.whatever", online_resume: "whatever.pdf", github_url: "www.github.com/alianam", photo: "url.goes.here")

Student.create(first_name: "Joe", last_name: "Joseph", email: "joe@joe.com", phone_number: "555-555-5555", short_bio: "There is some bio infomation here", linkedin_url: "www.linkedin.com", twitter_handle: "twitter", personal_site: "www.mysite.whatever", online_resume: "whatever.pdf", github_url: "www.github.com/alianam", photo: "url.goes.here")


# student = Unirest.post("http://localhost:3000/api/v1/students?first_name=bill",
#   headers:{ "Accept" => "application/json" }
#     parameters:{ 
#       first_name: "Test User",
#       last_name: "Last Name",
#       email: "fjvlafbjsd",
#       phone_number: "gjlrsbghrae",
#       short_bio: "hfkesgrhes",
#       linkedin_url: "fbehwlghr",
#       twitter_handle: "fhewagfhre",
#       personal_site: "helgfhkaerg",
#       online_resume: "hegkhskr",
#       github_url: "fehwalige",
#       photo: "ghrehsgul"
#     }
# ).body