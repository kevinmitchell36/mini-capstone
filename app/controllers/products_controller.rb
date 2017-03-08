class ProductsController < ApplicationController
  def bat_all_method
    @bats = Product.all
    render "bat_one.html.erb"
  end

  
end
