class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @price_list = PriceList.new
    @price_list.skus.build
  end

end
