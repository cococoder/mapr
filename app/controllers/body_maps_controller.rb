class BodyMapsController < ApplicationController
  before_action :set_body_map, only: [:show, :edit, :update, :destroy]

  # GET /body_maps
  # GET /body_maps.json
  def index
    @body_maps = BodyMap.all
  end

  # GET /body_maps/1
  # GET /body_maps/1.json
  def show
  end

  # GET /body_maps/new
  def new
    @body_map = BodyMap.new
  end
  # GET /body_maps/1/edit
  def edit
  end

  # POST /body_maps
  # POST /body_maps.json
  def create
    @body_map = BodyMap.new(body_map_params)

    respond_to do |format|
      if @body_map.save
        format.html { redirect_to @body_map, notice: 'Body map was successfully created.' }
        format.json { render :show, status: :created, location: @body_map }
      else
        format.html { render :new }
        format.json { render json: @body_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_maps/1
  # PATCH/PUT /body_maps/1.json
  def update
    respond_to do |format|
      if @body_map.update(body_map_params)
        format.html { redirect_to @body_map, notice: 'Body map was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_map }
      else
        format.html { render :edit }
        format.json { render json: @body_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_maps/1
  # DELETE /body_maps/1.json
  def destroy
    @body_map.destroy
    respond_to do |format|
      format.html { redirect_to body_maps_url, notice: 'Body map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body_map
      @body_map = BodyMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def body_map_params
      params.require(:body_map).permit(:ref)
    end
end
