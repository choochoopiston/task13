class InquiriesController < ApplicationController
    
    def index
      if params[:back]
      @inquiry = Inquiry.new(inquiry_params)
      else 
      @inquiry = Inquiry.new
      end
    end
    
    def confirm
      @inquiry = Inquiry.new(inquiry_params)
      if @inquiry.valid?
      render 'confirm'
      else
      render 'index'
      end
    end
    
    def thanks
      @inquiry = Inquiry.create(inquiry_params)
    end
    
    
  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :content)
    end
    
    
end
