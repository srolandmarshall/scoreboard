class BetsController < ApplicationController

  # GET /bets
  def index
    @bets = Bet.all
  end

  # GET /bets/:id
  def show
    @bet = Bet.find(params[:id])
  end

  # GET /bets/new
  def new
    @bet = Bet.new
    @game = Game.find(params[:game_id]) || Game.first
  end

  # POST /bets
  def create
    @bet = Bet.new(bet_params)
    if @bet.save
      redirect_to games_path
    else
      # redirect to game show page
      redirect_to new_bet_path(bet_params)
    end
  end

  # get /bets/:id/edit
  def edit
    @bet = Bet.find(params[:id])
  end

  # PATCH/PUT /bets/:id
  def update
    @bet = Bet.find(params[:id])
    if @bet.update(bet_params)
      redirect_to @bet
    else
      render 'edit'
    end
  end

  private

  def set_bet
    @bet = Bet.find(params[:id])
  end

  def bet_params
    params.require(:bet).permit(:game_id, :type, :amount)
  end

end
