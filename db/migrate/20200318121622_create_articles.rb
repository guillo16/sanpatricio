class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.text :content1
      t.text :content2
      t.text :content3
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
