module ArticlesHelper

	def article_params
		params.require(:article).permit(:title, :body, :tag_list)
	end

	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
