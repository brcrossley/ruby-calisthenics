class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if (player1[1] == "P" and player2[1] == "R") or (player1[1] == "R" and player2[1] == "S") or (player1[1] == "S" and player2[1] == "P") or (player1[1] == "R" and player2[1] == "R") or (player1[1] == "S" and player2[1] == "S") or (player1[1] == "P" and player2[1] == "P")
	player1
    elsif (player1[1] == "R" and player2[1] == "P") or (player1[1] == "S" and player2[1] == "R") or (player1[1] == "P" and player2[1] == "S")
	player2
    else
	raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0]
 	winner(tournament[0],tournament[1])
    else
	winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
    end
  end
end
