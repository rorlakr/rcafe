class Post < ActiveRecord::Base
  belongs_to :bulletin
  mount_uploader :picture, PictureUploader
end