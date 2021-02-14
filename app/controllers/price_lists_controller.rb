class PriceListsController < ApplicationController

  def new
    @price_list = PriceList.new
    @price_list.skus.build
  end

  def create
    @price_list = PriceList.new(price_list_params)
    if @price_list.save
      Sku.where(gross_price: nil).destroy_all
      # a = Sku.where(price_list_id: @price_list.id).as_json
      # raise
      # @manufacturer = Manufacturer.find(@price_list.manufacturer_id)
      # @manufacturer.name
      Sku.where(price_list_id: @price_list.id).update_all("net_price = (gross_price * (1 - #{discount1}) * (1 - #{discount2}) * (1 - #{discount3}) * (1 - #{discount4}))")
      # raise
      # a.each { |sku| sku["net_price"] = sku["gross_price"] * 2 }
      # raise
      redirect_to manufacturer_path(@price_list.manufacturer_id), notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def price_list_params
    params.require(:price_list).permit(:manufacturer_id, skus_attributes: [:gtin, :gross_price, :net_price, :sale_price])
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

# params[:price_list][:skus_attributes]["0"][:gross_price]
