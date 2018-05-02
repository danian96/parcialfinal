class CreatePermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :permissions do |t|
      t.string :reason
      t.text :description
      t.string :status
      t.date :init_date
      t.date :end_date

      t.timestamps
    end
  end
end
