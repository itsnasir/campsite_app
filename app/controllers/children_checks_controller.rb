class ChildrenChecksController < ApplicationController

  before_filter :load_child_and_activity

  def create    
    ChecksCreator.new(@child, @activity, params[:category]).create!
  end

  def destroy
    @child.children_checks.where(activity_id: params[:activity_id]).destroy_all
  end

  private

  def load_child_and_activity
    @activity = Activity.find_by_id(params[:activity_id])
    @child = Child.find(params[:child_id])
  end




end
