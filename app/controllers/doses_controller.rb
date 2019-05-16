class DosesController < ApplicationController
  before_action :set_restaurant

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@dose)
  end

  private

  def dose_params
    params.require(:dose).permit(:content)
  end

  def set_restaurant
    @cocktails = Cocktail.find(params[:cocktail_id])
  end
end
