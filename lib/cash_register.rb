require "pry"

class CashRegister
  attr_accessor :total, :discount, :ITEMS, :last




  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @ITEMS = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @last = price
    @total += price * quantity
    i = 0
    while i < quantity
      @ITEMS << title
      i += 1
    end
  end

  def apply_discount
    if @discount > 0
      @discount = @discount.round(2)
      @discount = @discount / 100
      off = @discount * @total
      @total = @total - off
      cost = @total.to_int
      "After the discount, the total comes to $#{cost}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @ITEMS
  end

  def void_last_transaction
    @total = @total - @last
  end
end
