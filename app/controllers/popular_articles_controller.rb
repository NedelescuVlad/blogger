class PopularArticlesController < ApplicationController

	def index
		@articles = Article.all.sort_by{|article| article.views}.reverse[0..2]
	end

end
