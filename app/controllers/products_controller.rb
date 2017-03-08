class ProductsController < ApplicationController
  def bat_one_method
    @bat1 = Product.first
    render "bat_one.html.erb"
  end

  def bat_two_method
    @bat2 = Product.second
    render "bat_two.html.erb"
  end

  def bat_three_method
    @bat3 = Product.last
    render "bat_three.html.erb"
  end
end
