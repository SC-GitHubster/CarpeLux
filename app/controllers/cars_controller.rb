class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
    @car = Car
  end

  def new
    @car = curren_user.cars.build
  end

  def create
    @car = curren_user.cars.build(car_params)
  end

  def update
    @car = Car
  end

  def edit
    @car = Car
  end

  def destroy
    @car = Car
  end
end
