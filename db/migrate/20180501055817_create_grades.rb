class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.references :management, foreign_key: true

      t.timestamps
    end
  end
end
