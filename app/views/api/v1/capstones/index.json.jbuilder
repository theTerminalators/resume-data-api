json.array! @capstones.each do |capstone|
  json.name capstone.name
  json.description capstone.description
  json.url capstone.url
  json.screenshot capstone.screenshot
  json.id capstone.id
end