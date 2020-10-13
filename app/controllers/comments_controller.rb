class CommentsController < ApplicationController
  before_action :set_article

  def create
    @comment = @article.comments.build(comment_params)
    if @comment.save
      redirect_to article_path(@article), notice: "Your comment was created"
    else
      redirect_to article_path(@article), notice: "Your comment was not created"
    end

  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:author, :body)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end
end
