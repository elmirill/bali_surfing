class SurfarisController < ApplicationController
  before_action :set_surfari, only: [:show, :edit, :update, :destroy]

  # GET /surfaris
  # GET /surfaris.json
  def index
    @surfaris = Surfari.all.order("position ASC")
  end

#  # GET /surfaris/1
#  # GET /surfaris/1.json
#  def show
#  end

  # GET /surfaris/new
  def new
    @surfari = Surfari.new
  end

  # GET /surfaris/1/edit
  def edit
  end

  # POST /surfaris
  # POST /surfaris.json
  def create
    @surfari = Surfari.new(surfari_params)

    respond_to do |format|
      if @surfari.save
        format.html { redirect_to surfaris_path, notice: 'Surfari was successfully created.' }
        format.json { render :show, status: :created, location: @surfari }
      else
        format.html { render :new }
        format.json { render json: @surfari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surfaris/1
  # PATCH/PUT /surfaris/1.json
  def update
    respond_to do |format|
      if @surfari.update(surfari_params)
        format.html { redirect_to surfaris_path, notice: 'Surfari was successfully updated.' }
        format.json { render :show, status: :ok, location: @surfari }
      else
        format.html { render :edit }
        format.json { render json: @surfari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surfaris/1
  # DELETE /surfaris/1.json
  def destroy
    @surfari.destroy
    respond_to do |format|
      format.html { redirect_to surfaris_url, notice: 'Surfari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surfari
      @surfari = Surfari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surfari_params
      params.require(:surfari).permit(:title, :subtitle, :content, :price_1, :price_2, :price_3, :position, :thumbnail, :_destroy)
    end
end
