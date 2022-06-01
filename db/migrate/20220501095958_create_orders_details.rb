class CreateOrdersDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_details do |t|

      t.timestamps
    end
  end
end
