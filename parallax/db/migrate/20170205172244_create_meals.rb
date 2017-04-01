class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :table_id
      t.string :url

      t.timestamps
    end
  end
end
