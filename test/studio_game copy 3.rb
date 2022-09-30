class Player

    attr_accessor  :name
    attr_reader :health
    def initialize(name,health=100)
        @name = name.capitalize
        @health = health
    end 

    def score
        @health + @name.length
    end

    def to_s
        "I'm #{@name} with a health of #{@health} and a score of #{score}."
    end

    def blammed
        @health-=10
        puts"#{@name} got blammed"
    end

    def wooted(name)
        @health+=15
        puts "#{@name} got wooted"
    end
    
end

player1 = Player.new("moe")
#player1.name= "Lawrence"
#puts player1
player2 = Player.new("larry",50)
player3 = Player.new("curly",30)

    #puts player1.inspect
    #puts player1
    puts player2
    puts player3
    puts player3.blammed
    puts player3.to_s

players = [player1,player2,player3]
puts "There are #{players.size} players in the game"

players.pop
players.push(Player.new("Shemp",90))

players.each do |player|
    player.blammed
    puts player
end


