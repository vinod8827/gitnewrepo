class Product < ApplicationRecord
  def self.ransackable_attributes(_auth_object = nil)
    # List the attributes you want to allow searching on
    %w[name price]
  end

  # Optionally, you can specify ransackable_associations
  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
