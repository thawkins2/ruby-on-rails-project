module ApiRequest
	extend ActiveSupport::Concern

	def get_table
		response = FootballData.fetch(:soccerseasons, :leagueTable, id: 436)

		puts response
		if response.nil?
			return 'did not work'
		else
			return response.body
		end
	end

	def upcomingGames
	end
end