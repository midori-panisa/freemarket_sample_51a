class ListingsController < ApplicationController
  def listing
    @items=Item.where(seller_id:current_user.id,trading_status:0).page(params[:page]).per(12)
  end

  def in_progress
    @items=Item.where(seller_id:current_user.id,trading_status:1..2).page(params[:page]).per(12)
  end

  def completed
    @items=Item.where(seller_id:current_user.id,trading_status:3).page(params[:page]).per(12)
  end
end
