class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end
    
  def new
    @event = Event.new
  end
    
    
  def create
    #@event = Event.new(params[:id])
    @event = Event.new(event_params)
    #@event.user_id = params[:user_id]
  
    

    @event.save

    #redirect_to event_path(@event)
    #redirect_to event_path(params[@event.id])
    #redirect_to events_path

  end
  
  def edit
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    # @events = Event.paginate(page: params[:page]).per_page(10)
    #@events_upcoming = Event.upcoming.paginate(page: params[:upcoming])
    #@events_past = Event.past.paginate(page: params[:past])
  end

  private
    def event_params
      #params.require(:event).permit(:title, :location, :description, :date, :user)
    end

end
