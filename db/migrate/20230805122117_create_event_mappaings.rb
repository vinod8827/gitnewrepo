class CreateEventMappaings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_mappaings, id: :uuid do |t| 
      t.string :event_name
      t.uuid :event_id 
      t.timestamps
    end
  end
end
