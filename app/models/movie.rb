class Movie < ApplicationRecord
 has_many :timings
 has_many :reviews
  
  has_attached_file :photo, :styles => { :medium => "300x300>"},
                    #:path => "rails_root/public/system/:attachment/:id/:style/:filename",# not needed
					:url =>  "/assets/products/:id/:style/:basename.:extension"   #its okay, keep it.
                    
					#:default_url => "/D:/ws/movies/public" #put the image in public and then set the path.
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
end
