class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.text :name
      t.text :description
      t.references :commentable, polymorphic: true, null: false
      t.timestamps
    end
  end
end


class Audit < ApplicationRecord
  belong_to :objectable, polymorphic: true
end

class Event < ApplicationRecord
  has_many :audits, class_name: 'Audit' as: :objectable
end

class Post < ApplicationRecord
  has_many :audits, class_name: 'Audit', as: :objectable
end
event = Event.new(name: 'send')
event.save

event.audits.create!({action_name: 'create', data: params})

event = Event.where(id: parmas[:id]).update!({name: 'send'})
event.audits.create!({action_name: 'update', data: params})

event = Event.where(id: )



def change
  create_table :audits, id: :uuid do |t|
    t.references :objectable, polymorphic: true
    t.string :action_name
    t.json :data
    t.timestamps
  end
end


