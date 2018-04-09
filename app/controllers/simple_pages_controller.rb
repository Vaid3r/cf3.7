class SimplePagesController < ApplicationController
  def about
  end

  def contact
  end

  def index
  end

  def landing_page
    @featured_product = Product.first
  end
  
end
