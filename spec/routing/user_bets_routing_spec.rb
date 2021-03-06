require "rails_helper"

RSpec.describe UserBetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_bets").to route_to("user_bets#index")
    end

    it "routes to #new" do
      expect(:get => "/user_bets/new").to route_to("user_bets#new")
    end

    it "routes to #show" do
      expect(:get => "/user_bets/1").to route_to("user_bets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_bets/1/edit").to route_to("user_bets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_bets").to route_to("user_bets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_bets/1").to route_to("user_bets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_bets/1").to route_to("user_bets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_bets/1").to route_to("user_bets#destroy", :id => "1")
    end

  end
end
