class HomeController < ApplicationController
  def index
	@cards = MedicalCard.all
  end
end
