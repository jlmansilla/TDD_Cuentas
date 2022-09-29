require "rails_helper"

RSpec.describe Api::V1::ShowsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/shows").to route_to("api/v1/shows#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/shows/1").to route_to("api/v1/shows#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/shows").to route_to("api/v1/shows#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/shows/1").to route_to("api/v1/shows#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/shows/1").to route_to("api/v1/shows#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/shows/1").to route_to("api/v1/shows#destroy", id: "1")
    end
  end
end
