class CreateEdus < ActiveRecord::Migration[5.0]
  def change
    create_table :edus do |t|
      t.string "start_date"
      t.string "end_date"
      t.string "name"
      t.text "description"
      t.integer "bence_id"
      t.timestamps
    end
  end
end
