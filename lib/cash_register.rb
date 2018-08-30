require "pry"

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :transaction

def initialize(discount = 0)
  @total = total
  @discount = discount
  @total = 0
  array = []
  @array = array
end

def total
  @total
end

def add_item(title, price, quantity = 1)
@total += price * quantity
@transaction = price * quantity
quantity.times do
@array << title
end
end

def apply_discount
  if @discount == 0
puts = "There is no discount to apply."
else
  percent = (@discount * 0.01).to_f
  @total = @total - (percent * @total)
  @total.to_i
  "After the discount, the total comes to $#{@total.to_i}."
end
end

def items
@array
end

def void_last_transaction
# binding.pry
@total = @total - @transaction
end

end
