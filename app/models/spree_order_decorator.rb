Spree::Order.class_eval do
  def item_count_with_decimal
    count = 0.0
    self.line_items.each do |line_item|
      # binding.pry
      if line_item.variant.product.dcm == true
        count = count.to_f + line_item.quantity.to_f/10
      else
        count = count + line_item.quantity
      end
    end
    count
  end
end
