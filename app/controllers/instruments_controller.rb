class InstrumentsController < ApplicationController

    def index
        @instruments = Instrument.all
    end



    private

    def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end

    
end
