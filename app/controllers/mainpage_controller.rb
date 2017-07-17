# -*- encoding : utf-8 -*-

class MainpageController < ApplicationController
  def index
    @find_result = ["dt" => true, "ra" => true, "id" => true, "im" => true, 
      "pet" => true, "aut" => true, "ect" => true, "cot" => true, "cut" => true, "pet" => true, 
      "pea" => true, "aua" => true, "eca" => true, "coa" => true, "cua" => true, "pea" => true]
# --- Тема дня ---
  	@daytheme_articles = Article.find_all_by_genre("тема дня").sort!{ |a,b| b.created_at <=> a.created_at }.take(4)
    #@daytheme_articles = Article.find_by_sql("(genre='тема дня') AND (ORDER by created_at desc)").first(4)      
    if @daytheme_articles.nil? 
      @find_result["dt"] = false
    end  
# --- Реклама ---
    #@reclam_articles = Reclam.where("(datetime('now') BETWEEN start_date AND stop_date) AND (mode='справа-вверху')")
    @reclam_articles = Reclam.where("(NOW() BETWEEN start_date AND stop_date) AND (mode='справа-вверху')")

# --- Инфографика ---"(date('now')=history_date) AND
    # @infografics_day = Infografic.where("(rubric='День в истории') AND (history_date=date(NOW()))")
    #@infografics_day = Infografic.find_by_rubric("День в истории")
    #@infografics_rubric_day = Infografic.find_by_rubric("День в истории")
    #if !@infografics_rubric_day.empty?
         @infografics_day = Infografic.where("DATE(history_date) = ?", Date.today).take(1)
    #end	 
    @info_day_yes = !@infografics_day.empty?
    @time_2 = Date.today - 1.day
    @time_1 = Date.today
    @infografics_misc = Infografic.find_all_by_rubric("Прочие")

# --- top articles ---
    @politics_top = Article.find_all_by_rubric_and_genre("Политика","топ").last(1)
    @authority_top = Article.find_all_by_rubric_and_genre("Власть","топ").last(1)
    @economics_top = Article.find_all_by_rubric_and_genre("Экономика","топ").last(1)
    @socium_top = Article.find_all_by_rubric_and_genre("Социум","топ").last(1)
    @culture_top = Article.find_all_by_rubric_and_genre("Культура","топ").last(1)
    @people_top = Article.find_all_by_rubric_and_genre("Человек","топ").last(1)

    @politics_set4 = Article.find_all_by_rubric_and_genre("Политика","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }
    @authority_set4 = Article.find_all_by_rubric_and_genre("Власть","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }
    @economics_set4 = Article.find_all_by_rubric_and_genre("Экономика","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }
    @socium_set4 = Article.find_all_by_rubric_and_genre("Социум","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }
    @culture_set4 = Article.find_all_by_rubric_and_genre("Культура","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }
    @people_set4 = Article.find_all_by_rubric_and_genre("Человек","статья").last(4).sort!{ |a,b| b.created_at <=> a.created_at }

# --- Рубрики ---    
    @politics_articles = @politics_top + @politics_set4
    @authority_articles = @authority_top + @authority_set4
  	@economics_articles = @economics_top + @economics_set4
  	@socium_articles = @socium_top + @socium_set4
    @culture_articles = @culture_top + @culture_set4
  	@people_articles = @people_top + @people_set4

# --- news ---
  	@news_world_articles = Article.find_all_by_rubric_and_genre("Мир","новость").last(5).sort!{ |a,b| b.created_at <=> a.created_at }
    @news_ukraine_articles = Article.find_all_by_rubric_and_genre("Украина","новость").last(5).sort!{ |a,b| b.created_at <=> a.created_at }
    @news_nikolaev_articles = Article.find_all_by_rubric_and_genre("Николаевщина","новость").last(10).sort!{ |a,b| b.created_at <=> a.created_at }
  end

  def worldnews_index
      @worldnews_articles = Article.find_all_by_rubric_and_genre("Мир","новость").last(200).sort!{ |a,b| b.created_at <=> a.created_at }.paginate(page: params[:page], per_page:7)
    render layout: "items"
  end  

  def ukrainenews_index
      @ukrainenews_articles = Article.find_all_by_rubric_and_genre("Украина","новость").last(200).sort!{ |a,b| b.created_at <=> a.created_at }.paginate(page: params[:page], per_page:7)    
    render layout: "items"
  end    

def nikolaevnews_index
      @nikolaevnews_articles = Article.find_all_by_rubric_and_genre("Николаевщина","новость").last(200).sort!{ |a,b| b.created_at <=> a.created_at }.paginate(page: params[:page], per_page:7)    
    render layout: "items"
  end   

  def allarticles_index
      @allarticles = Article.find_all_by_genre("статья").last(200).sort!{ |a,b| b.created_at <=> a.created_at }.paginate(page: params[:page], per_page:7)    
    render layout: "items"
  end   

  def show_item
      @article = Article.find(params[:id])
    render layout: "items"
  end

end