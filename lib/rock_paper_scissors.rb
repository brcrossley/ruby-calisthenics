class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    round = "#{player1[1]}#{player2[1]}" #combines the two strategies into one string for easy handling
    if round == "/(PR)|(RS)|(SP)/"
	player1
    elsif round == "/(RP)|(SR)|(PS)/"
	player2
    else
	raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
