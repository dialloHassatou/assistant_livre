require 'spec_helper'

describe "Chapitres", :type => :request do
  describe "GET /chapitres" do
    it "works! (now write some real specs)" do
      get chapitres_path
      expect(response.status).to be(200)
    end
  end
end
