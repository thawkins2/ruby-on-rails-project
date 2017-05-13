require 'rails_helper'

RSpec.describe "user_bets/show", type: :view do
  before(:each) do
    @user_bet = assign(:user_bet, UserBet.create!(
      :bet_id => 2,
      :user_selection => "User Selection",
      :user_id => 3,
      :amount_bet => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/User Selection/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
