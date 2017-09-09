class PicturesController < ApplicationController
  def create(listing)
    @picture = Picture.new(params[:picture],
                          listing_id:listing.id
      )
    
  end
end
