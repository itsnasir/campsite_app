class Child < ActiveRecord::Base

	has_many :activity_children
	has_many :activities, through: :activity_children
	has_many :children_checks

	def name
		"#{first_name} #{last_name}"
	end

	def color(activity_id)
		checks = self.children_checks
		if checks.check_out.where(activity_id: activity_id).present?
			return "green"
		elsif 	checks.check_in.where(activity_id: activity_id).present?
			return "blue"
		else
			return "red"

		end
	end

end
