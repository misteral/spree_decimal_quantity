
Spree::Stock::Package.class_eval do
  def to_shipment
    shipment = Spree::Shipment.new
    shipment.address = order.ship_address
    shipment.order = order
    shipment.stock_location = stock_location
    shipment.shipping_rates = shipping_rates

    contents.each do |item|
      item.quantity.ceil.times do |n|
        unit = shipment.inventory_units.build
        unit.pending = true
        unit.order = order
        unit.variant = item.variant
        unit.line_item = item.line_item
        unit.state = item.state.to_s
      end
    end

    shipment
  end
end
