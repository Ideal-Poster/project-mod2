class RhymesController < ApplicationController

    def index
        @categories = RhymeCategory.all
    end

    def show
        @rhyme = Rhyme.find(params[:id])
    end

end
