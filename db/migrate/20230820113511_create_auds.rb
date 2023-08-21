class CreateAuds < ActiveRecord::Migration[7.0]
  def change
    create_table :auds do |t|
      t.string :name
      t.references :objectable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
