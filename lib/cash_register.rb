class CashRegister
  attr_reader :discount, :items
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @transaction = price * quantity
    @total += @transaction
    quantity.times { @items << title }
  end

  def apply_discount
    if @discount > 0
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transaction
  end
end
