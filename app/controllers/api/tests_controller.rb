module Api
  class TestsController < ApiController
    skip_before_action :authenticate_request
    
    def index
      @sheetrows = Sheetrow.all
      render json: { test: @sheetrows }
    end
  end
end
