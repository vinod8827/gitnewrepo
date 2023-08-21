class Electronic < ApplicationRecord
  belongs_to :objectable, polymorphic: true
end
