class ListingsController < ApplicationController
  
  def create
    listing = Listing.new(
                          address: params[:address],
                          city: params[:city],
                          state: params[:state],
                          zip_code: params[:zip_code],
                          latitude: params[:latitude],
                          longitude: params[:longitude],
                          renovation: params[:renovation],
                          renovation_cost: params[:renovation_cost],
                          basement: params[:basement],
                          basement_finished: params[:basement_finished],
                          first_name: params[:first_name],
                          last_name: params[:last_name],
                          email: params[:email],
                          phone_number: params[:phone_number]
                          )
     if listing.save
      redirect_to "/listings/#{listing.id}"
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.assign_attributes(
                              address: params[:address],
                              city: params[:city],
                              state: params[:state],
                              zip_code: params[:zip_code],
                              latitude: params[:latitude],
                              longitude: params[:longitude],
                              renovation: params[:renovation],
                              renovation_cost: params[:renovation_cost],
                              basement: params[:basement],
                              basement_finished: params[:basement_finished],
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              phone_number: params[:phone_number]
                              )
     if @listing.save

        if params[:images]
          params[:images].each { |image|
            @listing.pictures.create(image: image)
          }
      NotifierMailer.gmail_message(@listing).deliver
        end 
      end
  end

  private

  def listing_params
    params.require(:lisiting).permit(:image)
  end
end
