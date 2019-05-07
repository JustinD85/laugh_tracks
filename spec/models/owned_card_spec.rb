describe OwnedCard do 
  it {should validate_presence_of :count }
  describe "relationships" do
    it {should belong_to :player}
    it {should belong_to :card}
  end

end
