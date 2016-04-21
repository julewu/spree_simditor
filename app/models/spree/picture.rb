module Spree
  class Picture < ActiveRecord::Base
    has_attached_file :image
    validates_attachment_content_type :image, :presence => true,
      :content_type => /\Aimage\/.*\Z/,
      :size => { :in => 0..10.megabytes }
  end
end
