class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      # t.string :product_name
      # t.float :amount
      # t.float :tax_amount
      # t.float :total_amount
      # t.float :discount_amount
      t.timestamps
    end
  end
end
