class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end


# POST /events
  def create
    @event = Event.new(Uploader.upload(event_params))
    @event.user = current_user

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /events/1
  def update

    if @event.update(Uploader.upload(event_params))
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end


  # DELETE /events/1
  def destroy
    return render json: { errors: ["Unauthorised"] } if @event.user !=current_user
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:title, :location, :date, :description, :image, :user_id, :genre_id, :base64, attendee_ids:[])
    end
end
