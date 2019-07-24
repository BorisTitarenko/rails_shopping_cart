class CreateAddOrderItemToOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :add_order_item_to_orders do |t|
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
