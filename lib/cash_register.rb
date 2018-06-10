
class CashRegister
  attr_accessor :total :transaction :items

  def initialize
    @total = 0
  end

  def add_item(title, price, quantities = 1)
    self.total += price*quantities
    @items << title
  end

  def items
    @items

  def apply_discount(discount)
    self.total*discount
  end
end
