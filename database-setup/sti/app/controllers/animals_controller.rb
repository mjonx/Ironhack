class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :set_race

  def index
    @animals = race_class.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_race
      @race = race
    end

    def race
      Animal.races.include?(params[:type]) ? params[:type] : "Animal"
    end

    def race_class
      race.constantize
    end

    def set_animal
      @animal = race_class.find(params[:id])
    end
end
