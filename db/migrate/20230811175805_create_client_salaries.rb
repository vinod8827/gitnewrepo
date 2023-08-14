class CreateClientSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :client_salaries do |t|
      t.text :name
      t.integer :price 
      t.timestamps
    end
  end
end
