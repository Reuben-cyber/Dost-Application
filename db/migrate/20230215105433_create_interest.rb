class CreateInterest < ActiveRecord::Migration[7.0]
  def change
    create_table :interests do |t|
      t.integer "iid"
      t.string "name"
      t.timestamps
    end
  end
end
