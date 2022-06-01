class Public::CartItemsController < ApplicationController
  def index
    @cart_item = current_customer.cart_items
  end

  def create
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer
		if current_end_customer.cart_items.find_by(item_id: params[:cart_item][:item_id]).present?
			current_end_customer.cart_items.find_by(item_id: params[:cart_item][:item_id]).number += params[:cart_item][:number].to_i
			current_end_customer.cart_items.find_by(item_id: params[:cart_item][:item_id]).save
			redirect_to cart_items_path
		elsif
     @cart_item.save
     redirect_to public_cart_items_path
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to public_cart_items_path
  end

  def destroy_all
   CartItem.destroy_all
   redirect_to public_cart_items_path
  end

 def update

 end

   private
  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end
end

