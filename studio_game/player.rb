class Player

    attr_accessor  :name, :health
    

    def initialize(name,health=150)
        @name = name.capitalize
        @health = health
    end 

    def score
        @health + @name.length
    end

    def strong?
        @health > 100
    end 

    def to_s
        "I'm #{@name} with a health of #{@health} and a score of #{score}."
    end

    def blammed
        @health-=10
        puts"#{@name} got blammed"
    end

    def wooted
        @health+=15
        puts "#{@name} got wooted"
    end

    def <=>(other)
        other.score <=> score
    end 

end
    
if __FILE__ == $0       #this code will only run if we run this file (not any files that this is imported from)
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.wooted
    puts player.health
    player.blammed
    puts player.health
end 