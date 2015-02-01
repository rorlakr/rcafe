class Post < ActiveRecord::Base
  belongs_to :bulletin
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  acts_as_taggable

  def tag_list_fixed
    tag_list.to_s
  end

  def tag_list_fixed=(tag_list_string)
    self.tag_list = tag_list_string
  end

end