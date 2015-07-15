class Post < ActiveRecord::Base
  # a post has many comments
  # dependent: :destroy means that when a post gets deleted, any of the its comments also gets deleted
  has_many :comments, dependent: :destroy
	# title of the post must be present and have a minimum length of 5 characters
	validates :title, presence: true, length: {minimum: 5}
	# body of the post must be present
	validates :body, presence: true
end
