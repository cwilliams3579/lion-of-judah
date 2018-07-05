class LikesController < ApplicationController
  before_action :set_book
  before_action :authenticate_user!
  skip_after_action :verify_authorized

  def create
    @like = @book.likes.where(like: params[:like], user_id: current_user).create

    if @like.valid?
      flash[:notice] = "You #{params[:like]} this book"
    else
      flash[:alert] = "You've already made your choice."
    end
    redirect_to book_path(@book)
  end



  private

    def set_book
      @book = Book.friendly.find(params[:book_id])
    end
end