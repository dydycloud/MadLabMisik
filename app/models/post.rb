class Post < ActiveRecord::Base
  attr_accessible :content, :description, :name, :title
end
