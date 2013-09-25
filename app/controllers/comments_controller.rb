class CommentsController < ApplicationController

  def index
    render :json => Comment.all
  end

  def create
    comment = Comment.create(author: params[:author], text: params[:text])
    render :json => Comment.all
  end
end
