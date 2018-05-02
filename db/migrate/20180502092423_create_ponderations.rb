class CreatePonderations < ActiveRecord::Migration[5.0]
  def change
    create_table :ponderations do |t|
      t.integer :value
      t.text :observation
      t.references :student, foreign_key: true
      t.references :pondered_activity, foreign_key: true

      t.timestamps
    end
  end
end
