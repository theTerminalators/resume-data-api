

# Student.create(first_name: "Aliana", last_name: "Melendez", email: "aliana@betterment.com", phone_number: "555-555-5555", short_bio: "There is some bio infomation here", linkedin_url: "www.linkedin.com", twitter_handle: "twitter", personal_site: "www.mysite.whatever", online_resume: "whatever.pdf", github_url: "www.github.com/alianam", photo: "url.goes.here")

# Student.create(first_name: "Joe", last_name: "Joseph", email: "joe@joe.com", phone_number: "555-555-5555", short_bio: "There is some bio infomation here", linkedin_url: "www.linkedin.com", twitter_handle: "twitter", personal_site: "www.mysite.whatever", online_resume: "whatever.pdf", github_url: "www.github.com/alianam", photo: "url.goes.here")


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

Capstone.create!([
  {name: "coolest app", description: "cool stuff", url: "www.coolstuff.com", screenshot: "empty", student_id: 1},
  {name: "coolest app", description: "cool stuff", url: "www.coolstuff.com", screenshot: "empty", student_id: 2}
])

Education.create!([
  {start_date: "7/2017", end_date: "10/2017", degree: "Master Engineer", university_name: "Actualize", details: "Best Bootcamp", student_id: 1},
  {start_date: "7/2017", end_date: "10/2017", degree: "Master Engineer", university_name: "Actualize", details: "Best Bootcamp", student_id: 2}
])

Experience.create!([
  {start_date: "10/2005", end_date: "4/2009", job_title: "CEO", company_name: "Dell", details: "top honcho", student_id: 1},
  {start_date: "10/2000", end_date: "4/2007", job_title: "CEO", company_name: "IBM", details: "top honcho", student_id: 2}
])

Skill.create!([
  {skill_name: "ruby", student_id: 1},
  {skill_name: "CSS", student_id: 2}
])

