class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @user = current_user
    @product = Product.new(product_params)
    @product.user = @user
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @user = current_user
    @product.destroy
    if request.referer.include?('users')
      redirect_to user_path(current_user, notice: 'Product was successfully destroyed.')
    else
      redirect_to products_path, notice: 'Product was successfully destroyed.'
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :details, :category_id, :photo)
  end
end
