json.array! @students.each do |student|
  json.firstName student.first_name
  json.lastName student.last_name
  json.email student.email
  json.phoneNumber student.phone_number
  json.shortBio student.short_bio
  json.linkedinUrl student.linkedin_url
  json.twitterHandle student.twitter_handle
  json.personalSite student.personal_site
  json.onlineResume student.online_resume
  json.githubUrl student.github_url
  json.photo student.photo
  json.capstones student.capstones.each do |capstone|
  end
end