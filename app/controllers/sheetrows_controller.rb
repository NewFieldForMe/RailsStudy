class SheetrowsController < ApplicationController
  before_action :set_sheetrow, only: [:show, :edit, :copy, :update, :destroy]
  before_filter :authorize

  # GET /sheetrows
  # GET /sheetrows.json
  def index
    @sheetrows = Sheetrow.all
  end

  # GET /sheetrows/1
  # GET /sheetrows/1.json
  def show
  end

  # GET /sheetrows/new
  def new
    @sheetrow = Sheetrow.new
  end

  # GET /sheetrows/1/copy
  def copy
    @copyrow = Sheetrow.find(params[:id])
    @sheetrow = Sheetrow.new
    @sheetrow.attributes = @copyrow.attributes

    render :action => "new"
  end

  # GET /sheetrows/1/edit
  def edit
  end

  # POST /sheetrows
  # POST /sheetrows.json
  def create
    @sheetrow = Sheetrow.new(sheetrow_params)

    respond_to do |format|
      if @sheetrow.save
        format.html { redirect_to @sheetrow, notice: 'Sheetrow was successfully created.' }
        format.json { render :show, status: :created, location: @sheetrow }
      else
        format.html { render :new }
        format.json { render json: @sheetrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheetrows/1
  # PATCH/PUT /sheetrows/1.json
  def update
    respond_to do |format|
      if @sheetrow.update(sheetrow_params)
        format.html { redirect_to @sheetrow, notice: 'Sheetrow was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheetrow }
      else
        format.html { render :edit }
        format.json { render json: @sheetrow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheetrows/1
  # DELETE /sheetrows/1.json
  def destroy
    @sheetrow.destroy
    respond_to do |format|
      format.html { redirect_to sheetrows_url, notice: 'Sheetrow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheetrow
      @sheetrow = Sheetrow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheetrow_params
      params.require(:sheetrow).permit(
      :order_num, :scene_type, :start_date, :end_date, :comment_title,
      :comment, :roll_id, :scale, :language, :DB, :OS, :tools,
      {:assignment_process_ids => []})
    end
end
