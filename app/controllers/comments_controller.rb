class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]
	end

end
