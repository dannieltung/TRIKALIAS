class PriceListsController < ApplicationController
  def create
    @price_list = PriceList.new(price_list_params)
    @price_list.net_price1 = params[:price_list][:gross_price1].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    if @price_list.save
      redirect_to manufacturer_path(@price_list.manufacturer_id), notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def price_list_params
    params.require(:price_list).permit(:SKU1, :gross_price1, :net_price1, :manufacturer_id)
  end

  def discount1
    Manufacturer.find(params[:price_list][:manufacturer_id]).discount_1.nil? ? 0 : Manufacturer.find(params[:price_list][:manufacturer_id]).discount_1 / 100
  end

  def discount2
    Manufacturer.find(params[:price_list][:manufacturer_id]).discount_2.nil? ? 0 : Manufacturer.find(params[:price_list][:manufacturer_id]).discount_2 / 100
  end

  def discount3
    Manufacturer.find(params[:price_list][:manufacturer_id]).discount_3.nil? ? 0 : Manufacturer.find(params[:price_list][:manufacturer_id]).discount_3 / 100
  end

  def discount4
    Manufacturer.find(params[:price_list][:manufacturer_id]).discount_4.nil? ? 0 : Manufacturer.find(params[:price_list][:manufacturer_id]).discount_4 / 100
  end
end
