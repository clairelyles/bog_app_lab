class CreaturesController < ApplicationController

  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new

  end

  def create
    @creature = Creature.new(params.require(:creature).permit(:name, :desc))
    creature = Creature.create(creature)
    redirect_to = "/creatures"
  end



end