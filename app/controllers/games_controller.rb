class GamesController < ApplicationController
  def play_rock
    @computer_move = ["Rock","Paper","Scissors"].sample

     if @computer_move == "Rock"
      @outcome= "tied"
    elsif @computer_move == "Paper"
      @outcome= "lose"
     else
      @outcome= "win"
    end

    render("games/play_rock.html.erb")

  end

  def play_paper
     @computer_move = ["Rock", "Paper",
    "Scissors"].sample
     if @computer_move == "Rock"
     @outcome= " win"
   elsif @computer_move == "Paper"
     @outcome= " tied"
     else
     @outcome= " lose"
     end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample
     if @computer_move == "Rock"
     @outcome= " lost"
   elsif @computer_move == "Paper"
     @outcome= " win"
     else
     @outcome= " tie"
     end

    render("games/play_scissors.html.erb")
  end

end
