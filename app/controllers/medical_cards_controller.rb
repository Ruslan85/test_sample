class MedicalCardsController < ApplicationController

  def index
    @cards = MedicalCard.all
  end

  def new
    @card = MedicalCard.new
  end

  def show
    @card = MedicalCard.find(params[:id])
  end

  def edit
    @card = MedicalCard.find(params[:id])
  end

  def create
    @card = MedicalCard.new(params[:medical_card])

    if @card.save
      flash[:success] = "New Medical Card!"
      redirect_to @card
    else
      render 'new'
    end
  end

  def update
    @card = MedicalCard.find(params[:id])

    if @card.update_attributes(params[:medical_card])
      redirect_to @card, notice: 'Medical Card was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @card = MedicalCard.find(params[:id])
    @card.destroy

    redirect_to medical_cards_url 
  end

  def user_inform
    @card = MedicalCard.find(params[:id])
  end  
end
