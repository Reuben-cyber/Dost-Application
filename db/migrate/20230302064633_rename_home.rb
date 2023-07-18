class RenameHome < ActiveRecord::Migration[7.0]
  def change
    rename_column :homes, :desc, :category
  end
end
