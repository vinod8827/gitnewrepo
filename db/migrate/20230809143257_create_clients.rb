class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients, id: :uuid  do |t|
      t.string :client_name
      t.string :number
      t.timestamps
    end
  end
end
