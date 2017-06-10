class EmpSessionsController < ApplicationController
    def new
end

def create
  @name= Employee.authenticate(params[:name], params[:password])
  if @name
    session[:emp_id] = @name.id
    redirect_to '/customer_invoices/new', :flash => { :notice => "Logged In!" }
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:emp_id] = nil
  redirect_to root_url ,:flash => { :notice => "Logged out!" }
end
end

