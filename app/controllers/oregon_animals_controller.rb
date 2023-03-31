class OregonAnimalsController < ApplicationController

  def index
    animals = OregonAnimal.all
    render json: animals
  end

  def show
    animal = OregonAnimal.find(params[:id])
    render json: animal
  end
  
  def create 
    animal = OregonAnimal.create(animal_params)
    if animal.valid?
        render json:animal
    else
        render json: animal.errors
    end

  end

  def update
    animal =OregonAnimal.find(params[:id])
    animal.update(animal_params)
    if animal.valid?
      render json: animal
    else
      render json: animal.errors
    end
  end

  def destroy
    animal = OregonAnimal.find(params[:id])
    if animal.destroy
      render json: animal
    else
      render json: animal.errors
    end
  end


  

  private
  def animal_params
    params.require(:oregon_animal).permit(:name,:binomial)
  end


end
