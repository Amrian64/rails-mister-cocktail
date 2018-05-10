class DosesController < ActionController::Base

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

  end

   private

  def dose_params
    params.require(:dose).permit(:cocktail_id, :ingredient_id, :description)
  end

end


# def create
#     @cocktail = Cocktail.new(coktail_params)
#     if @cocktail.save
#       redirect_to cocktail_path(@cocktail)
#     else
#       render :new
#     end
#   end
