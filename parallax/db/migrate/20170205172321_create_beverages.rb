class CreateBeverages < ActiveRecord::Migration[5.0]
  def change
    create_table :beverages do |t|
      t.string :name
      t.integer :table_id
      t.string :url

      t.timestamps
    end
  end
end
