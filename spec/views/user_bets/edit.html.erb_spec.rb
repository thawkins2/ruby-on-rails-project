require 'rails_helper'

RSpec.describe "user_bets/edit", type: :view do
  before(:each) do
    @user_bet = assign(:user_bet, UserBet.create!(
      :bet_id => 1,
      :user_selection => "MyString",
      :user_id => 1,
      :amount_bet => 1
    ))
  end

  it "renders the edit user_bet form" do
    render

    assert_select "form[action=?][method=?]", user_bet_path(@user_bet), "post" do

      assert_select "input#user_bet_bet_id[name=?]", "user_bet[bet_id]"

      assert_select "input#user_bet_user_selection[name=?]", "user_bet[user_selection]"

      assert_select "input#user_bet_user_id[name=?]", "user_bet[user_id]"

      assert_select "input#user_bet_amount_bet[name=?]", "user_bet[amount_bet]"
    end
  end
end
