class CreateTriangles < ActiveRecord::Migration[7.0]
  def change
    create_table :triangles do |t|

      t.timestamps
    end
  end
end
