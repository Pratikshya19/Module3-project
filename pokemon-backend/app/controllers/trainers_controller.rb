class TrainersController < ApplicationController
    
    def index
        @pokemons = Pokemon.all
        render json: @pokemons
    
end

def show
  @trainer = Trainer.find_by(:id)  
    render json: @trainer
end

end