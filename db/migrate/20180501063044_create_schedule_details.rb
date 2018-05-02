class CreateScheduleDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_details do |t|
      t.string :name
      t.text :description
      t.date :init_date
      t.string :tag
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
