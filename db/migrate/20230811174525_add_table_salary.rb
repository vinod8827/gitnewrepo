class AddTableSalary < ActiveRecord::Migration[7.0]
  def change
    create_table :salarys, id: :uuid do |t|
      t.text :name
      t.integer :salary
      t.timestamps
    end
  end
end
