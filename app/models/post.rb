class Post < ActiveRecord::Base
	# title of the post must be present and have a minimum length of 5 characters
	validates :title, presence: true, length: {minimum: 5}
	# body of the post must be present
	validates :body, presence: true
end
