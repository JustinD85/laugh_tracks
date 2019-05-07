require 'rails_helper'

describe Player, type: :model do
  describe "validations" do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :hometown }
    it { should validate_presence_of :image }
  end

  describe "relationships" do
    it { should have_many :owned_cards }
    it { should have_many(:cards).through(:owned_cards) }
  end

  describe "class methods" do
    attr_reader :player_1,:player_2

    before :each do
      @player_1 = create(:player) 
      @player_2 = create(:player) 

      player_1.cards << create(:card)
    end

    it "should return players whose age match show_by_age arguement" do
     
      expect(Player.select_by_age(player_1.age)).to  eq([player_1])
    end

    it "should return avg age" do
      expect(Player.avg_age).to eq(Player.average(:age))
    end
  end
end
