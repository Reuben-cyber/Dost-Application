class Changetypehomestostring < ActiveRecord::Migration[7.0]
  def change
    change_column :homes, :category_id, :string
  end
end
