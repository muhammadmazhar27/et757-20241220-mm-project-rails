class CountryDataFinalsController < ApplicationController
  before_action :set_country_data_final, only: %i[ show edit update destroy ]

  # GET /country_data_finals
  def index
    @country_data_finals = CountryDataFinal.all
  end

  # GET /country_data_finals/1
  def show
  end

  # GET /country_data_finals/new
  def new
    @country_data_final = CountryDataFinal.new
  end

  # GET /country_data_finals/1/edit
  def edit
  end

  # POST /country_data_finals
  def create
    @country_data_final = CountryDataFinal.new(country_data_final_params)

    if @country_data_final.save
      redirect_to @country_data_final, notice: "Country data final was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /country_data_finals/1
  def update
    if @country_data_final.update(country_data_final_params)
      redirect_to @country_data_final, notice: "Country data final was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /country_data_finals/1
  def destroy
    @country_data_final.destroy!
    redirect_to country_data_finals_path, notice: "Country data final was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_data_final
      @country_data_final = CountryDataFinal.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def country_data_final_params
      params.expect(country_data_final: [ :name, :mobilephones, :mortalityunder5, :healthexpenditurepercapita, :healthexpenditureppercentgdp, :population, :populationurban, :birthrate, :lifeexpectancy, :gdp ])
    end
end
