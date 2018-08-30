require 'pry'

class CashRegister
   attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << name
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
      if discount != 0
        self.total = total * ((100 - discount.to_f)/100)
        return "After the discount, the total comes to $#{@total.to_i}."
      else
        return "There is no discount to apply."
      end
  end

  def void_last_transaction
    if total > 0
      self.total = total - last_transaction
    end
  end

end
