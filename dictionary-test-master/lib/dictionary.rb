class Dictionary
	attr_reader :words
	def initialize(words)
		@words = words
	end

	def find_meaning(word_to_search)
		search_word = @words.find { |word|
			word.word === word_to_search
		}
		return search_word.meaning unless search_word.nil?
		'word not found'
	end
end