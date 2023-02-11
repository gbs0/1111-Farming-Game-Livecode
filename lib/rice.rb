require_relative 'grains'

class Rice < Grains
    def crop!
        if @quantity == 0
          puts "There's no Rice planted yet!"
        elsif @quantity <= 2
          puts "Hold On! Faltam 2 semanas p/ colher"
        elsif @quantity <= 5
            puts "Hold On! Faltam 1 semanas p/ colher"
        else
            @stock += @quantity
            @quantity -= @quantity
            puts "Your crop is done! ✅"
        end
    end    
end