require 'spec_helper'


describe "API Requests" do
	it "receives successful json response" do
		response = FootballData.fetch(:soccerseasons, :leagueTable, id: 436)

		expect(response).to be_success
	end
end
