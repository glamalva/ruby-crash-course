require_relative 'player' #how to import files 
require_relative 'die'
require_relative 'game_turn'


class Game 

    attr_reader :title

    def initialize(title,players=[])
        @title = title.capitalize
        @players = players
    end

    def play(rounds)
        puts "There are #{@players.size} players in the #{@title}"
        puts @players

        1.upto(rounds) do |round|
            puts "\nRound #{round}:"

            @players.each do |player|
                GameTurn.take_turn(player)
                puts player
            end 
        end 
    
    end

    def add_player(player)
        @players << player
    end

    def print_stats
        strong_players = @players.select { |player| player.strong? }
        wimpy_players = @players.reject { |player| player.strong? }

        puts "\n#{@title} Statistics: "

        puts "\n#{strong_players.size} strong players: "
        strong_players.each do |player|
            print_name_and_health(player)
        end 

        puts "\n#{wimpy_players.size} strong players: "
        wimpy_players.each do |player|
            print_name_and_health(player)
        end 

        sorted_players = @players.sort { |a,b| b.score <=> a.score}
        puts "\n#{@title} High Scores:"
        @players.sort.each do |player|
            formatted_name = player.name.ljust(20, '.')
            puts "#{formatted_name} #{player.score}"
        end
    end 

    def print_name_and_health(player)
        puts "#{player.name} (#{player.health})"
    end 


end