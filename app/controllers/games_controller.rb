class GamesController < ApplicationController


  def play_rock
    @computer_move = ["Rock","Paper","Scissors"].sample

     if @computer_move == "Rock"
      @outcome= "tied"
      @image = "fa-hand-rock-o"
    elsif @computer_move == "Paper"
      @outcome= "lose"
      @image = "fa-hand-paper-o"
     else
      @outcome= "win"
      @image ="fa-hand-scissors-o"
    end

    render("games/play_rock.html.erb")

  end

  def play_paper
     @computer_move = ["Rock", "Paper",
    "Scissors"].sample
     if @computer_move == "Rock"
     @outcome= " win"
     @image = "fa-hand-rock-o"
   elsif @computer_move == "Paper"
     @outcome= " tied"
     @image = "fa-hand-paper-o"
     else
     @outcome= " lose"
     @image ="fa-hand-scissors-o"
     end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample
     if @computer_move == "Rock"
     @outcome= " lost"
     @image = "fa-hand-rock-o"
   elsif @computer_move == "Paper"
     @outcome= " win"
     @image = "fa-hand-paper-o"
     else
     @outcome= " tie"
     @image ="fa-hand-scissors-o"
     end

    render("games/play_scissors.html.erb")
  end

end
