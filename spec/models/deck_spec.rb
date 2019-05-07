require 'rails_helper'

describe Deck do

  describe "relationships" do
    #it { should have_many :owned_cards }
  end

  describe "validations" do
    it { should validate_presence_of :name}
  end
end
