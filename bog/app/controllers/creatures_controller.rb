class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    render json: params
    # @creature = Creature.new(params.require(:creature).permit(:name, :desc))
    # creature = Creature.create(creature)
    # redirect_to = "/creatures"
  end

  def show
    @creature = Creature.find(params[:id])
  end

end