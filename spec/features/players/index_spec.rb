require "rails_helper"

RSpec.describe "when visiting players index path" do
  attr_reader :player_1, :player_2, :player_3

  before :each do
    Player.destroy_all
   
    @player_1 = create(:player) 
    @player_1.cards << create(:card)

    @player_2 = create(:player) 
    @player_2.cards << create(:card)

    @player_3 = create(:player) 
    @player_3.cards << create(:card) 

    visit '/players'
  end

  Player.all.each do |player| 

    it "should see a list of players" do 
    
      within "#player-#{player.id}" do
        expect(page).to have_content("#{player.name}")
        expect(page).to have_content("#{player.age}")
        expect(page).to have_content("Hometown: #{player.hometown}")
        expect(find("#player-#{player.id}-image")[:src]).to have_content(player.image)
      end
    end

    it "should see a list of each players cards with name,card cost, and details" do
      within "#player-#{player.id}-cards" do
        expect(page).to have_content("Cards: #{player.cards.count}")
        
        player.cards.each do |card|
          expect(page).to have_content card.name
          expect(page).to have_content card.cost
          expect(page).to have_content card.description 
        end
      end
    end

    it "should only shows players based on age" do
      visit "/players/?age=#{player.age}"
      expect(page).to have_content(player.name)
      expect(page).to have_content("Avg Age: #{player.age}")
    end

    it "should see an area marked Statistics on page" do
      expect(page).to have_content("Statistics")
      expect(page).to have_content("Avg Age: #{Player.avg_age.to_i}")
      expect(page).to have_content("Hometowns: #{player.hometown}")
    end
  end
end
