class BillsController < ApplicationController
 



  def add
  id = params[:id]

      cart = session[:cart] ||= {}

      cart[id] = (cart[id] || 0) + 1


      redirect_to :action => :index

  end


   def search
export
render :export

  end

   def export
  
     @search = Invoice.search(params[:q])
  
@det=@search.result

$download=@det


   
  end

  def download

    headers['Content-Type'] = "application/vnd.ms-excel"
    headers['Content-Disposition'] = 'attachment; filename="report.xls"'
    headers['Cache-Control'] = ''


  end


  def index
     # params.permit!
    @items = Invoice.new
    @customer_name = current_customer
    @i = params[:search]
    
    if  @car=Item.where(["service_name like ?","%#{params[:search]}%"])
      @cart = session[:cart] || {}
 end
end

def new

  @items= Invoice.all
 end 
def create

# params.permit!
@item = Invoice.new(item_params)
if @item.save
     redirect_to '/log' ,:notice => "Invoice created sucessfully"
     session[:cart] = nil

    else
      render 'new'
    end
  end 



private 

def item_params


     params.require(:invoice).permit(:invoice_name,:invoice_date,:invoice_amount)
  end


end
