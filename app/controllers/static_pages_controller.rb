class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
    if params[:search].present?
      @feed_items = Micropost
        .where("content LIKE ?", "%#{params[:search]}%")
        .paginate(page: params[:page])
    else
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end

  def help
  end

  def about
  end

  def contact
  end
end
