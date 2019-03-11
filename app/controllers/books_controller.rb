class BooksController < ApplicationController

  before_action :set_location, only: [:index]
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    if @location.nil?
      @books = Book.all
    else
      @books = @location.books
    end
  end

  def new
    @book = Book.new
    @book.author = Author.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
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
    @book.destroy
    if @location.nil?
      redirect_to books_path
    else
      redirect_to location_books_path(@location)
    end
  end

  private

  def set_location
    @location = Location.find(params[:location_id]) if !params[:location_id].nil?
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(
      :title,
      :price,
      :author_id,
      author_attributes: [
        :first_name,
        :last_name
      ],
      location_ids: []
    )
  end

end
