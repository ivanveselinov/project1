class AgentsController < ApplicationController
  # before_action :check_for_premium, :except => :index
  # before_action :check_for_premium, :except => :show

  def index #1
    @agents = Agent.all
  end

  def show #2
    @agents = Agent.find params[:id]
  end

  def new #3
    @agents = Agent.new
  end

  def create #4
    agent = Agent.create agent_params
    redirect_to root_path
  end

  def edit #5
    @agents = Agent.find params[:id]
  end

  def update #6
    agents = Agent.find params[:id]
    agents.update agent_params
    redirect_to agent_path
  end

  def destroy #7
    agents = Agent.find params[:id]
    agents.destroy
    redirect_to agents_path
  end


  private
  def agent_params
    params.require(:agent).permit(:name, :surname, :mobile, :phone, :email, :image)
  end
end
