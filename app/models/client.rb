class Client < ApplicationRecord
  validates :client_name, presence: true
  validates :number, presence: true
end
