class User < ApplicationRecord
  def self.ransackable_attributes(_auth_object = nil)
    %w[email name reset_password_token] # Include the searchable attributes, including 'reset_password_token' if needed
  end

  # Define the ransackable_associations method
  def self.ransackable_associations(_auth_object = nil)
    [] # Specify your searchable associations here (e.g., [:roles])
  end
end
