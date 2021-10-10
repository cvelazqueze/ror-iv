# frozen_string_literal: true

class AuthorsController < ApplicationController
  # GET /authors/new
  def new
    @author = Author.new
  end

  # POST /authors
  # POST /authors.json
  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to new_book_path, notice: 'Author was successfully created.' }
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use strong parameters to restrict attributes that can be changed
  def author_params
    params.require(:author).permit(:name)
  end
end
