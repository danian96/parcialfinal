class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.references :parallel, foreign_key: true

      t.timestamps
    end
  end
end
