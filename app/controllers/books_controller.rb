class BooksController < ApplicationController
    def index
        books = Book.all
        respond_to do |format|
            format.json {render json: books, status:200}
            #curl -iH "Accept: application/json" https://library-api-pahigueraf.c9users.io/books
            format.html{render html:"Hola mundo",status:200}
        end
    
    end
    def show
        book= Book.find(params[:id])
         respond_to do |format|
            format.json {render json: book, status:200}
        end
    end
    
    def create
        book = Book.new(params)
        if book.save
            respond_to do |format|
            format.json {render json: book, status:201}
            end
        else
            respond_to do |format|
            format.json {render json: book.errors, status: :unprocessable_entity}
            end
        end
    end
    def params_book
        params.permit(:name, :year, :code, :available)    
    end
end
