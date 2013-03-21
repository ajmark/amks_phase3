class EventsController < ApplicationController

  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def show
  	@event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])

    if @event.save
      redirect_to @event, notice: "#Successfully created {@event.name}."
    else
      render action: "new"
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(params[:event])
      redirect_to @event, notice: "Successfully updated #{@event.name}."
    else
      render action: "edit"
    end
  end

end
