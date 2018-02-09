class LineItemsController < ApplicationController
  def index
    @line_items = LineItem.page params[:page]
  end
end
