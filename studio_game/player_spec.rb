require_relative 'player'

describe Player do


    before do
        @inital_health = 150
        @player = Player.new("larry",@inital_health)
    end 

    it "has a capitalized name " do
        

        @player.name.should == "Larry"
    end 

    it "has an inital health " do
        
        @player.health.should == 150
    end 

    it "has a string representation" do
        
        @player.to_s.should == "I'm Larry with a health of 150 and a score of 155."
    end 

    it "computes a score as the sum of its health and length of its name" do
        
        @player.score.should == 150 + 5 
    end 

    it "increases health by 15 when wooted" do 
        
        @player.wooted
        @player.health.should == @inital_health+=15
    end 

    it "decreases health by 10 when blammed" do 
        
       @player.blammed
       @player.health.should == @inital_health-=10
    end 

    context "created with a default health" do

        before do 
            @player = Player.new("larry")
        end 

        it "has a health of 150" do
            @player.health.should == 150
        end 

    end 

    context "with a health greater than 100" do

        before do
            @player = Player.new("larry")
        end 

        it "is strong" do
            #@player.strong?.should be_truthy
            @player.should be_strong
        end 
    end 

    context "with a health lesser than 100" do

        before do
            @player = Player.new("larry", 99)
        end 

        it "is not strong" do
            #@player.strong?.should be_truthy
            @player.should_not be_strong
        end 
    end 

    context "in a collection of players" do
        before do
          @player1 = Player.new("moe", 100)
          @player2 = Player.new("larry", 200)
          @player3 = Player.new("curly", 300)
      
          @players = [@player1, @player2, @player3]
        end
      
        it "is sorted by decreasing score" do
          @players.sort.should == [@player3, @player2, @player1]
        end
      end

end 