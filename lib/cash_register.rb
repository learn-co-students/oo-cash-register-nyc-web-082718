require 'pry'

class CashRegister

  attr_accessor :total, :discount, :item, :previous_total

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @previous_total = @total
    @total += price * quantity
    quantity.times {@items << title}
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount/100.00
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @previous_total
  end

end
