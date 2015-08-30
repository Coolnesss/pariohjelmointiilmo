class OpiskelijasController < ApplicationController
  before_action :set_opiskelija, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate, :except => [:new, :create]

  # GET /opiskelijas
  # GET /opiskelijas.json
  def index
    @opiskelijas = Opiskelija.all
  end

  # GET /opiskelijas/1
  # GET /opiskelijas/1.json
  def show
  end

  # GET /opiskelijas/new
  def new
    @opiskelija = Opiskelija.new
  end

  # GET /opiskelijas/1/edit
  def edit
  end

  # POST /opiskelijas
  # POST /opiskelijas.json
  def create
    @opiskelija = Opiskelija.new(opiskelija_params)
    @opiskelija.ip_address = request.remote_ip
    respond_to do |format|
      if @opiskelija.save
        format.html { redirect_to root_path, notice: 'Ilmoittauduit onnistuneesti.' }
        format.json { render :show, status: :created, location: @opiskelija }
      else
        format.html { render :new }
        format.json { render json: @opiskelija.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opiskelijas/1
  # PATCH/PUT /opiskelijas/1.json
  def update
    respond_to do |format|
      if @opiskelija.update(opiskelija_params)
        format.html { redirect_to @opiskelija, notice: 'Opiskelija was successfully updated.' }
        format.json { render :show, status: :ok, location: @opiskelija }
      else
        format.html { render :edit }
        format.json { render json: @opiskelija.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opiskelijas/1
  # DELETE /opiskelijas/1.json
  def destroy
    @opiskelija.destroy
    respond_to do |format|
      format.html { redirect_to opiskelijas_url, notice: 'Opiskelija was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opiskelija
      @opiskelija = Opiskelija.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opiskelija_params
      params.require(:opiskelija).permit(:numero, :aika_id)
    end
end
