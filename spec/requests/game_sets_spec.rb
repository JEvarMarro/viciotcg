require 'rails_helper'

RSpec.describe "Game Sets API", type: :request do
  describe "GET /game_sets" do
    let!(:game_sets) { create_list(:game_set, 2) }
    let(:parsed_response) { JSON.parse(response.body) }

    before do
     get game_sets_path
    end

    it "returns success status" do
      expect(response).to have_http_status(:success)
    end

    it "returns a list of cards" do
      expect(parsed_response.size).to eq(2)
    end

    it "returns cards with the expected attributes" do
      parsed_response.each do |card|
        expect(card).to include("id")
        expect(card).to include("name")
        expect(card).to include("release_date")
      end
    end
  end

  describe "PATCH /game_sets/id" do
    let!(:game_set) { create(:game_set) }
    let(:game_set_params) {
      { game_set: { name: "A new name." } }
    }
    let(:game_set_id) { game_set.id }
    let(:parsed_response) { JSON.parse(response.body) }

    before do
      patch game_set_path(game_set_id), params: game_set_params
    end

    context "When the game_set exists" do
      it "returns success status" do
        expect(response).to have_http_status(:success)
      end

      it "returns the updated game_set" do
        expect(parsed_response["name"]).to eq("A new name.")
      end
    end

    context "when the game set doesn't exists" do
      let(:game_set_id) { game_set.id + 1 }

      it "returns not found status" do
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
