class a < ApplicationController
  string :event_name

  def create
    events =  Event.where(title: params[:event_name]).take

    if events.present?
      self.error.add(:error, 'is already present !')
      return
    end

    params = {
        title: self.event_name
    }

    unless events.new(params).save
      self.errors.merge!(:invalid, events.errors)
      return
    end

    return { id: events.id }
  end
end