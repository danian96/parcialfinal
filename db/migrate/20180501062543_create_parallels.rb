class CreateParallels < ActiveRecord::Migration[5.0]
  def change
    create_table :parallels do |t|
      t.string :name
      t.references :grade, foreign_key: true
      t.references :user

      t.timestamps
    end
    add_foreign_key :parallels, :users, column: :user_id, primary_key: :id
  end
end
