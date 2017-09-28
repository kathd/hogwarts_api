200.times do

  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthdate: Faker::Date.birthday(7, 16),
    favorite_character: Faker::HarryPotter.character,
    original_house: Faker::HarryPotter.house
    )

end