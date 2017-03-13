class MakeupsController < ApplicationController
  before_action :set_makeup, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_available_spots, only: [:show, :new, :create]

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

    def check_if_available_spots
      for i in Makeup.first.id..Makeup.all.size do
        first_day_available = Makeup.find(i).clicked_day
        first_cohort_available = Makeup.find(i).clicked_cohort
        for j in Makeup.first.id..Makeup.all.size do
          second_day_available = Makeup.find(j).clicked_day
          second_cohort_available = Makeup.find(j).clicked_cohort
          for k in Makeup.first.id..Makeup.all.size do
            third_day_available = Makeup.find(k).clicked_day
            third_cohort_available = Makeup.find(k).clicked_cohort

              if first_day_available = second_day_available && first_cohort_available == second_cohort_available
                puts "1 spot available"

              elsif first_day_available == second_day_available && first_day_available == third_day_available && first_cohort_available == second_cohort_available && first_cohort_available == third_cohort_available
                format.html {redirect_to @makeup, notice:"sorry no spots available"}

              else
                puts"2 spots available"

                end
              end
          end
        end
      end
end
