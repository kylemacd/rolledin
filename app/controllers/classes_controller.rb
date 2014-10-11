class ClassesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_class, only: [:show, :edit, :update, :destroy]
	respond_to :html, :xml, :json

  def index
    @class = Class.all
    respond_with(@class)
  end

  def show
    respond_with(@class)
  end

  def new
    @class = Class.new
    respond_with(@class)
  end

  def edit
  end

  def create
    @class = Class.new(class_params)
    @class.save
    respond_with(@class)
  end

  def update
    @class.update(class_params)
    respond_with(@class)
  end

  def destroy
    @class.destroy
    respond_with(@class)
  end

  private
    def set_class
      @class = Class.find(params[:id])
    end

    def class_params
      params[:class]
    end
end
