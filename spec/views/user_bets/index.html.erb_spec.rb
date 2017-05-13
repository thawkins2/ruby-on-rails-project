require 'rails_helper'

RSpec.describe "user_bets/index", type: :view do
  before(:each) do
    assign(:user_bets, [
      UserBet.create!(
        :bet_id => 2,
        :user_selection => "User Selection",
        :user_id => 3,
        :amount_bet => 4
      ),
      UserBet.create!(
        :bet_id => 2,
        :user_selection => "User Selection",
        :user_id => 3,
        :amount_bet => 4
      )
    ])
  end

  it "renders a list of user_bets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "User Selection".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
