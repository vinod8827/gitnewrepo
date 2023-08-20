class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type
      t.timestamps
    end

    create_table :cats do |t|
      t.string :name
      t.string :type
      t.timestamps
    end

    create_table :dogs do |t|
      t.string :name
      t.string :type
      t.timestamps
    end
  end
end
