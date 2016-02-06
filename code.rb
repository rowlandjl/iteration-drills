#Write Ruby<->English answers here as comments in your code

# * For every element called 'number' in the array 'numbers', print out the product of 3 * number
# * For every element called 'name' in the array 'names', print out the length of 'name'
# * For every element called 'number' in the array 'numbers' iterate sum plus number, print out sum
# * For every element called 'name' and 'age' in the hash 'hash', print out the name and age
# * For every element called 'transaction' and 'value' in the hash 'account', iterate sum plus value, print "The value of the account is 'sum'"
# * For every element called 'name' and 'address' in the hash 'addresses', print out the name and address

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |number|
  sum += number
end
puts sum
# * How would you print out each value of the array?
array.each do |number|
  puts number
end
# * What is the sum of all of the even numbers?
sum = 0
array.each do |number|
  if number % 2 == 0
    sum += number
  end
end
puts sum
# * What is the sum of all of the odd numbers?
sum = 0
array.each do |number|
  if number % 2 != 0
    sum += number
  end
end
puts sum
# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each do |number|
  if number % 5 == 0
    sum += number
  end
end
puts sum
# * What is the sum of the squares of all the numbers in the array?
sum = 0
array.each do |number|
  sum += number * number
end
puts sum

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
array.reverse.each do |names|
  puts names
end
# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |name|
  sum += name.length
end
puts sum
# * How many names in `array` are less than 5 characters long?
counter = 0
array.each do |name|
  if name.length < 5
    counter += 1
  end
end
puts counter
# * How many names in `array` end in a vowel?
counter = 0
array.each do |name|
  last_letter = name[-1]
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(last_letter)
    counter += 1
  end
end
puts counter
# * How many names in `array` are more than 5 characters long?
counter = 0
array.each do |name|
  if name.length > 5
    counter += 1
  end
end
puts counter
# * How many names in `array` are exactly 5 characters in length?
counter = 0
array.each do |name|
  if name.length == 5
    counter += 1
  end
end
puts counter

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
puts best_records.keys
# * How would you print out all the names of the albums?
puts best_records.values
# * Which artist has the longest name?
puts best_records.keys.max

# ["dan", "jessica", "sammy"]
longest_name = ""
best_records.keys.each do |artist_name|
  if artist_name.length > longest_name.length
    longest_name = artist_name
  end
end
# * How would you change all the album titles for every artist to `Greatest Hits`?
best_records.keys.each do |key|
  best_records[key] = "Greatest Hits"
end

best_records.each do |artist, album|
  best_records[artist] = "Greatest Hits"
end

# * How would you delete a key-value pair if the artist's name ends in a vowel?
best_records.each do |artist, album|
  last_letter = artist[-1]
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(last_letter)
    best_records.delete(artist)
  end
end


ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
puts ages.keys
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each do |name, age|
  puts "#{name} is #{age} years old."
end
# * How would you print out every person with odd numbered age?
ages.each do |name, age|
  if age % 2 != 0
    puts name
  end
end
# * How would you delete everyone under 25 years of age?
ages.each do |name, age|
  if age < 25
    ages.delete(name)
  end
end
# * What is the name and age of everyone with a name greater than or equal to 5 characters?
ages.each do |name, age|
  if name.length >= 5
    puts "#{name}: #{age}"
  end
end

people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
people.keys.each do |name|
  puts name
end

people.each do | name, contact_info |
  puts name
end
# * How would you print out all the names of `people` and which company they work for?
people.keys.each do |name|
  puts "#{name} works at #{people[name]["company"]}"
end


people.each do |name, contact_info|
  puts "#{name} works at #{contact_info["company"]}"
end
# * What are the names of all the children of everyone in `people`?
people.keys.each do |name|
  puts people[name]["children"].inspect
end
puts "======="
children = []
people.each do |name, contact_info|
  puts contact_info["children"]
  # if contact_info["children"] != nil
  if !contact_info["children"].nil?
    children += contact_info["children"]
  end
end
puts children.inspect
puts "========="
# * What are the names of all the companies that people work for?
people.keys.each do |name|
  puts people[name]["company"]
end

companies = []
people.each do |name, contact_info|
  puts contact_info["company"]
  companies << contact_info["company"]
end
puts companies.inspect
# * How would you convert all the phone numbers to the same standard (pick one)?
people.each do |name, contact_info|
  contact_info["phone"].gsub!(".", '')
  contact_info["phone"].gsub!("-", '')
  contact_info["phone"].gsub!("(", '')
  contact_info["phone"].gsub!(")", '')
  contact_info["phone"].gsub!(" ", '')

  if contact_info["phone"].length == 11
    contact_info["phone"] = contact_info["phone"][1..-1]
  end

  # (508)-555-6573
  # puts contact_info["phone"]
  contact_info["phone"].insert(0, '(')
  contact_info["phone"].insert(4, ')')
  contact_info["phone"].insert(5, '-')
  contact_info["phone"].insert(9, '-')
  puts contact_info["phone"]
end

puts "======================="


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
people.each do |array|
  array.each do |name, contact_info|
    puts name
  end
end

# * What are the names of all the children in `people`?
people.each do |people_info|
  people_info.each do |name, contact_info|
    if !contact_info["children"].nil?
      puts contact_info["children"]
    end
  end
end

puts people[2].inspect
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
people[3] = {"Phone Numbers" => {}}
people.each do |people_info|
  people_info.each do |name, contact_info|
    if !contact_info["phone"].nil?
      people[3]["Phone Numbers"]["#{name}"] = "#{contact_info["phone"]}"
    end
  end
end

puts people[3].inspect


# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
people[4] = {"Employers" => {}}
people.each do |people_info|
  people_info.each do |name, contact_info|
    if !contact_info["company"].nil?
      people[4]["Employers"]["#{name}"] = "#{contact_info["company"]}"
    end
  end
end
puts people[4].inspect
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
people[5] = {"children_count" => {}}
people.each do |people_info|
  people_info.each do |name, contact_info|
    if !contact_info["children"].nil?
      people[5]["children_count"]["#{name}"] = "#{contact_info["children"].length}"
    end
  end
end

puts people[5].inspect
