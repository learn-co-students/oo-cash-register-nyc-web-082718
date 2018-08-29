class CashRegister
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_price = nil
    @last_quantity = nil
  end

  attr_accessor :total
  attr_reader :discount, :items

  def add_item(item, price, quantity=1)
    @total += price * quantity
    @last_price = price * quantity
    @last_quantity = quantity
    quantity.times do
      @items << item
    end
  end

  def apply_discount
    if @discount != 0
      @total -= @total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price
    @last_quantity.times do
      @items.pop
    end
  end
end
