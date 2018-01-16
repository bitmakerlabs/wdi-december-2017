class Picture < ActiveRecord::Base
  # there is a picture_id column in the comments table
  has_many :comments

  # it's as if we just did this:
  # def comments
  #   Comment.where(picture_id: self.id)
  # end
end
