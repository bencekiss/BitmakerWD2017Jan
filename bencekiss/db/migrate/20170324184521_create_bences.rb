class CreateBences < ActiveRecord::Migration[5.0]
  def change
    create_table :bences do |t|
      t.text "description"
      t.string "name"
      t.string "email"
      t.string "phone"
      t.timestamps
    end
  end
end
