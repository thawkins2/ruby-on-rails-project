class ScoresController < ApplicationController
	def index

	end

	def la_liga_matchday
		matchday = get_table(436)
		@games = matchday_games(436, matchday["matchday"])
		@next_games = next_matchday_games(436, matchday["matchday"])
	end

	def epl_matchday
		matchday = get_table(426)
		@games = matchday_games(426, matchday["matchday"])
		@next_games = next_matchday_games(426, matchday["matchday"])
	end

	def bundesliga_matchday
		matchday = get_table(430)
		@games = matchday_games(430, matchday["matchday"])
		@next_games = next_matchday_games(430, matchday["matchday"])
	end

	def seria_a_matchday
		matchday = get_table(438)
		@games = matchday_games(438, matchday["matchday"])
		@next_games = next_matchday_games(438, matchday["matchday"])
	end

	def eredivise_matchday
		matchday = get_table(433)
		@games = matchday_games(433, matchday["matchday"])
		@next_games = next_matchday_games(433, matchday["matchday"])
	end

	def league_one_matchday
		matchday = get_table(434)
		@games = matchday_games(434, matchday["matchday"])
		@next_games = next_matchday_games(434, matchday["matchday"])
	end
end
