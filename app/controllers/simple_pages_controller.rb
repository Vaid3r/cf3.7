class SimplePagesController < ApplicationController
  def index
  end

  def landing_page
    @featured_product = Product.first #not used
    @products = Product.limit(3)
  end

  def about
  end

  def contact
  end

  def index
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'mcluna1991@gmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end


end
