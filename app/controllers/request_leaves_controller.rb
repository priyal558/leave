class RequestLeavesController < ApplicationController
	def index       
    @requests = RequestLeave.all
  end
  # New action for creating post
  def new
    @request = RequestLeave.new()
    @request.status = "Pending"     
  end

  def create  	
    @request = RequestLeave.new(request_params)
    if @request.save
      redirect_to @request
    else
      render :new
    end
  end

  def show
  	@request = RequestLeave.find(params[:id])
  end

  private
  def request_params
  	params.require(:request_leave).permit(:leave_type, :description, :user_id).merge(user: current_user)   	
  end

  def find_request
    @request = RequestLeave.find(params[:id])
  end

end
