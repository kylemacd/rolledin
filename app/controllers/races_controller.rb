class RacesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_race, only: [:show, :edit, :update, :destroy]
	respond_to :html, :xml, :json

  def index
    @race = Race.all
    respond_with(@race)
  end

  def show
    respond_with(@race)
  end

  def new
    @race = Race.new
    respond_with(@race)
  end

  def edit
  end

  def create
    @race = Race.new(race_params)
    @race.save
    respond_with(@race)
  end

  def update
    @race.update(race_params)
    respond_with(@race)
  end

  def destroy
    @race.destroy
    respond_with(@race)
  end

  private
    def set_race
      @race = Race.find(params[:id])
    end

    def race_params
      params[:race]
    end
end
