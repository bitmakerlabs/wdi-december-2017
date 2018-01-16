class Picture < ActiveRecord::Base
  # there is a picture_id column in the comments table
  has_many :comments
  # this informs the picture model about the pictures_tags join table
  has_and_belongs_to_many :tags

  # it's as if we just did this:
  # def comments
  #   Comment.where(picture_id: self.id)
  # end
end
