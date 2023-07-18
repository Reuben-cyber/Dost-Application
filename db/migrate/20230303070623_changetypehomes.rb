class Changetypehomes < ActiveRecord::Migration[7.0]
  def change
    change_column :homes, :category, :integer
  end
end
