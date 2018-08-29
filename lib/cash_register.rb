require 'pry'

class CashRegister

attr_accessor :total, :discount, :title, :item_list, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = []
    if discount > 0
      apply_discount
    else
    end
  end

  def add_item(title, price, quantity=1)
    @title = title
    @total += price * quantity
    quantity.times do
      @item_list << title
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    @total = total - total * discount / 100.00
    if discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
