class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  authorize_resource :class => false

  respond_to :html

  def index
    @players = Player.all
    respond_with(@players)
  end

  def show
    respond_with(@player)
  end

  def new
    @teams = Team.all
    @player = Player.new
    respond_with(@player)
  end

  def edit
    @teams = Team.all
  end

  def create
    @player = Player.new(player_params)
    @player.save
    respond_with(@player)
  end

  def update
    @player.update(player_params)
    respond_with(@player)
  end

  def destroy
    @player.destroy
    respond_with(@player)
  end

  private
    def set_player
      @player = Player.find(params[:id])
    end

    def player_params
      params.require(:player).permit(:name, :team_id, :article_id, :goals, :avatar)
    end
end
