class CreateAddres < ActiveRecord::Migration[6.1]
  def change
    create_table :addres do |t|

      t.integer:customer_id, foreign_key: true
      t.string:addres_name
      t.string:addres_postal_code
      t.string:addres_addres
      t.timestamps
    end
  end
end
