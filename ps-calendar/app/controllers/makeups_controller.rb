class MakeupsController < ApplicationController
  before_action :set_makeup, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_available, only: [:show, :new, :create]

  # GET /makeups
  # GET /makeups.json
  def index
    @makeups = Makeup.all
  end

  # GET /makeups/1
  # GET /makeups/1.json
  def show
  end

  # GET /makeups/new
  def new
      @makeup = Makeup.new
  end

  # GET /makeups/1/edit
  def edit
  end

  # POST /makeups
  # POST /makeups.json
  def create
    @makeup = Makeup.new(makeup_params)

    respond_to do |format|
      if @makeup.save
        format.html { redirect_to @makeup, notice: 'Makeup was successfully created.' }
        format.json { render :show, status: :created, location: @makeup }


      else
        format.html { render :new }
        format.json { render json: @makeup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makeups/1
  # PATCH/PUT /makeups/1.json
  def update
    respond_to do |format|
      if @makeup.update(makeup_params)
        format.html { redirect_to @makeup, notice: 'Makeup was successfully updated.' }
        format.json { render :show, status: :ok, location: @makeup }
      else
        format.html { render :edit }
        format.json { render json: @makeup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makeups/1
  # DELETE /makeups/1.json
  def destroy
    @makeup.destroy
    respond_to do |format|
      format.html { redirect_to makeups_url, notice: 'Makeup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_makeup
      @makeup = Makeup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def makeup_params
      params.require(:makeup).permit(:user_name, :user_email, :user_cohort, :clicked_day, :clicked_cohort)
    end

    def check_if_available
      spot_available = Makeup.where(clicked_day: "#{params[:clicked_day]}", clicked_cohort: "#{params[:clicked_cohort]}").count

      if spot_available == 0
        puts "2 spots available"
        elsif spot_available == 1
        puts "1 spot available"
        else
        puts "sorry no spots available"
      end

    end
end
