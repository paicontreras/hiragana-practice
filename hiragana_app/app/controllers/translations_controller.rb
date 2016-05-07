class TranslationsController < ApplicationController

	def index
	end

	def show
		@word = Word.wordlist
		@translation = Translation.find(params[:id])
	end

	def new
		@word = Word.wordlist
		@translation = Translation.new
	end

	def create
		@translation = Translation.new(translation_params)
		
		if @translation.save
		redirect_to @translation
		else
		render 'new'
		end
 	end

 	private
 	def translation_params
 		params.require(:translation).permit(:text)
 	end

end
