
class CashRegister
  attr_accessor :total, :transaction, :items, :employee

  def initialize
    @total = 0
    @items = []
  end

  def add_item(title, price, quantities = 1)
    quantities.times {@items << title}
    self.total += price*quantities
  end

  def items
    @items
  end

  def apply_discount(discount)
    @total = (@total*discount).to_f
    return "Discount applied: #{@total}"
    if @employee == false
      return "There is no discount to apply"
  end

  def void_last_transaction
    @total = 0
    @items = []
  end
end
