# -*- encoding : utf-8 -*-
class PdfpagesController < ApplicationController

  # before_filter :authenticate

  # GET /pdfpages
  # GET /pdfpages.json
  def index
    @pdfpages = Pdfpage.order("edition").paginate page: params[:page], per_page: 20
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pdfpages }
    end
  end

  # GET /pdfpages
  # GET /pdfpages.json         .order("pdf_date")
  def uppdf
    @pdfpages = Pdfpage.find_all_by_edition("Южная правда").paginate page: params[:page], per_page: 20
    respond_to do |format|
      format.html # uppdf.html.erb
      format.json { render json: @pdfpages }
    end
  end

  # GET /pdfpages
  # GET /pdfpages.json
  def vppdf
    @pdfpages = Pdfpage.find_all_by_edition("Вестник Прибужья").paginate page: params[:page], per_page: 20
    respond_to do |format|
      format.html # vppdf.html.erb
      format.json { render json: @pdfpages }
    end
  end

    # GET /pdfpages
  # GET /pdfpages.json
  def tdpdf
    @pdfpages = Pdfpage.find_all_by_edition("Щотижня").paginate page: params[:page], per_page: 20
    respond_to do |format|
      format.html # tdpdf.html.erb
      format.json { render json: @pdfpages }
    end
  end

  # GET /pdfpages/1
  # GET /pdfpages/1.json
  def show
    @pdfpage = Pdfpage.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pdfpage }
    end
  end

  # GET /pdfpages/new
  # GET /pdfpages/new.json
  def new
    @pdfpage = Pdfpage.new

    @pdfpages_last = Pdfpage.order("created_at DESC").limit(20)
    #where('edition="Южная правда"').
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pdfpage }
    end
  end

  # GET /pdfpages/1/edit
  def edit
    @pdfpage = Pdfpage.find(params[:id])
    @pdfpages_last = Pdfpage.order("created_at DESC").limit(20)
    
  end

  # POST /pdfpages
  # POST /pdfpages.json
  def create
    @pdfpage = Pdfpage.new(params[:pdfpage])

    respond_to do |format|
      if @pdfpage.save
        format.html { redirect_to @pdfpage, notice: 'Pdfpage was successfully created.' }
        format.json { render json: @pdfpage, status: :created, location: @pdfpage }
      else
        format.html { render action: "new" }
        format.json { render json: @pdfpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pdfpages/1
  # PUT /pdfpages/1.json
  def update
    @pdfpage = Pdfpage.find(params[:id])

    respond_to do |format|
      if @pdfpage.update_attributes(params[:pdfpage])
        format.html { redirect_to @pdfpage, notice: 'Pdfpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pdfpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdfpages/1
  # DELETE /pdfpages/1.json
  def destroy
    @pdfpage = Pdfpage.find(params[:id])
    @pdfpage.destroy

    respond_to do |format|
      format.html { redirect_to pdfpages_url }
      format.json { head :no_content }
    end
  end
end

#============================ PDF-pages viewers ==========================================================


  # GET /pdfpages
  # GET /pdfpages.json
  def vppdf
    @pdfpages = Pdfpage.order("edition").paginate page: params[:page], per_page: 20

    respond_to do |format|
      format.html # uppdf.html.erb
      format.json { render json: @pdfpages }
    end
  end

  # GET /pdfpages
  # GET /pdfpages.json
  def tdpdf
    @pdfpages = Pdfpage.order("edition").paginate page: params[:page], per_page: 20

    respond_to do |format|
      format.html # uppdf.html.erb
      format.json { render json: @pdfpages }
    end
  end