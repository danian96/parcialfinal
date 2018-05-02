class CreatePlannerDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :planner_details do |t|
      t.string :name
      t.date :init_date
      t.text :description
      t.text :response
      t.string :status
      t.references :planner, foreign_key: true
      t.timestamps
    end
  end
end
