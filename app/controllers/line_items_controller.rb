class LineItemsController < ApplicationController
  def index
    @line_items = LineItem.page params[:page]
  end

  def update
    line_item = LineItem.find(params[:id])
    line_item.update!(line_item_params)

    redirect_back(fallback_location: line_items_path)
  end

  def show
    @line_item = LineItem.find(params[:id])
  end

  def line_item_params
    params.require(:line_item).permit(:adjustments)
  end
end
