class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless player1[1] == "/[RPS]/" and player2[1] == "/[RPS]/"

    round = player[1] + player2[1] #combines the two strategies into one string for easy handling
    if round == "/(PR)|(RS)|(SP)/"
	player1
    else
	player2
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
