
require_relative('pizza')

class Pizzeria

  @@company_name = 'Pizza Empire'
  @@pizzas = []

  def initialize(owner_name)
    @store_owner = owner_name
    @open = true
    @pizzas = 5
    @local_pizzas = []
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def restock
    if @open == false
      @pizzas = 5
    end
  end

  def order
    if @pizzas <= 0 || @open == false
      return
    end

    new_pizza = Pizza.new
    @pizzas -= 1
    new_pizza.add_topping('cheese')

    new_pizza.bake
    new_pizza.cut
    new_pizza.cut
    new_pizza.cut
    new_pizza.cut

    @@pizzas << new_pizza
    @local_pizzas << new_pizza
    return new_pizza
  end

  def self.all_pizzas
    return @@pizzas
  end

  def local_pizzas
    return @local_pizzas
  end

  def company_name
    return @@company_name
  end

  def self.company_name
    return @@company_name
  end

  def store_owner
    return @store_owner
  end

  def store_name
    return "#{@store_owner}'s #{@@company_name}"
  end

  # does not make sense!
  # def self.store_owner
  #   return @store_owner
  # end
end

super_pizza = Pizzeria.new('Suzy')
mega_pizza = Pizzeria.new('Dale')

puts Pizzeria.all_pizzas.inspect
puts super_pizza.local_pizzas.inspect
puts mega_pizza.local_pizzas.inspect
puts '---'

super_pizza.order
puts Pizzeria.all_pizzas.inspect
puts super_pizza.local_pizzas.inspect
puts mega_pizza.local_pizzas.inspect
puts '---'

mega_pizza.order
puts Pizzeria.all_pizzas.inspect
puts super_pizza.local_pizzas.inspect
puts mega_pizza.local_pizzas.inspect
# puts super_pizza.store_owner
# puts super_pizza.store_name
# puts super_pizza.company_name
#
# puts mega_pizza.store_owner
# puts mega_pizza.store_name
# puts mega_pizza.company_name
#
# puts Pizzeria.company_name
# puts super_pizza.inspect
# puts mega_pizza.inspect

# my_pizza = super_pizza.order
# puts my_pizza.inspect
#
# puts super_pizza.inspect
# my_pizza2 = mega_pizza.order
