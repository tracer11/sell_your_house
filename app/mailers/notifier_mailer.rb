class NotifierMailer < ApplicationMailer
  default from: "karolgurba22@gmail.com"
  def gmail_message(listing)
    @listing = listing

    listing.pictures.each do |pic|
      attachments[pic.image_file_name] = File.read("#{pic.image.path}")
    end 

    mail to: listing.email , subject: "New House Lisiting"
  end
end
