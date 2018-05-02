class CreateManagements < ActiveRecord::Migration[5.0]
  def change
    create_table :managements do |t|
      t.string :name
      t.date :init_date
      t.date :finish_date
      t.references :turn, foreign_key: true

      t.timestamps
    end
  end
end
