module ApiRequestsHelper

	def spanish_table
		@spanish_table = get_table
	end

	def get_table(id)
		Rails.cache.fetch("api_request/#{id}", expires_in: 12.hours) do
			FootballData.fetch(:soccerseasons, :leagueTable, id: id)
		end
	end

	def matchday_games(id, matchday)
		Rails.cache.fetch("api_request/#{id}_fixtures", expires_in: 12.hours) do
			FootballData.fetch(:soccerseasons, :fixtures, id: id, matchday: matchday)
		end
	end

	def next_matchday_games(id, matchday)
		matchday = matchday.to_i + 1
		matchday.to_json

		Rails.cache.fetch("api_request/#{id}_fixtures", expires_in: 12.hours) do
			FootballData.fetch(:soccerseasons, :fixtures, id: id, matchday: matchday)
		end
	end
end
