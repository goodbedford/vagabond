class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :city
  validates :body, presence: true
  validates :title, length: {in: 1..200}
end
