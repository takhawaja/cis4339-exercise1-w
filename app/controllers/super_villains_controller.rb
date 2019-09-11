class SuperVillainsController < ApplicationController
  before_action :set_super_villain, only: [:show, :edit, :update, :destroy]

  # GET /super_villains
  # GET /super_villains.json
  def index
    @super_villains = SuperVillain.all
  end

  # GET /super_villains/1
  # GET /super_villains/1.json
  def show
  end

  # GET /super_villains/new
  def new
    @super_villain = SuperVillain.new
  end

  # GET /super_villains/1/edit
  def edit
  end

  # POST /super_villains
  # POST /super_villains.json
  def create
    @super_villain = SuperVillain.new(super_villain_params)

    respond_to do |format|
      if @super_villain.save
        format.html { redirect_to @super_villain, notice: 'Super villain was successfully created.' }
        format.json { render :show, status: :created, location: @super_villain }
      else
        format.html { render :new }
        format.json { render json: @super_villain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_villains/1
  # PATCH/PUT /super_villains/1.json
  def update
    respond_to do |format|
      if @super_villain.update(super_villain_params)
        format.html { redirect_to @super_villain, notice: 'Super villain was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_villain }
      else
        format.html { render :edit }
        format.json { render json: @super_villain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_villains/1
  # DELETE /super_villains/1.json
  def destroy
    @super_villain.destroy
    respond_to do |format|
      format.html { redirect_to super_villains_url, notice: 'Super villain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_villain
      @super_villain = SuperVillain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_villain_params
      params.require(:super_villain).permit(:name, :description)
    end
end
