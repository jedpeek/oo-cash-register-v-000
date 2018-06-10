
class CashRegister
  attr_accessor :total 

  def initialize
    @total = 0
  end

  def add_item(title, price, quantities = 1)
    self.total += price*quantities
  end

  def apply_discount(discount)
    self.total*discount
  end
end
