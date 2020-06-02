class GardensController < ApplicationController
  before_action :set_garden, only: [:show, :edit, :update, :destroy]

  # GET /gardens
  # GET /gardens.json
  def index
    @gardens = Garden.all
  end

  # GET /gardens/1
  # GET /gardens/1.json
  def show
    @plant = Plant.new
  end

  # GET /gardens/new
  def new
    @garden = Garden.new
  end

  # GET /gardens/1/edit
  def edit
  end

  # POST /gardens
  # POST /gardens.json
  def create
    @garden = Garden.new(garden_params)

    respond_to do |format|
      if @garden.save
        format.html { redirect_to @garden, notice: 'Garden was successfully created.' }
        format.json { render :show, status: :created, location: @garden }
      else
        format.html { render :new }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gardens/1
  # PATCH/PUT /gardens/1.json
  def update
    respond_to do |format|
      if @garden.update(garden_params)
        format.html { redirect_to @garden, notice: 'Garden was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden }
      else
        format.html { render :edit }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gardens/1
  # DELETE /gardens/1.json
  def destroy
    @garden.destroy
    respond_to do |format|
      format.html { redirect_to gardens_url, notice: 'Garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garden_params
      params.require(:garden).permit(:name, :banner_url)
    end
end
