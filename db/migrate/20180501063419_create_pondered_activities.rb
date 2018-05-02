class CreatePonderedActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :pondered_activities do |t|
      t.string :name
      t.text :description
      t.date :init_date
      t.references :pondered_planner, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
