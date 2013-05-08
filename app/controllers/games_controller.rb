class GamesController < ApplicationController
  before_filter :authenticate_user!
  
  def new
    @game = Game.new()
  end
  
  def create
    @game.create(params[:game])
    @game.squad_id = params[:squad_id]
    @game.save
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  def index
  end
  
  def show
  end

end
