module Api
  class SheetrowsController < ApiController
    def index
      @sheetrows = Sheetrow.all
      render json: @sheetrows
    end
  end
end
