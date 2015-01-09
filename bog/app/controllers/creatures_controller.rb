class CreaturesController < ApplicationController

  def creatures
    @creatures = Creature.all
  end

  def new
    @creatures = Creature.new
  end

  def create
    @creature = Creature.new(params.require(:creature).permit(:name, :desc))
    creature = Creature.create(creature)
    redirect_to = "/creatures"
  end


end