class BooksController < ApplicationController

    def index
        @categories = BookCategory.all
    end


    def show
        @book = Book.find(params[:id])
    end
    # <% link_to "user page", user_path(User.find(session[:user_id])) 

end

