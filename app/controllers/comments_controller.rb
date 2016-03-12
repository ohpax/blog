class CommentsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.new(comments_params)
		@comment.user = current_user
		@comment.save
		redirect_to article_path(@article)
	end

	private
	def comments_params
		params.require(:comment).permit(:user_id, :body)
	end
end
