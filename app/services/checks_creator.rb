class ChecksCreator
  
  def initialize(child, activity, category)
  	@child = child
    @activity = activity
  	@category = category  	  
  end

  def create!  	
  	create_check_entry 
  end

  protected

  def create_check_entry
  	@child.children_checks.create(:activity_id => @activity.id, :category => @category)    
  end

end