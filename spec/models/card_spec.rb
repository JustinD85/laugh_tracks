require 'rails_helper'

describe Card, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :cost }
    it { should validate_presence_of :description }
  end
end