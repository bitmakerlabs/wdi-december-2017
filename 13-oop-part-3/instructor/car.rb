class Car

  @@default_colour = 'Brown'

  def initialize(owner)
    @owner  = owner
    @colour = @@default_colour
    @broken = false
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

  def broken?
    @broken
  end

  def crash(other_car = nil)
    @broken = true

    if other_car
      other_car.crash()
    end
  end

end
