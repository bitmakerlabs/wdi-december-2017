class Comment < ApplicationRecord
  # there is a picture_id column in your "comments" table
  belongs_to :picture
  # it's as if we just did this:
  # def picture
  #   Picture.where(id: self.picture_id)
  # end

  
end
