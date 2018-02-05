class ProductsController < ApplicationController
  def index
    response = HTTParty.get("https://lcboapi.com/products?access_key=#{ENV['LCBO_KEY']}", headers: {"Accept" : "application/json"})
    @results = response["result"]

    respond_to do |format|
      format.html { render :index }
      format.json { render json: { results: @results } }
    end
  end
end
