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

RSpec.describe "/toilets", type: :request do
  
  # Toilet. As you add validations to Toilet, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Toilet.create! valid_attributes
      get toilets_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      toilet = Toilet.create! valid_attributes
      get toilet_url(toilet)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_toilet_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      toilet = Toilet.create! valid_attributes
      get edit_toilet_url(toilet)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Toilet" do
        expect {
          post toilets_url, params: { toilet: valid_attributes }
        }.to change(Toilet, :count).by(1)
      end

      it "redirects to the created toilet" do
        post toilets_url, params: { toilet: valid_attributes }
        expect(response).to redirect_to(toilet_url(Toilet.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Toilet" do
        expect {
          post toilets_url, params: { toilet: invalid_attributes }
        }.to change(Toilet, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post toilets_url, params: { toilet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested toilet" do
        toilet = Toilet.create! valid_attributes
        patch toilet_url(toilet), params: { toilet: new_attributes }
        toilet.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the toilet" do
        toilet = Toilet.create! valid_attributes
        patch toilet_url(toilet), params: { toilet: new_attributes }
        toilet.reload
        expect(response).to redirect_to(toilet_url(toilet))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        toilet = Toilet.create! valid_attributes
        patch toilet_url(toilet), params: { toilet: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested toilet" do
      toilet = Toilet.create! valid_attributes
      expect {
        delete toilet_url(toilet)
      }.to change(Toilet, :count).by(-1)
    end

    it "redirects to the toilets list" do
      toilet = Toilet.create! valid_attributes
      delete toilet_url(toilet)
      expect(response).to redirect_to(toilets_url)
    end
  end
end
