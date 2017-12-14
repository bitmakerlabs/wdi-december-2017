number_of_cats = 10
number_of_dogs = 20

animals = number_of_cats + number_of_dogs

favourite_films = 100
favourite_songs = 200

favourite_media = favourite_films + favourite_songs

def sum(first_number, second_number)
  # first_number = number_of_cats = 10
  # second_number = number_of_dogs = 20

  if first_number < 0 || second_number < 0
    return "Both numbers must be positive"
  end

  first_number + second_number
end

result = sum(number_of_cats, number_of_dogs)
puts result
