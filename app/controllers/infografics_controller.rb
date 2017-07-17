# -*- encoding : utf-8 -*-
class InfograficsController < ApplicationController
  
  # before_filter :authenticate

  # GET /infografics
  # GET /infografics.json
  def index
    @infografics = Infografic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @infografics }
    end
  end

  # GET /infografics/1
  # GET /infografics/1.json
  def show
    @infografic = Infografic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @infografic }
    end
  end

  # GET /infografics/new
  # GET /infografics/new.json
  def new
    @infografic = Infografic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @infografic }
    end
  end

  # GET /infografics/1/edit
  def edit
    @infografic = Infografic.find(params[:id])
  end

  # POST /infografics
  # POST /infografics.json
  def create
    @infografic = Infografic.new(params[:infografic])

    respond_to do |format|
      if @infografic.save
        format.html { redirect_to @infografic, notice: 'Блок инфографики успешно создан.' }
        format.json { render json: @infografic, status: :created, location: @infografic }
      else
        format.html { render action: "new", layout: "infografics" }
        format.json { render json: @infografic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /infografics/1
  # PUT /infografics/1.json
  def update
    @infografic = Infografic.find(params[:id])

    respond_to do |format|
      if @infografic.update_attributes(params[:infografic])
        format.html { redirect_to @infografic, notice: 'Блок инфографики успешно обновлен.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @infografic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infografics/1
  # DELETE /infografics/1.json
  def destroy
    @infografic = Infografic.find(params[:id])
    @infografic.destroy

    respond_to do |format|
      format.html { redirect_to infografics_url }
      format.json { head :no_content }
    end
  end
end
