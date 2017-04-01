class AddSchoolAndLocationToEduAndWork < ActiveRecord::Migration[5.0]
  def change
    add_column :edus, :school, :string
    add_column :edus, :location, :string
    add_column :works, :location, :string
  end
end
