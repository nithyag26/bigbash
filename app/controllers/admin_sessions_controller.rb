class AdminSessionsController < ApplicationController
def new
end

def create
  @name= Admin.authenticate(params[:email], params[:password])
  if @name
    session[:admin_id] = @name.id
    redirect_to '/customer_invoices/new', :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:admin_id] = nil
  redirect_to root_url , :notice => "Logged out!"
end

end
