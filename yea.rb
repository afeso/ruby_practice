puts "There are #{24 * 365} hours in a year and,"
puts "There are #{24 * 366} hours in a leap year."

year_hours = 24 * 365
decade_hours = 10 * year_hours
year_old = 22
year_seconds = 60 * year_old

puts "A decade is 10 years \n"
puts "Therefore, there are #{decade_hours * 60} minutes in a decade"
puts ""
puts "If I am currently #{year_old} years, and theres #{year_seconds} minutes in a year"
puts "Therefore, I am roughly about #{year_old * year_seconds} seconds old"

puts "for someone who is 1246 million seconds old, he should be about
#{1246000 / year_hours} years old."
