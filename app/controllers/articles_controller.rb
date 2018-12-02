# -*- encoding : utf-8 -*-
class ArticlesController < ApplicationController
  
  #before_filter :authenticate, :except => [:index, :search, :show]

  # GET /articles
  # GET /articles.json
 def index
   @articles = Article.order(sort_column + ' ' + sort_direction).paginate page: params[:page], per_page: 50
   @sort_column = sort_column
   @sort_direction = sort_direction
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles
  # GET /articles.json
  def search
    @search = Article.search do
      fulltext params[:search]
    end
    @results_number = @search.results.size
    @articles = @search.results.paginate(page: params[:page], per_page:3)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Статья была успешна создана (Article was successfully created).' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new", layout: "articles" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, notice: 'Изменения в статью внесены успешно (Article was successfully updated).' }
        format.json { head :no_content }
      else
        format.html { render action: "edit", layout: "articles" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url }
      format.json { head :no_content }
    end
  end

  #def authenticate
    #authenticate_or_request_with_http_basic do |username, password|
    #  username == "admins" && password == "seenmnb"
    # end
  #end

  private
    def sort_column
      Article.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end
  
    def sort_direction
      %w[ASC DESC].include?(params[:direction]) ?  params[:direction] : "ASC"
    end  
end



