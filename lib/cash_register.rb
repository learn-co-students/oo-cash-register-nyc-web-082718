class CashRegister

  attr_reader :discount, :items
  attr_accessor :total

  @last_transaction = 0

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    next_transaction = price * quantity
    @total += next_transaction
    @last_transaction = next_transaction
    quantity.times do @items << item end
  end

  def apply_discount
    if @discount
      @total = @total - (@total * (@discount/100.0))
    else 
      return "There is no discount to apply."
    end
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
