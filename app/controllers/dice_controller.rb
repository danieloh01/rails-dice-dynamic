class DiceController < ApplicationController
  def two_six
    @dice_rolls = Array.new
    2.times do 
      new_roll = rand(1..6)
      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/2d6"})
  end

  def two_ten
    @dice_rolls = Array.new
    2.times do 
      new_roll = rand(1..10)
      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/2d10"})
  end

  def one_twenty
    @dice_rolls = Array.new
    1.times do 
      new_roll = rand(1..20)
      @dice_rolls.push(new_roll)
    end
      render({ :template => "dice_templates/1d20"})
  end

  def five_four
    @dice_rolls = Array.new
    5.times do 
      new_roll = rand(1..4)
      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/5d4"})
  end

  def anything
    @dice_rolls = Array.new
    @num_dice = params.fetch("zebra").to_i
    @sides = params.fetch("giraffe").to_i
    
    @num_dice.times do 
      new_roll = rand(1..@sides)
      @dice_rolls.push(new_roll)
    end
    render({ :template => "dice_templates/anything"})
  end

  def home
    render({ :template => "dice_templates/home"})
  end

end
