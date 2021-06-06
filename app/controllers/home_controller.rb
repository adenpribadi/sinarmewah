class HomeController < ApplicationController
  def index
    @products = Product.all.limit(4)
    @events = Event.all.limit(2)
    @abouts = About.all
    @services = Service.all
    @sales = Sale.all
  end
end
