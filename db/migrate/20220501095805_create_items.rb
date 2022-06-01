class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.integer:genre_id, foreign_key: true
      t.integer:items_id
      t.string:item_name
      t.text:introduction
      t.integer:price
      t.boolean :checked, null: false, default: true

      t.timestamps
    end
  end
end
