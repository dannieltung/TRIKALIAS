class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
    @manufacturers = Manufacturer.all
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to manufacturer_path(@manufacturer), notice: 'Fornecedor Adicionado!'
    else
      render :new
    end
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
    price_lists = PriceList.where(manufacturer_id: @manufacturer.id)
    @skus = Sku.where(price_list_id: price_lists.ids).sort_by { |event| [event.created_at, event.gtin] } # observar o uso de ids no plural para comparacao
  end

  def update
    @manufacturer = Manufacturer.find(params[:id])
    price_lists = PriceList.where(manufacturer_id: @manufacturer.id)
    if @manufacturer.update(manufacturer_params)
      redirect_to new_manufacturer_path, notice: 'Fornecedor Atualizado'
    else
      render :show
    end
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :LG, :ICMS, :discount_1, :discount_2, :discount_3, :discount_4)
  end
end
