Spree::LineItem.class_eval do
  def quantity_dcm
    return quantity unless variant.product.dcm == true
    quantity.to_f/10
  end
end


