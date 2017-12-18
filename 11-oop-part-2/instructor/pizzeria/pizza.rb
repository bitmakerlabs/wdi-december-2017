
class Pizza
  def initialize
    @baked = false
    @slices = 0
    @toppings = []
  end

  def add_topping(topping)
    @toppings << topping
  end

  def bake
    @baked = true
  end

  def cut
    if @baked
      @slices += 2
    end
  end

  def eat
    if @slices >= 1 && @baked
      @slices -= 1
    end
  end
end

# my_pizza = Pizza.new
# puts my_pizza.inspect
#
# my_pizza.eat
# puts my_pizza.inspect
#
# my_pizza.bake
# puts my_pizza.inspect
#
# my_pizza.cut
# puts my_pizza.inspect
#
# my_pizza.add_topping('red peppers')
# puts my_pizza.inspect
