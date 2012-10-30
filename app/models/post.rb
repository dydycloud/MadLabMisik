class Post < ActiveRecord::Base
  attr_accessible :content, :description, :name, :title, :image_file_name
  attr_accessible :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
