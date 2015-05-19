class BooksController < ApplicationController
  def index
    @books = Book.all.each_slice(4).to_a
  end

  def show
    @book = Book.find(params[:id])
  end
end
