module Api
  module V1
    class MealsController < ApiController
      # >> GET >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      def index
        authorize_user(MealPolicy)
        render json: Meal.all
      end
      
      def show
        authorize_user(MealPolicy)
        render json: Meal.find(params[:id])
      end
      # >> POST >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
      # >> PATCH/PUT >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      # >> DELETE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      private

      # == Interactor =============================================================================

       # == Method =================================================================================

       # == Params =================================================================================

       # == Poros ==================================================================================

       # == Scope ==================================================================================

       # == Serializer =============================================================================
    end
  end
end
