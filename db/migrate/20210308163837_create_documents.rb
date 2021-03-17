class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :title
      t.string :file
      t.string :category

      t.timestamps
    end
  end
end
