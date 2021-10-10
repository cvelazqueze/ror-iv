# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :find_book, only: :update

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to books_path, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_path, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def find_book
    @book = Book.find(params[:id])
  end

  # Use strong parameters to restrict attributes that can be changed
  def book_params
    params.require(:book).permit(:name, :author_id, :favorite, :year)
  end
end
