class CreateCalendarDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_details do |t|
      t.string :name
      t.date :init_date
      t.text :description
      t.references :calendar, foreign_key: true
      t.references :calendar_tag, foreign_key: true

      t.timestamps
    end
  end
end
