class Audit < ApplicationRecord
  belongs_to :object, polymorphic: true
end
