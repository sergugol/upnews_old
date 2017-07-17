# -*- encoding : utf-8 -*-
class ReclamsController < ApplicationController

  # before_filter :authenticate
 
  # GET /reclams
  # GET /reclams.json
   def index
    @reclams = Reclam.order("start_date").paginate page: params[:page], per_page: 20
    #@reclams = Reclam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reclams }
    end
  end

  # GET /reclams/1
  # GET /reclams/1.json
    def show
    @reclam = Reclam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reclam }
    end
  end

  # GET /reclams/new
  # GET /reclams/new.json
  def new
    @reclam = Reclam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reclam }
    end
  end

  # GET /reclams/1/edit
  def edit
    @reclam = Reclam.find(params[:id])
  end

  # POST /reclams
  # POST /reclams.json
  def create
    @reclam = Reclam.new(params[:reclam])

    respond_to do |format|
      if @reclam.save
        format.html { redirect_to @reclam, notice: 'Реламный блок успешно создан.' }
        format.json { render json: @reclam, status: :created, location: @reclam }
      else
        format.html { render action: "new", layout: "reclams" }
        format.json { render json: @reclam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reclams/1
  # PUT /reclams/1.json
  def update
    @reclam = Reclam.find(params[:id])

    respond_to do |format|
      if @reclam.update_attributes(params[:reclam])
        format.html { redirect_to @reclam, notice: 'Рекламный блок успешно обновлен.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reclam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclams/1
  # DELETE /reclams/1.json
  def destroy
    @reclam = Reclam.find(params[:id])
    @reclam.destroy

    respond_to do |format|
      format.html { redirect_to reclams_url }
      format.json { head :no_content }
    end
  end
end
