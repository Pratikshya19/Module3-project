class PokemonsCOntroller < ApplicationController

    def show
        @pokemon = Pokemon.find_by(:id)  
        render json: @pokemon
      end
    def create
        unless pokemon_params[:trainer_id].nil?
          default = {}
    
          if Trainer.find(pokemon_params[:trainer_id]).pokemons.count < 6
            if pokemon_params[:name].nil?
              default[:name] = name
            end
    
            if pokemon_params[:type].nil?
              default[:type] = type
            end
    
            @pokemon = Pokemon.create(pokemon_params.merge(default))
            render json: @pokemon, status: 201
          else
            render json: { error: "Party is Full!"}, status: 403
          end
        else
          render json: { error: "Trainer not found"}, status: 404
        end
      end
    
      def destroy
        @pokemon = Pokemon.find(params[:id])
        unless @pokemon.nil?
          @pokemon.destroy
          render json: @pokemon
        else
          render json: { error: "Pokemon not Found!" }, status: 404
        end
      end
    
      private
      def pokemon_params
        params.require(:pokemon).permit(:name, :type, :description, :trainer_id)
      end
    end
    