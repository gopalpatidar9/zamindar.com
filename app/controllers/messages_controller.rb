class MessagesController < ApplicationController
  before_action :authenticate_user! # Ensure the user is logged in


  def create
    @message =  Message.create(content: message, chatroome_id: current_user.s)
    render json: {message: @message , message: "Message sent successfully" }


  end
    
  def show
    # Fetch chat messages for a specific flat_rental
    @flat_rental = FlatRental.find(params[:id])
    @messages = @flat_rental.messages
  end

  
   
    private
    
    def message_params
      params.require(:message).permit(:chatroome_id, :content)
    end
end
