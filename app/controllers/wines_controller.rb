class WinesController < ApplicationController
  before_action :signed_in_user

  def index
  end

  def create
  	@wine = current_user.wines.build(wine_params)
  	if @wine.save
      flash[:success] = "Wine created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

  	def wine_params
  		params.require(:wine).permit(:name, :vintage, :grapes, :alcohol,
        :producer, :country_id, :region_id, :temperature, :price,
        :appearance_colour_id, :appearance_colour_detail_id,
        :appearance_observation, :appearance_clarity_id, :appearance_intensity_id, 
        :nose_condition_id, :nose_intensity_id, :nose_aroma, :nose_development_id, 
        :palate_sweetness_id, :palate_acidity_id, :palate_tannin_id, :palate_tannin_nature,
        :palate_alcohol_id, :palate_body_id, :palate_flavintensity_id, 
        :palate_flavchar, :palate_observation, :palate_finish_id, :conclusion_quality_id, 
        :conclusion_quality_reason, :conclusion_readiness_id, :conclusion_readiness_reason, 
        :conclusion_details, :conclusion_price_id)
    end
end