class Post < ApplicationRecord
  has_many :audits, class_name: 'Audit', as: :object
end
