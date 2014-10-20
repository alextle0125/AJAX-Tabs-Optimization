require 'spec_helper'
describe Unit do
  context "associations" do
    it { should belong_to :phase }
    it { should have_many :challenges }
  end
end
