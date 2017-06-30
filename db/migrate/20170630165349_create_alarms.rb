class CreateAlarms < ActiveRecord::Migration[5.1]
  def change
    create_table :alarms do |t|
      t.text :content
      t.integer :visitor_id
      t.integer :vote

      t.timestamps
    end
  end
end
