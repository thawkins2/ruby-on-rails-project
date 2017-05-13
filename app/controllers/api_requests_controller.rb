class ApiRequestsController < ApplicationController

	def la_liga
  	@league_table = get_table(436)
  end
end
