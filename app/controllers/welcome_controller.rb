class WelcomeController < ApplicationController
  def home
    @page = 'home'
  end

  def catering
    @page = 'catering'
    @cats = Category.all.where(display: true)
    @products = Product.where(catering: true)
  end
  
  def about
    @page = 'about'
  end

  def reviews
    @page = 'reviews'
  end

end
