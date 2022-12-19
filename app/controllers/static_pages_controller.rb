class StaticPagesController < ApplicationController
  def home
    #implicitly: render('home') of this controller
  end

  def help
  end
  def about
  end
  def contact
  end
end
