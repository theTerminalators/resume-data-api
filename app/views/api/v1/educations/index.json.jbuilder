json.array! @educations.each do |education|
  json.startDate education.start_date
  json.endDate education.end_date
  json.degree education.degree
  json.universityName education.university_name
  json.details education.details
end