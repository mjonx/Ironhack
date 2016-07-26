class TripsController < ApplicationController
  def index
    @trips = Trip.order(title: :asc)
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
    render 'new'
  end

  def create
    @trip = Trip.new(
    title: params[:trip][:title],
    destination: params[:trip][:destination])
    @trip.save

    redirect_to "/trips/#{@trip.id}"
  end

  def edit
  end

  def update
  end
end
