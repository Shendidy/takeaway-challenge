class Order

  attr_accessor :new_order

  def initialize(new_order = [])
    @new_order = new_order
  end

  def check_order
    return true
  end
end
