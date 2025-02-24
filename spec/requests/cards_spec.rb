require 'rails_helper'

RSpec.describe "Cards API", type: :request do
  describe "GET /cards" do
    let!(:cards) { create_list(:card, 2) }
    let(:parsed_response) { JSON.parse(response.body) }

    before do
     get "/cards"
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
        expect(card).to include("cost")
        expect(card).to include("power")
        expect(card).to include("tags")
        expect(card).to include("counter")
        expect(card).to include("trigger")
        expect(card).to include("description")
      end
    end
  end
end
