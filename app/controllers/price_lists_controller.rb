class PriceListsController < ApplicationController
  def create
    @price_list = PriceList.new(price_list_params)
    if @price_list.save
      redirect_to root_path, notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def price_list_params
    params.require(:price_list).permit(:SKU, :gross_price, :manufacturer_id)
  end

end
