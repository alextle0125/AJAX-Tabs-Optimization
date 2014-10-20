class ChallengesController < ApplicationController
  def index
    @tracks = []
    Phase.all.each do |phase|
      phase.units.each do |unit|
        @tracks << "#{phase.name}_#{unit.number}"
      end
    end
    @tracks
  end

  def show
    @phase = params[:id].match(/phase-\d/).to_s
    @unit = params[:id].match(/unit-\d/).to_s
    @challenges = Phase.find_by_name(@phase).units.find_by_number(@unit).challenges
  end

  def all
    challenge_id = params[:id]
    @description = Challenge.find_by_name(challenge_id).description
    @image = Challenge.find_by_name(challenge_id).image
  end
end
