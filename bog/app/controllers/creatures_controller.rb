class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    # Check the JSON data thats getting passed through
    #render json: params

    # new method
    @creature = Creature.new
    @creature.name = params[:creature][:name]
    @creature.desc = params[:creature][:desc]
    @creature.save
    redirect_to creatures_path

    # create method
    # Creature.create(create_params)
    # redirect_to creatures_path
  end

  def show
    @creature = Creature.find(params[:id])
  end

end