
class CashRegister
  attr_accessor :total, :transaction, :items

  def initialize
    @total = 0
    @items = []
  end

  def add_item(title, price, quantities = 1)
    quantities.times do{@items << titles
    self.total += price*quantities
  end

  def items
    @items
  end

  def apply_discount(discount)
    (self.total*discount).to_f
  end
end
