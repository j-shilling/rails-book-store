class BooksController < ApplicationController

  before_action :set_store, only: [:index]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    if @store.nil?
      @books = Book.all
    else
      @books = @store.books
    end
  end

  def new
    @book = Book.new
    @book.author = Author.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_store
    @store = Store.find(params[:store_id]) if !params[:store_id].nil?
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
  end

end
