class Activity < ActiveRecord::Base

	belongs_to :campsite
	has_many :activity_children
	has_many :children, through: :activity_children
	has_many :children_checks


	# scope :filter_by_keyword, -> keyword { joins(:children).where("children.name LIKE ? OR categories.name LIKE ? OR question_options.title LIKE ?", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%") }



end
