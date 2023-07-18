class Renamehomescolumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :homes, :category, :category_id
  end
end
