class Public::AddressesController < ApplicationController
  def index
    @addresses = Addresses.all
    @address = Addresses.new
  end

  def edit
    @address = Addresses.find(params[:id])
  end

  def create
    @address = Addresses.new(address_params)
    @address.save
    redirect_to public_addresses_path
  end

  def update
    @address = Addresses.find(params[:id])
    @address.update(address_params)
    redirect_to public_addresses_path
  end

  def destroy
    @address = Addresses.find(params[:id])
    address.destroy
    redirect_to public_addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:addres_address, :addres_name, :addres_postal_code, :customer_id )
  end
end
