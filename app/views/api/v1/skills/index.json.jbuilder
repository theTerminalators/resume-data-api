json.array! @skills.each do |skill|
  json.skillName skill.skill_name
  json.studentId skill.student_id
end