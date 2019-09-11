class MinionsController < ApplicationController
  before_action :set_minion, only: [:show, :edit, :update, :destroy]

  # GET /minions
  # GET /minions.json
  def index
    @minions = Minion.all
  end

  # GET /minions/1
  # GET /minions/1.json
  def show
  end

  # GET /minions/new
  def new
    @minion = Minion.new
  end

  # GET /minions/1/edit
  def edit
  end

  # POST /minions
  # POST /minions.json
  def create
    @minion = Minion.new(minion_params)

    respond_to do |format|
      if @minion.save
        format.html { redirect_to @minion, notice: 'Minion was successfully created.' }
        format.json { render :show, status: :created, location: @minion }
      else
        format.html { render :new }
        format.json { render json: @minion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minions/1
  # PATCH/PUT /minions/1.json
  def update
    respond_to do |format|
      if @minion.update(minion_params)
        format.html { redirect_to @minion, notice: 'Minion was successfully updated.' }
        format.json { render :show, status: :ok, location: @minion }
      else
        format.html { render :edit }
        format.json { render json: @minion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minions/1
  # DELETE /minions/1.json
  def destroy
    @minion.destroy
    respond_to do |format|
      format.html { redirect_to minions_url, notice: 'Minion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minion
      @minion = Minion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minion_params
      params.require(:minion).permit(:name, :description, :super_villain_id)
    end
end
