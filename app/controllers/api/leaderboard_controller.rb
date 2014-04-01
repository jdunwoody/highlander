module Api
  class LeaderboardController < ApplicationController

    respond_to :json

    def index
      respond_with do |format|
        format.json { render json: Queries::RunningLeaderboard.new.query.decorate }
      end
    end

  end
end
