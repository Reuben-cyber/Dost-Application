class Changetype < ActiveRecord::Migration[7.0]
  def change
    change_column :homes, :category_id, :integer
  end
end
