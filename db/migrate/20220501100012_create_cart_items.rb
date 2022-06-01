class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|

      t.integer:amount
      t.integer:item_id, foreign_key: true
      t.integer:customer_id, foreign_key: true

      t.timestamps
    end
  end
end
