class EventsController < ApplicationController
  before_action :event_find, only: [ :create, :edit, :update]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    # @event = Event.find(params[:id])
    @event = Event.find(params[:id])
    # event_find

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to event_path(@event)
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path, notice: "Updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end



  private

    def event_find
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :details)
    end

end
