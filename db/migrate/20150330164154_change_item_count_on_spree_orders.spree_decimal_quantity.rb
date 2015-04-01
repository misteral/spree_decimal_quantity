# This migration comes from spree_decimal_quantity (originally 20150327054923)
class ChangeItemCountOnSpreeOrders < ActiveRecord::Migration
  def change
    change_column :spree_orders, :item_count,  :decimal, precision: 10, scale: 2, default: 0
  end
end
