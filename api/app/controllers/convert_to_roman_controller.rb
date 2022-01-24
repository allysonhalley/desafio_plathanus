class ConvertToRomanController < ApplicationController
    include ConvertToRomanHelper
    
    # Endpoins responsável pelo acesso ao algoritmo
    def convert
        render json: roman
    end

    protected

    def roman
        {
            roman_number: convert_to_roman(profile_params.fetch(:arabic))
        }
    end

    def profile_params
        params.require(:data).permit(:arabic)
    end
end