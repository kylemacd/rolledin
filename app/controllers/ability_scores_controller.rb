class AbilityScoresController < ApplicationController
	before_action :authenticate_user!
	before_action :set_ability_score, only: [:show, :edit, :update, :destroy]
	respond_to :html, :xml, :json

  def index
    @ability_scores = AbilityScore.all
    respond_with(@ability_scores)
  end

  def show
    respond_with(@ability_score)
  end

  def new
    @ability_score = AbilityScore.new
    respond_with(@ability_score)
  end

  def edit
  end

  def create
    @ability_score = AbilityScore.new(ability_score_params)
    @ability_score.save
    respond_with(@ability_score)
  end

  def update
    @ability_score.update(ability_score_params)
    respond_with(@ability_score)
  end

  def destroy
    @ability_score.destroy
    respond_with(@ability_score)
  end

  private
    def set_ability_score
      @ability_score = AbilityScore.find(params[:id])
    end

    def ability_score_params
      params[:ability_score]
    end
end
