class OrderItemsController < ApplicationController
  def index
    @items = current_cart.order.items
  end

  def create
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    redirect_to card_path
  end

  def destroy
    current_cart.delete_item(params[:id])
    redirect_to card_path
  end

end
