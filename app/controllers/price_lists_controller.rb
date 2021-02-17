class PriceListsController < ApplicationController

  def create
    @price_list = PriceList.new(price_list_params)
    if @price_list.save
      # params[:price_list][:skus_attributes]["0"][:gross_price] => é a forma de achar o params de um modelo dentro de outro
      Sku.where(gross_price: nil).destroy_all
      # a = Sku.where(price_list_id: @price_list.id).as_json => isso vai transformar um active record relation em array apesar do nome json
      Sku.where(price_list_id: @price_list.id).update_all("net_price = (gross_price * (1 - #{discount1}) * (1 - #{discount2}) * (1 - #{discount3}) * (1 - #{discount4})) * (1 + ((#{lg} * ipi)/100))") # observar o formato dos parametros passados dentro do update_all
      Sku.where(price_list_id: @price_list.id).update_all("sale_price = net_price + #{simples_nacional}")
      # Sku.where(price_list_id: @price_list.id).update_all("sale_price = #{simples_nacional}"
      # a.each { |sku| sku["net_price"] = sku["gross_price"] * 2 } => isso vai apenar trazer uma nova array mas nao vai atualizar o model.
      redirect_to manufacturer_path(@price_list.manufacturer_id), notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def price_list_params
    params.require(:price_list).permit(:manufacturer_id, skus_attributes: [:gtin, :gross_price, :ipi, :net_price, :sale_price])
  end

  def simples_nacional
    Cost.find(1).simples / 100
  end

  def debito
    Cost.find(1).debito / 100
  end

  def credito
    Cost.find(1).credito / 100
  end

  def parcelado
    Cost.find(1).parcelado / 100
  end

  def lg
    Manufacturer.find(params[:price_list][:manufacturer_id]).LG / 100
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
