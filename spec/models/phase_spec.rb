require 'spec_helper'
describe Phase do
  context "associations" do
    it { should have_many :units }
  end
end
