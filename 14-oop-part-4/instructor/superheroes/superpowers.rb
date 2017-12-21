module Flight
  CRUISING_ALTITUDE = 1000

  def fly
    @altitude = CRUISING_ALTITUDE
  end

  def land
    @altitude = 0
  end
end

module Speed
  FAST = 1000

  def run
    @speed = FAST
  end

  def walk
    @speed = Hero::DEFAULT_SPEED
  end
end

module Strength
  GODLY_STRENGTH = 40

  def initialize(name)
    super(name)
    @power += GODLY_STRENGTH
  end
end

module MartialArts
  MARTIAL_ARTS_POWER = 10

  def initialize(name)
    super(name)
    @power += MARTIAL_ARTS_POWER
  end
end

module Regeneration
  FAST_HEALING = 40

  def initialize(name)
    super(name)
    @healing_factor += FAST_HEALING
  end
end

module Genius

  def activate_shield
    @shielded = true
  end

  def take_hit(damage)
    if @shielded
      @shielded = false
    else
      super(damage)
    end
  end

end

module Rich

  INITIAL_BANKROLL = 1_000_000
  PROFIT = 500_000
  SUPER_WEAPON_COST = 1_000_000
  SUPER_DAMAGE = 1000

  def initialize(name)
    super(name)
    @bankroll = INITIAL_BANKROLL
  end

  def make_money
    @bankroll += PROFIT
  end

  def fire_super_weapon(opponent)
    if @bankroll >= SUPER_WEAPON_COST
      opponent.take_hit(SUPER_DAMAGE)
      @bankroll -= SUPER_WEAPON_COST
    end
  end

end
