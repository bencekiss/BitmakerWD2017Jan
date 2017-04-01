class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string "name"
      t.text "description"
      t.string "url"
      t.integer "bence_id"
      t.timestamps
    end
  end
end
