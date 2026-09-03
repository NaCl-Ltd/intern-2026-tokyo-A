class BookmarksController < ApplicationController
  before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.bookmark(@micropost)
    respond_to do |format|
      format.html { redirect_to @micropost }
      format.turbo_stream
    end
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.unbookmark(@micropost)
    respond_to do |format|
      format.html { redirect_to @micropost }
      format.turbo_stream
    end
  end
end
