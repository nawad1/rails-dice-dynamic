class GamesController < ApplicationController
  def homepage
    render ({:template => "game_templates/homepage"})
  end

  def process_roll
    @num_of_dice = params.fetch("number_of_times").to_i
    @num_of_sides = params.fetch("number_of_sides").to_i
  
    @rolls = []
  
    @num_of_dice.times do
      die = rand(1..@num_of_sides)
  
      @rolls.push(die)
    end
    
    render ({:template => "game_templates/flexible"})
  end


end
