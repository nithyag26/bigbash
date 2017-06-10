class AdminsController < ApplicationController
def new
  @admin = Admin.new
end

def create
	params.permit!
  @admin = Admin.new(params[:admin])
  if @admin.save
    redirect_to '/admin_sessions/new', :notice => "Signed up!"
  else
    render "new"
  end
end
end
