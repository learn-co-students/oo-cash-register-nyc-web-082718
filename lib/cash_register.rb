require "pry"

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  # def total
  #   @total
  # end

  def add_item (item, price, number = 1)
    @total += price * number
    number.times do
      @items << item
    end
  end

  def apply_discount
    if discount == nil || discount == 0
      "There is no discount to apply."
    else
      @total = @total - @total * @discount / 100.00
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end

end
