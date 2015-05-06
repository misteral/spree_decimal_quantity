Deface::Override.new(:virtual_path => "spree/products/_cart_form",
                     :name => "replase_cart_form",
                     :replace => '[class="col-md-9 pd-quantity"]',
                     :partial => "/spree/products/cart_form_quantity",
                     :disabled => false)
Deface::Override.new(:virtual_path => "spree/orders/_line_item",
                     :name => "replace_line_item_quantity",
                     :replace => '[data-hook="cart_item_quantity"]',
                     :partial => "/spree/orders/line_item_quantity",
                     :disabled => false)
Deface::Override.new(:virtual_path => "spree/shared/_order_details",
                     :name => "replace_item_quantity_on_order_details",
                     :replace => '[data-hook="order_item_qty"]',
                     :text => '<td data-hook="order_item_qty" align="right">Laufmeter/Stk: <%= item.quantity_dcm %></td>',
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment_manifest",
                     :name => "replace_admin_item_quantity",
                     :replace => '[class="item-qty-show align-center"]',
                     :partial => "/spree/admin/orders/admin_item_quantity",
                     :disabled => false)
Deface::Override.new(:virtual_path => "spree/admin/orders/_shipment_manifest",
                     :name => "replace_admin_edit_quantity",
                     :replace => '[class="item-qty-edit hidden"]',
                     :partial => "/spree/admin/orders/admin_edit_quantity",
                     :disabled => false)

Deface::Override.new(:virtual_path => "spree/admin/variants/_form",
                     :name => "replace_admin_edit_variant_price",
                     :replace => '[data-hook="price"]',
                     :partial => "/spree/admin/variants/replace_admin_edit_variant_price",
                     :disabled => false)
# Deface::Override.new(:virtual_path => "spree/admin/variants/_form",
#                      :name => "replace_admin_edit_variant_cost_price",
#                      :replace => '[data-hook="cost_price"]',
#                      :partial => "/spree/admin/variants/replace_admin_edit_variant_cost_price",
#                      :disabled => false)
