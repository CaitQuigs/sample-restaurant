class WelcomeController < ApplicationController
  def home
    @page = 'home'
  end

  def about
    @page = 'about'
  end
end
