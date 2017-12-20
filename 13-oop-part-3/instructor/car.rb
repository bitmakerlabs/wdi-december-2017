class Car

  @@default_colour = 'Brown'

  def initialize(owner)
    @owner  = owner
    @colour = @@default_colour
  end

  def self.default_colour=(default_colour)
    @@default_colour = default_colour
  end

  def colour
    @colour
  end

  def honk
    'Beep'
  end

end
