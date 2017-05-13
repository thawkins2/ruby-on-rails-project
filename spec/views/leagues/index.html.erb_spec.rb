require 'rails_helper'

RSpec.describe 'scores#index', type: :view do
	it "renders league table links" do
		render
		assert_select "a[href=?]", :count => 7
	end
end
