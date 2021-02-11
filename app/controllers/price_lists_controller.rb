class PriceListsController < ApplicationController
  def create
    @price_list = PriceList.new(price_list_params)
    @price_list.net_price1 = params[:price_list][:gross_price1].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price2 = params[:price_list][:gross_price2].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price3 = params[:price_list][:gross_price3].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price4 = params[:price_list][:gross_price4].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price5 = params[:price_list][:gross_price5].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price6 = params[:price_list][:gross_price6].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price7 = params[:price_list][:gross_price7].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price8 = params[:price_list][:gross_price8].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price9 = params[:price_list][:gross_price9].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    @price_list.net_price10 = params[:price_list][:gross_price10].to_f * (1 - discount1) * (1 - discount2) * (1 - discount3) * (1 - discount4)
    if @price_list.save
      redirect_to manufacturer_path(@price_list.manufacturer_id), notice: 'Lista de Preços Criada!'
    else
      render 'pages/home'
    end
  end

  private

  def price_list_params
    params.require(:price_list).permit(:SKU1,
                                       :gross_price1,
                                       :net_price1,
                                       :manufacturer_id,
                                       :SKU2,
                                       :SKU3,
                                       :SKU4,
                                       :SKU5,
                                       :SKU6,
                                       :SKU7,
                                       :SKU8,
                                       :SKU9,
                                       :SKU10,
                                       :gross_price2,
                                       :gross_price3,
                                       :gross_price4,
                                       :gross_price5,
                                       :gross_price6,
                                       :gross_price7,
                                       :gross_price8,
                                       :gross_price9,
                                       :gross_price10,
                                       :net_price2,
                                       :net_price3,
                                       :net_price4,
                                       :net_price5,
                                       :net_price6,
                                       :net_price7,
                                       :net_price8,
                                       :net_price9,
                                       :net_price10)
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
