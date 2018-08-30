require "pry"

class CashRegister

  attr_accessor :total, :discount, :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
      end
    @total+=price*quantity
  end

  def items
    @items
  end

  def apply_discount
    if @discount > 0
      @total -= @total*@discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total-=self.total
  end

end
