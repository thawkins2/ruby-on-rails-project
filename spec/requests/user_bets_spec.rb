require 'rails_helper'

RSpec.describe "UserBets", type: :request do
  describe "GET /user_bets" do
    it "works! (now write some real specs)" do
      get user_bets_path
      expect(response).to have_http_status(200)
    end
  end
end
