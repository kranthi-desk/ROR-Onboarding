class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :username
      t.integer :rank

      t.timestamps
    end
  end
end
