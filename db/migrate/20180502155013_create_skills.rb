class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :icon
      t.integer :parent_id

      t.timestamps
    end
  end
end
