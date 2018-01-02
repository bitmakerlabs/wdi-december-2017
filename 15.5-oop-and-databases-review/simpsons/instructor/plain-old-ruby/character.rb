class Character
  def initialize(name, catchphrase)
    @name = name
    @catchphrase = catchphrase
  end
  def speak
    puts "#{@name} says \"#{@catchphrase}\""
  end
end

class Homer < Character
  def initialize
    super('Homer', "D'oh!")
  end
end

# class Marge < Character
#   def initialize
#     @name = 'Marge'
#     @catchphrase = "I don't think that's a very good idea."
#   end
# end
