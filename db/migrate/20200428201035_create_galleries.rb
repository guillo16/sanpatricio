class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :photo
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
