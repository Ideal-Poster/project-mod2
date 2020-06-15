class BooksController < ApplicationController

    def index
        @categories = BookCategory.all
    end

end
