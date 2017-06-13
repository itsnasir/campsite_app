class Child < ActiveRecord::Base

	has_many :activity_children
	has_many :activities, through: :activity_children
	has_many :children_checks

	def name
		"#{first_name} #{last_name}"
	end



	def color
		if self.children_checks.check_out.present?
			return "green"
		elsif 	self.children_checks.check_in.present?
			return "blue"
		else
			return "red"

		end
	end

end
