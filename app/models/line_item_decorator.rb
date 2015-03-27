
Spree::LineItem.class_eval do
  _validators.delete(:quantity)
  _validate_callbacks.each do |callback|
    callback.raw_filter.attributes.delete :quantity if callback.raw_filter.is_a?(ActiveModel::Validations::NumericalityValidator)
  end

  validates :quantity, numericality: {
    greater_than: -1,
    message: Spree.t('validation.must_be_int')
  }
end
