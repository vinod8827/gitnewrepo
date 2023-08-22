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
