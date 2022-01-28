Actor.create!([
  {first_name: "Robert", last_name: "Downy, J.R.", known_for: "Iron Man", gender: "male", age: 56, movie_id: nil},
  {first_name: "Tom", last_name: "Holland", known_for: "Spiderman", gender: "male", age: 25, movie_id: nil},
  {first_name: "Zoe", last_name: "Saldana", known_for: "Guardiansofthegalaxy", gender: "Female", age: 43, movie_id: nil},
  {first_name: "Tony", last_name: "Jaa", known_for: "Ong_Bak", gender: "Male", age: 45, movie_id: 3},
  {first_name: "Keanu", last_name: "Reeves", known_for: "Matrix", gender: "Male", age: 57, movie_id: 1},
  {first_name: "Wesley", last_name: "Snipes", known_for: "Blade", gender: "male", age: 59, movie_id: 7}
])
Movie.create!([
  {title: "Toy_Story", year: 1995, plot: "Taking place in a world where toys come to life when humans are not present, the plot focuses on the relationship between an old-fashioned pull-string cowboy doll named Woody and a modern astronaut action figure, Buzz Lightyear.", director: "John Lasseter", english: true},
  {title: "Blade", year: 1998, plot: "In the film, Blade is a Dhampir, a human with vampire strengths but not their weaknesses, who together with his mentor Abraham Whistler and hematologist Karen Jenson, fights against vampires, namely the exceptionally vicious Deacon Frost.", director: "Stephen Norrington", english: true},
  {title: "Monster's_Inc", year: 2001, plot: "The film centers on two monsters James P. Sullivan an\nd his one-eyed partner and best friend Mike Wazowski who are employed at the titular energy-producing factory Monsters, Inc., which g\nenerates power by scaring human children.", director: "Pete_Docter", english: true},
  {title: "Ong_Bak", year: 2003, plot: "In the village of Ban Nong Pradu in rural northeastern Thailand lies an ancient Buddha statue named Ong-Bak. The village falls in despair after thieves from Bangkok decapitate the statue and take the head with them. Ting, a villager extremely skilled in Muay Thai, volunteers to travel to Bangkok to recover the stolen head of Ong-Bak.", director: "Prachya Pinkaew", english: true},
  {title: "The_Matrix", year: 1999, plot: "depicts a dystopian future in which humanity is unknowingly trapped inside a simulated reality, the Matrix, which intelligent machines have created to distract humans while using their bodies as an energy source.", director: "The Wichowskis", english: true}
])
User.create!([
  {name: "Jay", email: "Jay@gmail.com", password_digest: "$2a$12$5dcDHjJdI1wzfH8B6Ne6P.MQKWxBv1HP05EYVK6wxR8jQ3IY5b9TC", admin: false},
  {name: "Harold", email: "Harold@gmail.com", password_digest: "$2a$12$EnABHghAWavqR5yvYTaf4u/T/NsxPCHM/b77xrd1qe2oosGF82s9q", admin: false},
  {name: "Arnold", email: "Arnold@gmail.com", password_digest: "$2a$12$lzSDBO0dwyT8mWzCXlNVOeBb.cVRe3iBddZatLhgCBK86AXVxA7wq", admin: false},
  {name: "Helga", email: "Helga@gmail.com", password_digest: "$2a$12$3g2lVihTGTcIDxj3/.RkjOZTpR2hjIJduGblx08WAJWWWtkYVhc0O", admin: false},
  {name: "Tom", email: "Tom@gmail.com", password_digest: "$2a$12$cPkPrp9oPMBxYhKstzqqlej4oZjpEt2ICYsTWnrCuLbwSfAFTqD6q", admin: true}
])
