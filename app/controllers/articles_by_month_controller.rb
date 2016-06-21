class ArticlesByMonthController < ApplicationController

	def index
		@articles = Article.all
		@months = @articles.each.collect{|article| article.creation_month}.uniq
	end
end
