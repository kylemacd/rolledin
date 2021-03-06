class CharactersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_character, only: [:show, :edit, :update, :destroy]
	respond_to :html, :xml, :json

  def index
    @characters = Character.all
    respond_with(@characters)
  end

  def show
    respond_with(@character)
  end

  def new
    @character = Character.new
    # @classes = Class.all
    @races = Race.all
    respond_with(@character)
  end

  def edit
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    @character.save
    respond_with(@character)
  end

  def update
    @character.update(character_params)
    respond_with(@character)
  end

  def destroy
    @character.destroy
    respond_with(@character)
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params[:character].permit(:name, :user_id)
    end
end
