class CreateUserWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :user_workshops do |t|
      t.references :user, foreign_key: true
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
