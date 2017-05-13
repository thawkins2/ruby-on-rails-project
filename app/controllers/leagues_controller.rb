class LeaguesController < ApplicationController
	def index

	end

	def la_liga
		@league_table = get_table(436)
	end

	def epl
		@league_table = get_table(426)
	end

	def bundesliga
		@league_table = get_table(430)
	end

	def seria_a
		@league_table = get_table(438)
	end

	def eredivise
		@league_table = get_table(433)
	end

	def league_one
		@league_table = get_table(434)
	end
end
