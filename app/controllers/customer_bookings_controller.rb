class CustomerBookingsController < ApplicationController
 


  def new 
  
  end
  def create
    
      customer=Customer.find_by_mobile(params[:cus_mobile])
          if customer
            session[:customer_id]=customer.id
            if current_customer
              redirect_to "/appoinments/new/" 
            #redirect_to '/details/new'
          else
          render 'new' 

      #redirect_to '/details/show'
    end
          else
            #flash.now.alert ="Invalid"
            redirect_to 'new' 
          end
     end


     def destroy

          session[:customer_id] = nil
          redirect_to "/appoinments/show"

      end    
end
