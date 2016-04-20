class PracticeController < ApplicationController

	def index
		@wordlist = YAML.load_file('docs/wordlist.yml').to_a
	end

	def translation
	end
end
