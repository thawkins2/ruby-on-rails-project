class HomePageController < ApplicationController
  def home
  	@lague_table = get_table(436)
  end
end
