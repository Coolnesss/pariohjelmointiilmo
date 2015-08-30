class AikasController < ApplicationController
  before_action :set_aika, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate, :except => [:index]

  # GET /aikas
  # GET /aikas.json
  def index
    @aikas = Aika.all
  end

  # GET /aikas/1
  # GET /aikas/1.json
  def show
  end

  # GET /aikas/new
  def new
    @aika = Aika.new
  end

  # GET /aikas/1/edit
  def edit
  end

  # POST /aikas
  # POST /aikas.json
  def create
    @aika = Aika.new(aika_params)

    respond_to do |format|
      if @aika.save
        format.html { redirect_to @aika, notice: 'Aika was successfully created.' }
        format.json { render :show, status: :created, location: @aika }
      else
        format.html { render :new }
        format.json { render json: @aika.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aikas/1
  # PATCH/PUT /aikas/1.json
  def update
    respond_to do |format|
      if @aika.update(aika_params)
        format.html { redirect_to @aika, notice: 'Aika was successfully updated.' }
        format.json { render :show, status: :ok, location: @aika }
      else
        format.html { render :edit }
        format.json { render json: @aika.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aikas/1
  # DELETE /aikas/1.json
  def destroy
    @aika.destroy
    respond_to do |format|
      format.html { redirect_to aikas_url, notice: 'Aika was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aika
      @aika = Aika.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aika_params
      params.require(:aika).permit(:aika)
    end
end
