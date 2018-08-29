require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :quantity

#sets an instance variable @total in initialization to zero
#optionally takes an employee discount on initialization
#returns the current total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

#accepts title and price, optional quantity
#increases the total (think about previous total)
  def add_item(title, price, quantity=1)
    @total += price * quantity
    @quantity = quantity
    @title = title
    quantity.times do |i|
      @items << @title
    end
  end

#applies discount to total price
#returns success messages with updated total and string error message if there is no discount applied
#reduces the total
  def apply_discount
    if discount > 0
      @total = total - (total * discount)/100
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

#returns an array containing all items that have been added
  def items
    @items
  end

#subtracts the last transaction from the total
  def void_last_transaction
    @total -= @total
  end

end
