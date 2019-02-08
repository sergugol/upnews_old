# -*- encoding : utf-8 -*-
class SearchController < ApplicationController
  
  # before_filter :authenticate
  # GET /search
  # GET /search.json

	def index
	  @search = Article.search do
	    fulltext params[:search]
	  end
	  @articles = @search.results.paginate(page: params[:page], per_page:30)
	end
end