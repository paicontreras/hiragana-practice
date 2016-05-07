class Word < ActiveRecord::Base
	belongs_to :translation

	def self.wordlist
	   YAML.load_file("docs/wordlist.yml").to_a
	end

end

