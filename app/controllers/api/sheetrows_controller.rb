module Api
  class SheetrowsController < ApiController
    def index
      @sheetrows = Sheetrow.where(user_id: @current_user.id)
    end
  end
end
