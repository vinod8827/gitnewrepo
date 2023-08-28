class User < ApplicationRecord
    has_secure_password
    
    def self.ransackable_attributes(auth_object = nil)
      ["email", "id", "name", "password_digest", "created_at", "updated_at"]
    end

    def self.ransackable_associations(_auth_object = nil)
        []
      end
  end
  