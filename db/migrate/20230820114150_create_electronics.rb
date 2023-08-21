class CreateElectronics < ActiveRecord::Migration[7.0]
  def change
    create_table :electronics do |t|
      t.text :content
      t.references :objectable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
