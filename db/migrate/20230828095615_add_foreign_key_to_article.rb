class AddForeignKeyToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :author_id, :integer
    add_foreign_key :articles, :authors
  end
end
