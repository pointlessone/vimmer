 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/followings", type: :request do
  
  # Following. As you add validations to Following, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Following.create! valid_attributes
      get followings_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      following = Following.create! valid_attributes
      get following_url(following)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_following_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      following = Following.create! valid_attributes
      get edit_following_url(following)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Following" do
        expect {
          post followings_url, params: { following: valid_attributes }
        }.to change(Following, :count).by(1)
      end

      it "redirects to the created following" do
        post followings_url, params: { following: valid_attributes }
        expect(response).to redirect_to(following_url(Following.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Following" do
        expect {
          post followings_url, params: { following: invalid_attributes }
        }.to change(Following, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post followings_url, params: { following: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested following" do
        following = Following.create! valid_attributes
        patch following_url(following), params: { following: new_attributes }
        following.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the following" do
        following = Following.create! valid_attributes
        patch following_url(following), params: { following: new_attributes }
        following.reload
        expect(response).to redirect_to(following_url(following))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        following = Following.create! valid_attributes
        patch following_url(following), params: { following: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested following" do
      following = Following.create! valid_attributes
      expect {
        delete following_url(following)
      }.to change(Following, :count).by(-1)
    end

    it "redirects to the followings list" do
      following = Following.create! valid_attributes
      delete following_url(following)
      expect(response).to redirect_to(followings_url)
    end
  end
end
