json.array! @skills.each do |skill|
  json.skillNmae skill.skill_name
  json.studentId skill.student_id
end