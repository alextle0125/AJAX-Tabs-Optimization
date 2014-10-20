require 'spec_helper'
describe Challenge do
  let(:unit) { FactoryGirl.create :unit }
  let(:unit2) { FactoryGirl.create :unit }
  let!(:challenge) { FactoryGirl.create :challenge, :unit => unit}
  let!(:challenge2) { FactoryGirl.create :challenge, :unit => unit2 }
  context ".grouped_by_phase_and_unit" do
    it "returns a hash of all challenges grouped by challenge and level" do
      results = {
        "#{challenge.unit.phase.name}_#{challenge.unit.number}" => [challenge],
        "#{challenge2.unit.phase.name}_#{challenge2.unit.number}" => [challenge2]
      }
      expect(Challenge.grouped_by_phase_and_unit).to eq(results)
    end
  end
  it "#image" do
    expect(Challenge::IMAGES).to include(challenge.image)
  end
  context "associations" do
    it { should belong_to :unit }
  end
end
