class CreateHome < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.integer "iid"
      t.integer "uid"
      t.string "desc"
      t.timestamps
    end
  end
end
