class AddAncestryToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :ancestry, :string
    add_index :skills, :ancestry
    remove_column :skills, :parent_id
  end
end
