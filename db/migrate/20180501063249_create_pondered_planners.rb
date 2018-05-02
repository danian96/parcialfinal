class CreatePonderedPlanners < ActiveRecord::Migration[5.0]
  def change
    create_table :pondered_planners do |t|
      t.string :name
      t.references :parallel, foreign_key: true

      t.timestamps
    end
  end
end
