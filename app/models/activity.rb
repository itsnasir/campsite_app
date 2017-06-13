class Activity < ActiveRecord::Base

	belongs_to :campsite
	has_many :activity_children
	has_many :children, through: :activity_children
	has_many :children_checks

end
