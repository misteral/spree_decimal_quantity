class RevertDecimalMigrations < ActiveRecord::Migration
  def change
    change_column :spree_stock_movements, :quantity,  :integer, default: 0
    change_column :spree_line_items, :quantity,  :integer, null: false
    change_column :spree_stock_items, :count_on_hand,  :integer, default: 0, null: false
    change_column :spree_orders, :item_count,  :integer, default: 0
  end
end
