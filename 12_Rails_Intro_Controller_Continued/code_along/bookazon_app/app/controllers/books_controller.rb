class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
<<<<<<< HEAD
    @book = Book.find(params[:id])
=======
    @book = get_book
>>>>>>> c93e07862b3941d651202b43986e96353a3e225a
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def edit
    @book = get_book
<<<<<<< HEAD

  end

  def update
    @books = get_book
    if @book.update(book_params)
=======
  end

  def update
    @book = get_book
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
>>>>>>> c93e07862b3941d651202b43986e96353a3e225a
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)
  end

  def get_book
<<<<<<< HEAD
    @book = Book.find(params[:id])
=======
    Book.find(params[:id])
>>>>>>> c93e07862b3941d651202b43986e96353a3e225a
  end
end
