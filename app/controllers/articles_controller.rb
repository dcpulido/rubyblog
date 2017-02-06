class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

	def index
	    @articles = Article.all
	end

end
