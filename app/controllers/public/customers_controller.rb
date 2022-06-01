class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.field(params[:id])
  end

  def edit
    @customer = Customer.field(params[:id])
  end
end
