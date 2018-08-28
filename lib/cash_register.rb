require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total *= (1 - @discount / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @total
  end
end
