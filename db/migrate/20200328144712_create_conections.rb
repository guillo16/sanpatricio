class CreateConections < ActiveRecord::Migration[5.2]
  def change
    create_table :conections do |t|
      t.string :name
      t.string :building
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
