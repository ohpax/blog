class CommentsController < ApplicationController

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.new(comments_params)
		@comment.user = current_user
		respond_to do |format|
			if @comment.save
				format.html { redirect_to @article, notice: 'Comment posted successfully.'}
				format.json { render :show, status: :created, location: @article }
			else
				
				format.html { redirect_to @article, alert: @comment.errors[:body][0] }
				format.json { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def comments_params
		params.require(:comment).permit(:user_id, :body)
	end
end
