require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
  # validation tests/examples here
    before do
      @product = Product.new(name: "Jack", price_cents: 2000, quantity: 20, category_id: 3)
    end

    it "Is valid with valid attributes" do
      @product
    end
    it "Is not valid without a name" do
      @product.name = nil
      expect(@product).to_not be_valid
    end
    it "Is not valid without a price" do
      @product.price_cents = nil
      expect(@product).to_not be_valid
    end
    it "Is not valid without a quantity" do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end
    it "Is not valid without a category" do
      @product.category = nil
      expect(@product).to_not be_valid
    end
  end
end
