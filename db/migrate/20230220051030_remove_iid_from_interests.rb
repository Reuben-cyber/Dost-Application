class RemoveIidFromInterests < ActiveRecord::Migration[7.0]
  def change
    remove_column :interests, :iid, :integer
  end
end
