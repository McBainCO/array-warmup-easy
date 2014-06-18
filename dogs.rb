require_relative "testing_library"

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]
my_dog = ["Reggie"]

def how_many_dogs(dogs)
  dogs.length
end


def name_lengths(dogs)
  dog_l = dogs.dup
  dog_l.map do |d|
    d.length
  end
end

def reverse_dog_names(dogs)
  dogs.map {|r| r.reverse}
end

def first_three_dogs_with_each(dogs)
  dog_t = dogs.dup
  dog_t.map {|t| t[0..2]}
end

def first_three_dogs_without_each(dogs)
  #dogs_ft = dogs
  #dogs_ft[0..2]
  dogs[0..2]
end

def reverse_case_dog_names(dogs)
  #dog_c = dogs
  dogs.map {|c| c.swapcase}
end

def sum_of_all_dog_name_lengths(dogs)
  #this is called reduce
  sum = 0
  dogs.each do |dog_name|
    sum = sum + dog_name.length
  end
end

def dogs_with_long_names(dogs)
  dogs.map {|dog_name| dog_name.length > 4}
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80

check("how_many_dogs", how_many_dogs(dogs) == 6)
check("how_many_dogs", how_many_dogs(my_dog) == 1)

check("name_lengths", name_lengths(dogs) == [4, 8, 4, 6, 4, 7])
check("reverse_dog_names", reverse_dog_names(dogs) == ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
check("first_three_dogs_with_each", first_three_dogs_with_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("first_three_dogs_without_each", first_three_dogs_without_each(dogs) == ["Fido", "Harleigh", "Mali"])
check("reverse_case_dog_names", reverse_case_dog_names(dogs) == ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs) == 33)
check("dogs_with_long_names", dogs_with_long_names(dogs) == [false, true, false, true, false, true])

