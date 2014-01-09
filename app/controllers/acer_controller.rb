class AcerController < ApplicationController

	def index
	  @acers = Acer.all
	end
end
