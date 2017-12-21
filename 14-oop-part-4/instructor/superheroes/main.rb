require_relative 'hero'

superman = Kryptonian.new('Clark Kent')
supergirl = Kryptonian.new('Kara Danvers')

superman.hit(supergirl)

puts superman.health
puts supergirl.health

supergirl.run

superman.hit(supergirl)

puts supergirl.health

supergirl.walk
puts supergirl.conscious?

wolverine = XWeapon.new('Logan')
puts wolverine.power

flash = Speedster.new('Barry Allen')

flash.hit(wolverine)
superman.hit(wolverine)
puts superman.power
puts "Wolverine: #{ wolverine.health }"
wolverine.rest
puts "Wolverine: #{ wolverine.health }"

batman = BatPeople.new('Bruce Wayne')
superman.hit(batman)
batman.activate_shield
superman.hit(batman)
puts "Batman: #{ batman.health }"
batman.fire_super_weapon(superman)
puts "Superman: #{ superman.health }"
