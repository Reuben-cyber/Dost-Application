class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :user do |t|
      t.string "name"
      t.string "email"
      t.string "password_digest"
      t.integer "iid"
      t.integer "cid"
      t.timestamps
    end
  end
end
