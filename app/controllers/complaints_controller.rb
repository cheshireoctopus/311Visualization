class ComplaintsController < ApplicationController

  def index
    sort_by = params[:sort_by] || 'id'
    @complaints = Complaint.order(sort_by).all
  end

end
