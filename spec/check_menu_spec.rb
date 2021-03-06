require 'check_menu'

RSpec.describe CheckMenu do
  describe "check_menu will" do
    it "respond to display_menu" do
      expect(subject).to respond_to(:display_menu)
    end

    it "return the array of available dishes and their prices upon calling display method" do
      expect(subject.display_menu).to include({ dish: "Dish-01", price: 3.45 })
    end

    it "send a valid order to class Order and get true" do
      allow(subject).to receive(:place_order).and_return(true)
      order = [{ dish: "Dish-02", total: 2 }, { dish: "Dish-03", total: 1 }, 10.73]
      expect(subject.send_order(order)).to eq true
    end

    it "send a valid order to class Order and get false " do
      order = [{ dish: "Dish-02", total: 2 }, { dish: "Dish-03", total: 1 }, 10.72]
      expect { subject.send_order(order) }.to raise_error("Invalid order!")
    end
  end
end
