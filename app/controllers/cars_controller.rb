class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @cars = Car.search_by_make_and_model(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
  end

  def new
    @car = current_user.cars.build
  end

  def create
    @car = current_user.cars.build(car_params)
    if @car.save
      redirect_to @car, notice: "Car was successfully added."
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_url, notice: "Car was successfully deleted."
  end

  def update
    if @car.update(car_params)
      redirect_to @car, notice: "Car was successfully updated."
    else
      render :edit
    end
  end

  def edit
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :description, :price_per_day, :user_id)
  end
end
