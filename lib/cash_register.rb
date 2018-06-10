
class CashRegister
  attr_accessor :total

  def initialize
    @total = 0
  end

  def add_item(title, price)
    self.total += price
  end

end
