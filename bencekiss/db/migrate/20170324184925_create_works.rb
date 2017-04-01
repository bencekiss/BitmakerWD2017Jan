class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string "name"
      t.string "start_date"
      t.string "end_date"
      t.text "description"
      t.integer "bence_id"
      t.timestamps
    end
  end
end
