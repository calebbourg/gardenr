class Card
	attr_accessor :rank, :suit
	def initialize(rank, suit)
		self.rank = rank
		self.suit = suit
	end

	def card_builder
	suits = [:spades, :hearts, :diamonds, :clubs]
	ranks = (1..10).to_a 
	@cards = []  
	suits.each do |y|
		rank.each do |x|
	        @cards << Card.new(x, y)
		end
	end
		@cards
    end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end
end