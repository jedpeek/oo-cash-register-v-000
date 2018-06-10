
class CashRegister
  attr_accessor :total, :transaction, :items, :employee, :discount

  def initialize(employee = nil, discount = 0)
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

  def apply_discount(employee)
    if @employee == true
    @total = (@total*@discount).to_f
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
