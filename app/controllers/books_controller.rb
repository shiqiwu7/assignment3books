class BooksController < ApplicationController
  def index
    @search_term =params[:search] || 'java'
    # @books = Book.search(@search_term)
    response = Book.search(@search_term)
    @books = response["books"]
    @books ||= []
  end

  def details
    @book_id = params[:id]
    @book = Book.find(@book_id)
  end
end
