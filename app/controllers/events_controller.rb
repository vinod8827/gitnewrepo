class EventsController < ApplicationController
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

  def data_show
    event = Event.where(id: self.params[:id]).take
     @_input_intractions
    if event.blank?
      self.errors.add(:error, 'Invalid Error')
      return
    end
    render json: event
  end
end