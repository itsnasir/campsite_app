class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show]

  # GET /attachments
  # GET /attachments.json
  def index
    @activities = Activity.all
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end


end
