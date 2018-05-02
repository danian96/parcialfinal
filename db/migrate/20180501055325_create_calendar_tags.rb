class CreateCalendarTags < ActiveRecord::Migration[5.0]
  def change
    create_table :calendar_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
