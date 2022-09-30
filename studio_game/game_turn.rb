require_relative 'player'
require_relative 'die'

module GameTurn

    def self.take_turn(player)
            die = Die.new
            number_rolled = die.roll
            # if number_rolled < 3 
            #     player.blammed
            # elsif number_rolled < 5
            #     puts "#{player.name} was skipped"
            # else
            #     player.wooted
            # end 

            case number_rolled
            when 1..2 
                player.blammed
            when 3..4
                puts "#{player.name} was skipped"
            else 
                player.wooted
            
            end 
    end

end 