class EmployeesController < ApplicationController
  def new
  @emp = Employee.new
	end

def create
	params.permit!
  @emp = Employee.new(params[:employee])
  if @emp.save
    redirect_to '/employees/new/', :notice => "Employee Created Sucessfully"
  else
    render "new"
  end
end

def show
	
	@emp = Employee.all

end

 def destroy

    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to "/employees/show/"
    
    end

end
