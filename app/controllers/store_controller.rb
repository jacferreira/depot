class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @cart = current_cart
    @time = Time.now
    
    # playtime task D
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    
    @counter = session[:counter] if session[:counter] > 5
  end
end
