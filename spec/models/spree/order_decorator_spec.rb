require 'spec_helper'

describe Spree::Order do
  describe "Order decorstor" do
    it "Cart items counter" do
      order = create(:order)
      product1 = create(:product, dcm: false)
      product2 = create(:product, dcm: true)
      line_item1 = create(:line_item, quantity: 2, variant: product1.master )
      line_item2 = create(:line_item, quantity: 15, variant: product2.master )
      order.line_items << line_item1
      order.line_items << line_item2
      order.save
      order.reload
      # binding.pry
      expect(order.item_count_with_decimal).to eq(3.5)
      # expect(product.price).to eq(price)
      # prod = create(:product, price:8.00, dcm: false)
      # expect(product.price).to eq(price)
    end

    # it "returns the normal price if it is not on sale" do
    #   variant = create(:variant, :price => 15.00)
    #   expected = Spree::Price.new(:variant_id => variant.id, :currency => "USD", :amount => variant.price)

    #   result = variant.price_in("USD")

    #   result.variant_id.should == expected.variant_id
    #   result.amount.to_f.should == expected.amount.to_f
    #   result.currency.should == expected.currency
    # end
  end
end
