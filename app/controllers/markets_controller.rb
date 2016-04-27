class MarketsController < ApplicationController

  def index #VIEWED BY USER
    @markets = Market.all
    render :index
  end

  def new
    render :new
  end

  def create
    @market = Market.new(create_market_params[:market])
    #unknown if need other things attached, like vendor/sales/products
    if @market.save
      @markets = Market.all
      redirect_to :index
    else
      render :new
    end
  end

  def edit
    @market = Market.find(params[:market_id])
    render :new
  end

  def show
    @market = Market.find(params[:market_id])
    render :show
  end

  def update
    @market = Market.find(params[:market_id]).update(create_market_params[:market])
    @markets = Market.all
    render :index  #IF time at end, render a "newly created" view for proofread, avoid list of all markets / index, because markets aren't supposed to see other markets
  end

  def destroy
    @market = Market.find(params[:market_id]).destroy
    @markets = Market.all
    render :index  #Same as update: If time at end, render not-index
  end
  
end
