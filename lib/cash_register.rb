require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@items  = []

  end


  def add_item(item, price, quantity = 1)
      @total += price * quantity
      quantity.times do
      @@items << item
      end
      @last_transaction = self.total
  end

  def apply_discount
    @total -= @total * @discount/100
    if @discount != 0
       "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."
    end
  end

  def items
    @@items
  end



  def void_last_transaction
    @total = @total - @last_transaction
  end
end
