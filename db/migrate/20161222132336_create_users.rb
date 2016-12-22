class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 255
      t.string :last_name, null: false, limit: 255
      t.date :birthday, null: false
      t.string :email, null: false, limit: 255, index: true
      t.string :leader, null: false, limit: 255
      t.string :city, null: false, limit: 255, index: true
      t.string :state, null: false, limit: 2
      t.string :leader_phone, null: false, limit: 12
      t.string :password_digest

      t.timestamps
    end
  end
end
