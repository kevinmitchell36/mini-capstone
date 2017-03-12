class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new_bat.html.erb"
  end

  def create
    product = Product.new(
      name: params[:name],
      color: params[:color],
      disposition: params[:disposition],
      image: params[:image],
      price: params[:price]
    )
    product.save
    render "create.html.erb"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "show.html.erb"
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "edit.html.erb"
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.name = params[:name]
    @product.color = params[:color]
    @product.disposition = params[:disposition]
    @product.image = params[:image]
    @product.price = params[:price]
    @product.save
    render "update.html.erb"
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.destroy
    render "destroy.html.erb"
  end


end
