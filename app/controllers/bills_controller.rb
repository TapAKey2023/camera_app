class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bills.find(params[:id])
    render :show
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bills_params)
    if @bill.save
      redirect_to bills_path(@bills)
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def bills_params
  params.require(:bill).permit(:meal_item_1, :meal_item_2, :price_item_1, :price_item_2)
end

end
