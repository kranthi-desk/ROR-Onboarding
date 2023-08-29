class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.boolean :premium

      t.timestamps
    end
  end
end
