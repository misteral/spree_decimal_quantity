
Spree::Stock::Quantifier.class_eval do
  def can_supply?(required)
    total_on_hand >= required.to_f || backorderable?
  end
end
