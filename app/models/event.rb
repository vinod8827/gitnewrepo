class Event < ApplicationRecord
  has_many :audits, class_name: 'Audit', as: :object
  has_one :event_mappaings, class_name: :EventMappaing
end
