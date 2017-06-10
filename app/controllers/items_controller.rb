class ItemsController < ApplicationController

   before_action :auth

   def auth
     if ((session[:admin_id]== "")||(session[:admin_id]== nil))
        redirect_to root_path 
     end
  end
    
  def index

  @items = Item.all

  end

  def new
    @item = Item.new
  end

  def create
    
    @item = Item.new(items_params)

    if @item.save

      redirect_to '/items/show/', :notice => "Service Created sucessfully"

    else

      redirect_to '/items/new' , :notice => "Service Not created"

    end

  end


    def show

      
    
    end

     def destroy

   @item =Item.find(params[:id])
    @item.destroy

    redirect_to "/items/show/"
    
    end




  private

  def items_params

       params.require(:item).permit(:service_name,:service_price)
  end




end
