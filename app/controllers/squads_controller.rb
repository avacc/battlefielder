class SquadsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @squads = Squad.all
  end
  
  def show
    @squad = Squad.find(params[:id])
  end
  
  def new
    @squad = Squad.new
  end
  
  def create
    @squad = Squad.new(params[:squad])
    @squad.leader = current_user
    if @squad.save
      render :show
    else
      redirect_to :new
    end
  end
  
  def edit
    @squad = Squad.find(params[:id])
    if @squad.leader != current_user
      flash[:alert] = "You are not autherized to view this page"
      render :show
    end
  end
  
  def update
    @squad = Squad.find(params[:id])
    if !params[:new_user_id].nil?
      @squad.users << User.find(params[:new_user_id])
    elsif @squad.leader == current_user
      @squad.name = params[:squad][:name]
      time = params[:squad][:game]
      logger.debug "Time: #{time}"
      date = DateTime.civil(time["time(1i)"].to_i,time["time(2i)"].to_i,time["time(3i)"].to_i,time["time(4i)"].to_i,time["time(5i)"].to_i)
      @squad.games << Game.new(:time => date )
    end
    if !@squad.save
      flash[:alert] = "There was an error saving: #{@squad.errors}"
    end
    render :show
      
  end
  
  def destroy
  end
  
  

end
