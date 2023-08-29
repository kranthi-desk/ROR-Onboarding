class AddLengthConstraintToNameInAuthor < ActiveRecord::Migration[7.0]
  def up
    add_check_constraint :authors, "LENGTH(name) <= 50", name: "length_check"
  end
  def down
    remove_check_constraint :authors, name: "length_check"
  end
end
