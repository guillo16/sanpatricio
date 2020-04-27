class AddDivisionToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :division, foreign_key: true
  end
end
