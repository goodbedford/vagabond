class Post < ActiveRecord::Base
	# attr_accessible :tag_list
	belongs_to :user
	belongs_to :city
	has_many :tags, through: :taggings
	has_many :taggings
  validates :body, presence: true
  validates :title, length: {in: 1..200}

def self.tagged_with(name)
  Tag.find_by_name!(name).posts
end

def self.tag_counts
  Tag.select("tags.*, count(taggings.tag_id) as count").
    joins(:taggings).group("taggings.tag_id")
end

def tag_list
  tags.map(&:title).join(", ")
end

def tag_list=(names)
  self.tags = names.split(",").map do |n|
    Tag.where(title: n.strip).first_or_create!
  end
end

end
