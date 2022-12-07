class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

    t.integer :genre_id
    t.integer :customer_id
    t.string :name
    t.text :introduction
    t.integer :price


      t.timestamps
    end
  end
end
