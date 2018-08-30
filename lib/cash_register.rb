require 'pry'

class CashRegister
  attr_accessor :discount, :total, :price, :quantity


  def initialize(discount=nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity=1)
    @price = price
    @quantity = quantity

    @total += price * quantity
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if discount != nil
      @total -= (@total * (@discount.to_f/100)).to_i
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items = @items.delete(self)
    @total -= @price * @quantity
  end
end
