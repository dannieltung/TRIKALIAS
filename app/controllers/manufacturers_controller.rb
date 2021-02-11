class ManufacturersController < ApplicationController
  def new
    @manufacturer = Manufacturer.new
    @manufacturers = Manufacturer.all
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to root_path, notice: 'Fornecedor Adicionado!'
    else
      render :new
    end
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer_pricelists = PriceList.where(manufacturer_id: params[:id])
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :LG, :ICMS, :discount_1, :discount_2, :discount_3, :discount_4)
  end
end
