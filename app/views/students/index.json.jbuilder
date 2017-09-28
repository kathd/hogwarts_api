json.array! @students.each do |student|
  json.first_name student.first_name
  json.last_name student.last_name
  json.original_house student.original_house
  json.favorite_character student.favorite_character
end