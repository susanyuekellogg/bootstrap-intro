class ThirdGameTargetController < ApplicationController
  layout "third_game_layout"

  def user_plays_rock
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won"
    end

    render("new_game_target/rock.html.erb")
  end

  def user_plays_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render("new_game_target/paper.html.erb")
  end

  def user_plays_scissors
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    end

    render("new_game_target/scissors.html.erb")
  end

  def rules_page
    render("new_game_target/rules.html.erb")
  end
end
