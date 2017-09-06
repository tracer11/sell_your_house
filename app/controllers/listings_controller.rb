class ListingsController < ApplicationController

  def new
  end

  def create
    @listing = Listing.new(address: params[:address],
                          latitude: params[:latitude],
                          longitude: params[:longitude],
                          renovation: params[:renovation],
                          renovation_cost: params[:renovation_cost],
                          basement: params[:basement],
                          basement_finished: params[:basement_finished],
                          )
     if @listing.save
      redirect_to ''
  end
end
