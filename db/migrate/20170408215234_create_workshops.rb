class CreateWorkshops < ActiveRecord::Migration[5.0]
  def change
    create_table :workshops do |t|
      t.string :name
      t.time :day
      t.time :hour
      t.integer :vacancies

      t.timestamps
    end
  end
end
