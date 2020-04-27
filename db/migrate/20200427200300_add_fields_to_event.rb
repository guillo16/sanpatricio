class AddFieldsToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :location, :string
    add_column :events, :address, :string
  end
end
