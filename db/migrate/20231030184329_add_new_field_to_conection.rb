class AddNewFieldToConection < ActiveRecord::Migration[5.2]
  def change
    add_column :conections, :matter, :string
  end
end
