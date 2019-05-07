require 'rails_helper'

describe Card, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :cost }
    it { should validate_presence_of :description }
  end

  describe "relationship" do
    it { should have_many(:owned_cards) }
    it { should have_many(:players).through(:owned_cards) }
  end
end
