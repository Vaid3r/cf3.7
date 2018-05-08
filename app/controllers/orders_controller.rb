class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.includes(:product).all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

end





def create
  @order = Order.new(order_params)

  respond_to do |format|
    if @order.save
      format.html { redirect_to @order, notice: 'Thank you for your order!' }
      format.json { render :show, status: :created, location: @order }
    else
      format.html { render :new }
      format.json { render json: @order.errors, status: :unprocessable_entity }
    end
  end
end
