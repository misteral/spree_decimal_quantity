
Spree::Shipment.class_eval do
  # ManifestItem = Struct.new(:line_item, :variant, :quantity, :states)

  def manifest
    # Grouping by the ID means that we don't have to call out to the association accessor
    # This makes the grouping by faster because it results in less SQL cache hits.
    inventory_units.group_by(&:variant_id).map do |variant_id, units|
      units.group_by(&:line_item_id).map do |line_item_id, units|

        states = {}
        units.group_by(&:state).each { |state, iu| states[state] = iu.first.line_item.quantity.to_f }

        line_item = units.first.line_item
        variant = units.first.variant
        # binding.pry
        Spree::ManifestItem.new(line_item, variant, units.first.line_item.quantity.to_f, states)
      end
    end.flatten
  end
end
