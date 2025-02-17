########### Join Model
# --- FundingRound#startup
# returns the startup object for that given funding round
# Once a funding round is created, I should not be able to change the startup
# --- FundingRound#venture_capitalist
# returns the venture capitalist object for that given funding round
# Once a funding round is created, I should not be able to change the venture capitalist
# --- FundingRound#type
# returns a string that is the type of funding round
# Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# --- FundingRound#investment
# returns a number that is the amount invested during this funding round
# This should be a float that is not a negative number.


class FundingRound 

    attr_reader :type, :investment, :startup, :venturecapitalist
    @@all = []
    
    def initialize(type, investment)
        @@all << self
    end

    def investment=(investment)
        if investment < 0
            @investment = 0
        else @investment = investment.to_i
        end
    end

    def self.all
        @@all
    end




end
