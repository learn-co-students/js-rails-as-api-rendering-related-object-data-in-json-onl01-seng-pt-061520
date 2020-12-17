class SightingsController < ApplicationController
  def show
    sighting = Sighting.find_by(id: params[:id])
    return render json: { message: 'No sighting found with that id!' } unless sighting

    render json: sighting, include: %i[bird location]
  end

  def index
    sightings = Sighting.all
    render json: sightings, include: %i[bird location]
  end
end
