class Child < ActiveRecord::Base

	has_many :children_activities
	has_many :activities, through: :children_activities
	has_many :children_checks

	def name
		"#{first_name} #{last_name}"
	end

	def can_undo?(activity)
		check_out_obj(activity).present?
	end

	def check_out_obj(activity)
		self.children_checks.check_out.where("activity_id =?", activity.id).last
	end

	def check_in_obj(activity)
		self.children_checks.check_in.where("activity_id =?", activity.id).last
	end

	def next_state(activity)
		return "#{ChildrenCheck::CATEGORY_OUT.to_s}" unless check_in_obj(activity).blank?
		return "#{ChildrenCheck::CATEGORY_IN.to_s}"
	end

end
