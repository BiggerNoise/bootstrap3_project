class TurdsController < ApplicationController
  before_action :set_turd, only: [:show, :edit, :update, :destroy]

  # GET /turds
  # GET /turds.json
  def index
    @turds = Turd.all
  end

  # GET /turds/1
  # GET /turds/1.json
  def show
  end

  # GET /turds/new
  def new
    @turd = Turd.new
  end

  # GET /turds/1/edit
  def edit
  end

  # POST /turds
  # POST /turds.json
  def create
    @turd = Turd.new(turd_params)

    respond_to do |format|
      if @turd.save
        format.html { redirect_to @turd, notice: 'Turd was successfully created.' }
        format.json { render action: 'show', status: :created, location: @turd }
      else
        format.html { render action: 'new' }
        format.json { render json: @turd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turds/1
  # PATCH/PUT /turds/1.json
  def update
    respond_to do |format|
      if @turd.update(turd_params)
        format.html { redirect_to @turd, notice: 'Turd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @turd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turds/1
  # DELETE /turds/1.json
  def destroy
    @turd.destroy
    respond_to do |format|
      format.html { redirect_to turds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turd
      @turd = Turd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turd_params
      params[:turd]
    end
end
