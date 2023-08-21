class Event < ApplicationRecord
  include Elasticsearch::Model
  include EventModule

  has_many :audits, class_name: 'Audit', as: :object
  has_one :event_mappaings, class_name: :EventMappaing

  def generate_method(*method_names)
    method_names.each do |method_name|
      define_method(method_name) do |method_name|
        puts "method is #{method_name}"
      end
    end
  end

  def method_missing(_method_name, *_arg)
    true
  end

  def self.module_exccess
    puts EventModule.user_info
  end
end



class Audit < ApplicationRecord
  belongs_to :objectable, polymorphic: true
end

class Cat < ApplicationRecord
  has_many :audits, class_name: 'Audit', as: :object
end

class Dog < ApplicationRecord
  has_many :audits, class_name: 'Audit', as: :object
end


rails generate model Audits content: text objectabel: references {polymorphic}
