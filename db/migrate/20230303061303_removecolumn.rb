class Removecolumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :iid
    remove_column :users, :cid
  end
end
