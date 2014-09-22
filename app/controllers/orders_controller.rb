class OrdersController < ApplicationController
    def new
      gon.client_token = generate_client_token
      render :new
    end

    def create
      @result = Braintree::Transaction.sale(
                :amount => "1000.00",
                payment_method_nonce: params[:payment_method_nonce])
      if @result.success?
        redirect_to root_url
        flash[:alert] = "Success!"
      else
        flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
        gon.client_token = generate_client_token
        render :new
      end
    end
     
    private
    def generate_client_token
      Braintree::ClientToken.generate
    end
  end