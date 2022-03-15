require "rails_helper"

RSpec.describe ToiletsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/toilets").to route_to("toilets#index")
    end

    it "routes to #new" do
      expect(get: "/toilets/new").to route_to("toilets#new")
    end

    it "routes to #show" do
      expect(get: "/toilets/1").to route_to("toilets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/toilets/1/edit").to route_to("toilets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/toilets").to route_to("toilets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/toilets/1").to route_to("toilets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/toilets/1").to route_to("toilets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/toilets/1").to route_to("toilets#destroy", id: "1")
    end
  end
end
