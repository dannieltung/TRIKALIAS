class CostsController < ApplicationController
  def new
    @cost = Cost.new
  end

  def create
    @cost = Cost.new(cost_params)
    if @cost.save
      redirect_to cost_path(@cost), notice: 'Custo Criado!'
    else
      render :new
    end
  end

  def show
    @cost = Cost.find(params[:id])
  end

  private

  def cost_params
    params.require(:cost).permit(:simples, :débito, :crédito, :parcelado)
  end
end
