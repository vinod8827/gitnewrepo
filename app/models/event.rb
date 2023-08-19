module EventModule
  def self.user_info
    users =  {
      name: 'vinod',
      surname: 'patidar'
    }
    return users
  end
end

class Event < ApplicationRecord
  include Elasticsearch::Model
  include EventModule

  has_many :audits, class_name: 'Audit', as: :object
  has_one :event_mappaings, class_name: :EventMappaing

  def self.generate_method(*method_names)
    method_names.each do |method_name|
      define_method(method_name) do | mrthod_name|
        puts "method is #{method_name}"
      end
    end
  end

  def method_missing(method_name, *arg)
    binding.pry
    true
  end
end
