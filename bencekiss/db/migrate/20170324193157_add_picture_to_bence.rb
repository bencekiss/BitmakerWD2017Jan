class AddPictureToBence < ActiveRecord::Migration[5.0]
  def change
    add_column :bences, :picture_url, :string
  end
end
