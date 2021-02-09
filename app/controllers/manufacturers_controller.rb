class ManufacturersController < ApplicationController
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      redirect_to root_path, notice: 'Fornecedor Adicionado!'
    else
      render 'pages/home'
    end
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :LG, :ICMS, :discount_1, :discount_2, :discount_3, :discount_4)
  end
end
