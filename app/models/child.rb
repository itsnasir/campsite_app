class Child < ActiveRecord::Base

	has_many :activity_children
	has_many :activities, through: :activity_children
	has_many :children_checks

	def name
		"#{first_name} #{last_name}"
	end

end
