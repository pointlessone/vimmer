require "rails_helper"

RSpec.describe FollowingsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/followings").to route_to("followings#index")
    end

    it "routes to #new" do
      expect(get: "/followings/new").to route_to("followings#new")
    end

    it "routes to #show" do
      expect(get: "/followings/1").to route_to("followings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/followings/1/edit").to route_to("followings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/followings").to route_to("followings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/followings/1").to route_to("followings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/followings/1").to route_to("followings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/followings/1").to route_to("followings#destroy", id: "1")
    end
  end
end
