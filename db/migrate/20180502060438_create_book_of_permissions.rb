class CreateBookOfPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :book_of_permissions do |t|
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
