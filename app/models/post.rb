class Post < ActiveRecord::Base
  before_filter :authenticate_user!
  attr_accessible :content, :description, :name, :title, :image_file_name
  attr_accessible :image
  has_attached_file :image
end
