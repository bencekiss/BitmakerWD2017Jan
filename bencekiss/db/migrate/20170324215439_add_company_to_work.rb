class AddCompanyToWork < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :company, :string
  end
end
