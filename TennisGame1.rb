class TennisGame1

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_points = 0
    @player2_points = 0
  end


  def won_point(player_scored)
    player_scored == @player1 ? (@player1_points +=1) : (@player2_points +=1)
  end



  def score
    result = ""
    tempScore=0

    @player1_points==@player2_points ? result = {
        0: "Love-All",
        1: "Fifteen-All",
        2: "Thirty-All",
    }.fetch(@player1_points, "Deuce") : (@player1_points>=4 or @player2_points>=4 ? 'minusResult = @player1_points-@player2_points' : 'c') #=> "b"




    if (@player1_points==@player2_points)
      result = {
          0: "Love-All",
          1: "Fifteen-All",
          2: "Thirty-All",
      }.fetch(@player1_points, "Deuce")
    elsif (@player1_points>=4 or @player2_points>=4)
      minusResult = @player1_points-@player2_points
      if (minusResult==1)
        result ="Advantage " + @player1
      elsif (minusResult ==-1)
        result ="Advantage " + @player2
      elsif (minusResult>=2)
        result = "Win for " + @player1
      else
        result ="Win for " + @player2
      end


    else
      (1...3).each do |i|
        if (i==1)
          tempScore = @player1_points
        else
          result+="-"
          tempScore = @player2_points
        end
        result += {
            0: "Love",
            1: "Fifteen",
            2: "Thirty",
            3: "Forty",
        }[tempScore]
      end
    end

    result
  end
end
