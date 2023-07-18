class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :homes, :uid, :user_id
    rename_column :homes, :iid, :interest_id
  end
end
