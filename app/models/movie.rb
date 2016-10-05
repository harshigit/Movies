class Movie < ApplicationRecord
  #belongs_to :movietitle
  
  has_attached_file :photo,
                    :path => "rails_root/public/system/:attachment/:id/:style/:filename",
					:url => "/system/:attachment/:id/:style/:filename",
                    :styles => { :medium => "300x300>"},
					:default_url => "D:/ws/noddy.jpg"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  
end
