class AnalyzesController < ApplicationController

  def index
    @analyzes = Analysis.all
  end

  def new
    @analysis = Analysis.new
  end

  def show
    @analysis = Analysis.find(params[:id])
  end

  def edit
    @analysis = Analysis.find(params[:id])
  end

  def create
    @analysis = Analysis.new(params[:analysis])

    if @analysis.save
      flash[:success] = "New Analysis!"
      redirect_to analyze_path(@analysis)
    else
      render 'new'
    end
  end

  def update
    @analysis = Analysis.find(params[:id])

    if @analysis.update_attributes(params[:analysis])
      redirect_to analyze_path(@analysis), notice: 'Analysis was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @analysis = Analysis.find(params[:id])
    @analysis.destroy

    redirect_to analyzes_url 
  end
end
