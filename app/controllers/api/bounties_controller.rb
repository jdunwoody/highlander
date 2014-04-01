module Api
  class BountiesController < ApplicationController

    respond_to :json

    def index
      respond_with do |format|
        format.json { render json: Bounty.unclaimed.order(:created_at).decorate }
      end
    end

  end
end
