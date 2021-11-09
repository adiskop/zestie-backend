class Api::V1::DishesController < ApplicationController
  before_action :set_dish, only: [:show, :update, :destroy]

  # GET /dishes
  def index
    if current_user.present?
      @dishes = current_user.dishes
      render json: DishSerializer.new(@dishes)
    else
      render json: {
        error: "You must log in to see dishes"
      }
    end
  end

  # GET /dishes/1
  def show
    render json: @dish
  end

  # POST /dishes
  def create
    @dish = current_user.dishes.build(dish_params)

    if @dish.save
      render json: DishSerializer.new(@dish), status: :created
    else
      error_resp = {
        error: @dish.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dishes/1
  def update
    if @dish.update(dish_params)
      render json: DishSerializer.new(@dish), status: :ok
    else
      error_resp = {
        error: @dish.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  # DELETE /dishes/1
  def destroy
    if @dish.destroy
      render json:  { data: "Dish successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Dish not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dish_params
      params.require(:dish).permit(:name, :picture, :ingredients, :directions, :cook_time)
    end
end
