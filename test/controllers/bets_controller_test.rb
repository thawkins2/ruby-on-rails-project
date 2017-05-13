require 'test_helper'

class BetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bet = bets(:one)
  end

  test "should get index" do
    get bets_url
    assert_response :success
  end

  test "should get new" do
    get new_bet_url
    assert_response :success
  end

  test "should create bet" do
    assert_difference('Bet.count') do
      post bets_url, params: { bet: { match: @bet.match, odds_draw: @bet.odds_draw, odds_lose: @bet.odds_lose, odds_win: @bet.odds_win } }
    end

    assert_redirected_to bet_url(Bet.last)
  end

  test "should show bet" do
    get bet_url(@bet)
    assert_response :success
  end

  test "should get edit" do
    get edit_bet_url(@bet)
    assert_response :success
  end

  test "should update bet" do
    patch bet_url(@bet), params: { bet: { match: @bet.match, odds_draw: @bet.odds_draw, odds_lose: @bet.odds_lose, odds_win: @bet.odds_win } }
    assert_redirected_to bet_url(@bet)
  end

  test "should destroy bet" do
    assert_difference('Bet.count', -1) do
      delete bet_url(@bet)
    end

    assert_redirected_to bets_url
  end
end