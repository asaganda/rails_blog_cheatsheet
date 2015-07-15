class Comment < ActiveRecord::Base
  # a comment belongs to a post
  belongs_to :post
end
