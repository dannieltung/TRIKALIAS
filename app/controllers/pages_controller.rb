class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @manufacturers = Manufacturer.all
  end
end
