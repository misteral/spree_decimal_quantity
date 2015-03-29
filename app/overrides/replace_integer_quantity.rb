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
