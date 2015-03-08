require 'spec_helper'

describe User do 
  describe "relationships" do 
    it { should have_many(:restaurants) }
  end

  describe "validations" do 
    
  end
end