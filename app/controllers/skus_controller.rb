class SkusController < ApplicationController

  def new
    @price_list = PriceList.find(params[:price_list_id])
    @sku = Sku.new
  end

  def create
    @price_list = PriceList.find(params[:price_list_id])
    @sku = Sku.new(sku_params)
    if @sku.save
      redirect_to manufacturer_path(@price_list.manufacturer_id), notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def sku_params
    params.require(:sku).permit(:gtin, :gross_price, :net_price, :sale_price)
  end
end
