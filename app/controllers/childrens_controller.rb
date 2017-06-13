class ChildrensController < ApplicationController


  def set_children_checkin
   @child = Child.find(params[:child_id])
   @child_checkin  =  ChildrenCheck.where(child_id: params[:child_id] , activity_id: params[:activity_id] ,category: "in").first
   @child_checkout = ChildrenCheck.where(child_id: params[:child_id] , activity_id: params[:activity_id] ,category: "out").first
   if @child_checkin.present? && !@child_checkout.present?
     @child_checkout_create = ChildrenCheck.create(child_id: params[:child_id] , activity_id: params[:activity_id] , category: :out , timestamp: Time.now)
   end
   unless @child_checkin.present?
      @child_checkin_create = ChildrenCheck.create(child_id: params[:child_id] , activity_id: params[:activity_id] , category: :in , timestamp: Time.now)
   end
  end

  def remove_children_checkin
    @child = Child.find(params[:child_id])
    @child_checkin  =  ChildrenCheck.where(child_id: params[:child_id] , activity_id: params[:activity_id] ,category: "in").first
    @child_checkout = ChildrenCheck.where(child_id: params[:child_id] , activity_id: params[:activity_id] ,category: "out").first
    @child_checkin.destroy
    @child_checkout.destroy
  end




end
