class AddDecimalToQuantity < ActiveRecord::Migration
  def change
    change_column :spree_stock_movements, :quantity,  :decimal, precision: 10, scale: 2, default: 0
    change_column :spree_line_items, :quantity,  :decimal, precision: 10, scale: 2, null: false
    change_column :spree_stock_items, :count_on_hand,  :decimal, precision: 10, scale: 2, default: 0, null: false
  end
end
