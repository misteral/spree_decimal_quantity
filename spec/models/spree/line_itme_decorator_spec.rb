# require 'spec_helper'

# describe Spree::LineItem do
#   describe "LineItem amount with decimal products" do
#     it "LineItem with decimal functions" do
#       price = 8.00
#       product = create(:line_item, price: price, dcm: )
#       expect(product.master.default_price.amount).to eq(price/10)
#       expect(product.price).to eq(price)
#       prod = create(:product, price:8.00, dcm: false)
#       expect(product.price).to eq(price)
#     end

#     # it "returns the normal price if it is not on sale" do
#     #   variant = create(:variant, :price => 15.00)
#     #   expected = Spree::Price.new(:variant_id => variant.id, :currency => "USD", :amount => variant.price)

#     #   result = variant.price_in("USD")

#     #   result.variant_id.should == expected.variant_id
#     #   result.amount.to_f.should == expected.amount.to_f
#     #   result.currency.should == expected.currency
#     # end
#   end
# end
