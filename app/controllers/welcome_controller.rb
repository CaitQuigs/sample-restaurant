class WelcomeController < ApplicationController
  def home
    @page = 'home'
  end

  def menu
    @page = 'menu'
  end

  def catering
    @page = 'catering'
  end
  
  def about
    @page = 'about'
  end

end
