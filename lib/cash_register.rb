
class CashRegister
  attr_accessor :total, :transaction, :items, :employee, :discount

  def initialize(employee = nil)
    @total = 0
    @items = []
    @employee = employee
    @discount = 20

  end

  def add_item(title, price, quantities = 1)
    quantities.times {@items << title}
    self.total += price*quantities
  end

  def items
    @items
  end

  def apply_discount
    if @employee == true
    discount_total = (@total*(@discount/100)).to_f
    "Discount applied: #{discount_total}
  elsif @employee == false
      return "There is no discount to apply"
    end
  end

  def void_last_transaction
    @total = 0
    @items = []
  end
end
