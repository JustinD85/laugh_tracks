describe OwnedCard do 
  describe "relationships" do
    it {should belong_to :player}
    it {should belong_to :card}
  end
end
