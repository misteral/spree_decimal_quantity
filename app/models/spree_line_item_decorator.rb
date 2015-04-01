Spree::LineItem.class_eval do
  def quantity_dcm
    return quantity unless variant.product.dcm == true
    quantity.to_f/10
  end

  def single_money
    return Spree::Money.new(price, { currency: currency }) unless variant.product.dcm == true
    Spree::Money.new(price*10, { currency: currency })
  end

  def copy_price
    if variant
      self.price = variant.default_price.amount if price.nil?
      self.cost_price = variant.cost_price if cost_price.nil?
      self.currency = variant.currency if currency.nil?
    end
  end
end


