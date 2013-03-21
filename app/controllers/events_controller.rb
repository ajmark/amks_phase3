class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def edit
  	@event = event.find(params[:id])
  end

  def show
  	@event = Event.find(params[:id])
  end
end
