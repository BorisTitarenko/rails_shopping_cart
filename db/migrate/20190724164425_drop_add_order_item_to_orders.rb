class DropAddOrderItemToOrders < ActiveRecord::Migration[5.2]
  def change
    drop_table :add_order_item_to_orders
  end
end
