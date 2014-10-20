require 'spec_helper'
describe ChallengesController do
  context "#index" do
    it "assigns all of the challenges" do
      get :index
      expect(assigns(:challenges)).to eq Challenge.grouped_by_phase_and_unit
    end
  end
end
