class MessagesController < ApplicationController
    before_action :authenticate_user! # Ensure users are logged in
    def new
      @message = Message.new
      @flat_rental = FlatRental.find(params[:flat_rental_id])
      @receiver = User.find(params[:receiver_id])

      if @receiver.nil?
        flash[:alert] = 'This flat rental does not have an owner to send a message to.'
        redirect_to root_path
      else
        @message.flat_rental_id = @flat_rental.id
        @message.receiver_id = @receiver.id
      end
    end
    
   

    
    def create
      @flat_rental = FlatRental.find(params[:message][:flat_rental_id])
      @senders = @flat_rental.messages.map(&:sender).uniq

      @senders.each do |sender|
        @message = Message.new(message_params)
        @message.sender_id = current_user.id
        @message.receiver_id = sender.id

        if @message.save
          flash[:notice] = 'Message sent successfully'
        else
          flash[:alert] = 'Failed to send a message'
        end
      end
      redirect_to flat_rental_path(@flat_rental)
    end
    
    def index
      @messages = current_user.received_messages.includes(:sender, :flat_rental).order(created_at: :desc)
    end
  
   
    private
    
    def message_params
      params.require(:message).permit(:receiver_id, :content, :flat_rental_id)
    end
end
