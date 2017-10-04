json.array! @experiences.each do |experience|
  json.startDate experience.start_date
  json.endDate experience.end_date
  json.jobTitle experience.job_title
  json.companyName experience.company_name
  json.details experience.details
  json.id experience.id
end
  