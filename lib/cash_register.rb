
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
    if employee == true
    @total = (@total*discount).to_f
    "Discount applied: #{@total}"
  elsif @employee == false
      return "There is no discount to apply"
    end
  end

  def void_last_transaction
    @total = 0
    @items = []
  end
end
