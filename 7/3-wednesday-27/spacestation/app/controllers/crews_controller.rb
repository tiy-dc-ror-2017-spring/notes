class CrewsController < ApplicationController
  before_action :set_crew, only: [:show, :edit, :update, :destroy]

  # GET /crews
  def index
    @crews = Crew.all
  end

  # GET /crews/1
  def show
  end

  # GET /crews/new
  def new
    @station = Station.find(params[:station_id])
    @crew = @station.crews.build
  end

  # GET /crews/1/edit
  def edit
  end

  # POST /crews
  def create
    @station = Station.find(params[:station_id])

    @crew = @station.crews.build(crew_params)

    if @crew.save
      redirect_to [@station, @crew], notice: 'Crew was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /crews/1
  def update
    if @crew.update(crew_params)
      redirect_to @crew, notice: 'Crew was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /crews/1
  def destroy
    @crew.destroy
    redirect_to crews_url, notice: 'Crew was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew
      @crew = Crew.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def crew_params
      params.require(:crew).permit(:name, :country_code, :job_title, :station_id, :launch_at)
    end
end
