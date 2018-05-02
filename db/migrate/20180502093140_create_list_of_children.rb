class CreateListOfChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :list_of_children do |t|
      t.references :user, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
