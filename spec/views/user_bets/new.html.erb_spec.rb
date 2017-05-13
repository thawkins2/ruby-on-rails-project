require 'rails_helper'

RSpec.describe "user_bets/new", type: :view do
  before(:each) do
    assign(:user_bet, UserBet.new(
      :bet_id => 1,
      :user_selection => "MyString",
      :user_id => 1,
      :amount_bet => 1
    ))
  end

  it "renders new user_bet form" do
    render

    assert_select "form[action=?][method=?]", user_bets_path, "post" do

      assert_select "input#user_bet_bet_id[name=?]", "user_bet[bet_id]"

      assert_select "input#user_bet_user_selection[name=?]", "user_bet[user_selection]"

      assert_select "input#user_bet_user_id[name=?]", "user_bet[user_id]"

      assert_select "input#user_bet_amount_bet[name=?]", "user_bet[amount_bet]"
    end
  end
end
