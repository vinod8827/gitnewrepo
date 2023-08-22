class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    # create_table :categories do |t|
    #   t.text :name
    #   t.text :description
    #   t.references :commentable, polymorphic: true, null: false
    #   t.timestamps
    # end

    # create_table :audits, id: :uuid do |t|
    #   t.references :objectable, polymorphic: true
    #   t.string :action_name
    #   t.json :data
    #   t.timestamps
    # end

    create_table :product_audits, id: :uuid do |t|
      t.references :objectable, polymorphic: true
      t.timestamps
    end
  end
end
