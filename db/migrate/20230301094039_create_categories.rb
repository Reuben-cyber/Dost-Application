class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.integer "interest_id"
      t.integer "user_id"
      t.string "name"
      t.timestamps
    end
  end
end
