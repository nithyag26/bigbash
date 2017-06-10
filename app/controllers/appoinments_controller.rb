class AppoinmentsController < ApplicationController
  
   

  def new
    
    @appoinment = Appoinment.new
  end
  def create
      @appoinment=Appoinment.new(user_params)
      if @appoinment.save
        # ReminderMailer.reminder_email(@appoinment).deliver
          redirect_to "/logout" ,:notice => "Appoinment  is booked" 
        else
          redirect_to "/appoinments/new/" ,:notice => "appoinment time is already reserved" 

      end
    end
    def show
      
    end

    def destroy

    @appoinment = Appoinment.find(params[:id])
    @appoinment.destroy

    redirect_to "/appoinments/show/"
  end

  private

    def user_params
    params.require(:appoinment).permit(:name,:email,:start_time,:end_time)
   end
  end
