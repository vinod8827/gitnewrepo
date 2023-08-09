class CreateAudits < ActiveRecord::Migration[7.0]
  def change
    create_table :audits do |t|
      t.text :action_name
      t.references :object, polymorphic: true, null: false

      t.timestamps
    end
  end
end
