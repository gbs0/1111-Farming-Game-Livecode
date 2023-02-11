require_relative 'grains'

class Corn < Grains
  def crop!
    if @quantity == 0
        "There's no Corn planted yet!"
    elsif @quantity <= 5
        puts "Hold On! Faltam 2 semanas p/ colher!"
    elsif @quantity <= 10
        puts "Hold On! Faltam 1 semanas p/ colher!"
    else
        # Corte do milho
        @stock += @quantity
        @quantity -= @quantity

        puts "Your crop is done! ✅"
    end
  end
end