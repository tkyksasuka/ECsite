class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.integer :item_id
      t.integer :order_id
      t.integer :order_price
      t.integer :amonut


      t.timestamps
    end
  end
end
